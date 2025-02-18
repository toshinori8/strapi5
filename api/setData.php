<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'Config.php';
include 'tokenize.php';

define('API_URL', 'https://api.netatmo.com');
define('CLIENT_ID', $client_id);
define('CLIENT_SECRET', $client_secret);
define('HOME_ID', $home_id);

// Pobierz tokeny z pliku
$tokens = loadTokens();
$accessToken = $tokens['access_token'];
$refreshToken = $tokens['refresh_token'];

// Sprawdź, czy przekazano wymagane parametry
if (!isset($_GET['mode']) && !isset($_GET['temperature'])) {
    echo json_encode(['error' => 'Missing required parameters']);
    exit;
}

$roomId = isset($_GET['room_id']) ? $_GET['room_id'] : null;
$mode = isset($_GET['mode']) ? $_GET['mode'] : 'manual';
$temperature = isset($_GET['temperature']) ? $_GET['temperature'] : null;

// Ustaw tryb "away" dla całego domu lub temperaturę zadaną dla pokoju
if ($mode === 'away') {
    $response = setHomeMode($accessToken, $refreshToken, 'away');
} else {
    if ($roomId === null) {
        echo json_encode(['error' => 'Missing room_id parameter']);
        exit;
    }

    // Sprawdź, czy pokój istnieje
    if (!roomExists($accessToken, $refreshToken, $roomId)) {
        echo json_encode(['error' => 'Room does not exist']);
        exit;
    }

    if ($temperature === null) {
        echo json_encode(['error' => 'Missing temperature parameter']);
        exit;
    }
    $response = setRoomTemperature($accessToken, $refreshToken, $roomId, $temperature);

    // Sprawdź, czy temperatura została ustawiona poprawnie po kilku sekundach
    sleep(5); // Poczekaj 5 sekund
    $temperatureSet = checkTemperatureSet($accessToken, $refreshToken, $roomId, $temperature);
}

header('Content-Type: application/json');
echo json_encode(['response' => $response, 'temperature_set' => $temperatureSet ?? null], JSON_PRETTY_PRINT);

function roomExists($accessToken, $refreshToken, $roomId) {
    $url = API_URL . '/api/homesdata?access_token=' . urlencode($accessToken);
    $response = makeGetRequest($url);

    // Sprawdź, czy token dostępu wygasł lub jest nieprawidłowy
    if (isset($response['error']) && ($response['error']['code'] == 3 || $response['error']['code'] == 2)) {
        $accessToken = refreshAccessToken($refreshToken);
        saveTokens($accessToken, $refreshToken); // Zapisz nowy token dostępu
        $response = makeGetRequest($url);
    }

    if (isset($response['body']['homes'][0]['rooms'])) {
        foreach ($response['body']['homes'][0]['rooms'] as $room) {
            if ($room['id'] == $roomId) {
                return true;
            }
        }
    }

    return false;
}

function setRoomTemperature($accessToken, $refreshToken, $roomId, $temperature) {
    $url = API_URL . '/api/setroomthermpoint';
    $data = [
        'home_id' => HOME_ID,
        'room_id' => $roomId,
        'mode' => 'manual',
        'temp' => $temperature
    ];

    $response = makePostRequest($url, $accessToken, $data);

    // Sprawdź, czy token dostępu wygasł lub jest nieprawidłowy
    if (isset($response['error']) && ($response['error']['code'] == 3 || $response['error']['code'] == 2)) {
        $accessToken = refreshAccessToken($refreshToken);
        saveTokens($accessToken, $refreshToken); // Zapisz nowy token dostępu

        // Ponów próbę ustawienia temperatury
        $response = makePostRequest($url, $accessToken, $data);
    }

    return $response;
}

function setHomeMode($accessToken, $refreshToken, $mode) {
    $url = API_URL . '/api/setthermmode';
    $data = [
        'home_id' => HOME_ID,
        'mode' => $mode
    ];

    $response = makePostRequest($url, $accessToken, $data);

    // Sprawdź, czy token dostępu wygasł lub jest nieprawidłowy
    if (isset($response['error']) && ($response['error']['code'] == 3 || $response['error']['code'] == 2)) {
        $accessToken = refreshAccessToken($refreshToken);
        saveTokens($accessToken, $refreshToken); // Zapisz nowy token dostępu

        // Ponów próbę ustawienia trybu
        $response = makePostRequest($url, $accessToken, $data);
    }

    return $response;
}

function checkTemperatureSet($accessToken, $refreshToken, $roomId, $temperature) {
    $url = API_URL . '/api/homestatus?access_token=' . urlencode($accessToken) . '&home_id=' . urlencode(HOME_ID);
    $response = makeGetRequest($url);

    // Sprawdź, czy token dostępu wygasł lub jest nieprawidłowy
    if (isset($response['error']) && ($response['error']['code'] == 3 || $response['error']['code'] == 2)) {
        $accessToken = refreshAccessToken($refreshToken);
        saveTokens($accessToken, $refreshToken); // Zapisz nowy token dostępu
        $response = makeGetRequest($url);
    }

    if (isset($response['body']['home']['rooms'])) {
        foreach ($response['body']['home']['rooms'] as $room) {
            if ($room['id'] == $roomId && $room['therm_setpoint_temperature'] == $temperature) {
                return true;
            }
        }
    }

    return false;
}

/**
 * Wysyła żądanie POST do Netatmo
 */
function makePostRequest($url, $accessToken, $data) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Authorization: Bearer ' . $accessToken
    ]);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $response = curl_exec($ch);
    curl_close($ch);
    return json_decode($response, true);
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

