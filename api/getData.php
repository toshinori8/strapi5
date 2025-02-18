<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'Config.php';
include 'tokenize.php';

define('CLIENT_ID', $client_id);
define('CLIENT_SECRET', $client_secret);
define('HOME_ID', $home_id);
define('API_URL', $API_URL);

// Pobierz tokeny z pliku
$tokens = loadTokens();
$accessToken = $tokens['access_token'];
$refreshToken = $tokens['refresh_token'];

$data = getCombinedThermostatData($accessToken, $refreshToken);

header('Content-Type: application/json');
echo json_encode($data, JSON_PRETTY_PRINT);

function getCombinedThermostatData($accessToken, $refreshToken) {
    $homeId = HOME_ID;

    // Pierwsza próba pobrania danych
    $url1 = API_URL . '/api/homestatus?access_token=' . urlencode($accessToken) . '&home_id=' . urlencode($homeId);
    $response1 = makeGetRequest($url1);

    // Sprawdź, czy token dostępu wygasł lub jest nieprawidłowy
    if (isset($response1['error']) && ($response1['error']['code'] == 3 || $response1['error']['code'] == 2)) {
        // Odśwież token dostępu
        $accessToken = refreshAccessToken($refreshToken);
        saveTokens($accessToken, $refreshToken); // Zapisz nowy token dostępu

        // Druga próba pobrania danych
        $response1 = makeGetRequest($url1);
    }

    // Ostateczna próba pobrania danych
    $response1 = makeGetRequest($url1);

    // Pobierz dane homesdata
    $url2 = API_URL . '/api/homesdata?access_token=' . urlencode($accessToken);
    $response2 = makeGetRequest($url2);

    // Sprawdź, czy odpowiedzi zawierają błędy
    if (isset($response1['error']) || isset($response2['error'])) {
        return [
            'rooms' => [],
            'meta' => [
                'homestatus' => $response1,
                'homesdata' => $response2
            ]
        ];
    }

    $filteredResponse1 = filterHomestatusData($response1);
    $filteredResponse2 = filterHomesdata($response2);

    return [
        'rooms' => combineRoomData($filteredResponse1, $filteredResponse2),
        'meta' => [
            'homestatus' => $response1,
            'homesdata' => $response2
        ]
    ];
}

/**
 * Wysyła żądanie GET do Netatmo
 */
function makeGetRequest($url) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $response = curl_exec($ch);
    curl_close($ch);
    return json_decode($response, true);
}

/**
 * Filtruje dane z homestatus
 */
function filterHomestatusData($data) {
    if (!isset($data['body']['home']['rooms'])) {
        return [];
    }

    $rooms = [];
    foreach ($data['body']['home']['rooms'] as $room) {
        $rooms[] = [
            'id' => $room['id'] ?? null,
            'reachable' => $room['reachable'] ?? null,
            'anticipating' => $room['anticipating'] ?? null,
            'heating_power_request' => $room['heating_power_request'] ?? null,
            'open_window' => $room['open_window'] ?? null,
            'therm_measured_temperature' => $room['therm_measured_temperature'] ?? null,
            'therm_setpoint_temperature' => $room['therm_setpoint_temperature'] ?? null,
            'therm_setpoint_mode' => $room['therm_setpoint_mode'] ?? null
        ];
    }
    return $rooms;
}

/**
 * Filtruje dane z homesdata
 */
function filterHomesdata($data) {
    if (!isset($data['body']['homes'][0]['rooms'])) {
        return [];
    }

    $rooms = [];
    foreach ($data['body']['homes'][0]['rooms'] as $room) {
        $rooms[] = [
            'id' => $room['id'] ?? null,
            'name' => $room['name'] ?? null,
            'type' => $room['type'] ?? null
        ];
    }
    return $rooms;
}

/**
 * Łączy dane z homestatus i homesdata
 */
function combineRoomData($homestatusRooms, $homesdataRooms) {
    $combinedRooms = [];

    foreach ($homestatusRooms as $statusRoom) {
        foreach ($homesdataRooms as $dataRoom) {
            if ($statusRoom['id'] === $dataRoom['id']) {
                $combinedRooms[] = array_merge($statusRoom, $dataRoom);
                break;
            }
        }
    }

    return $combinedRooms;
}
