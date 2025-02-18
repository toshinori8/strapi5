<?php

define('TOKEN_FILE', 'tokens.json'); // Plik do przechowywania tokenów

/**
 * Odświeża token dostępu za pomocą tokena odświeżania
 */
function refreshAccessToken($refreshToken) {
    $url = $API_URL . '/oauth2/token';
    $data = [
        'grant_type' => 'refresh_token',
        'refresh_token' => $refreshToken,
        'client_id' => CLIENT_ID,
        'client_secret' => CLIENT_SECRET
    ];

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_POST, 1);
    curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    $response = curl_exec($ch);
    curl_close($ch);

    // Debugging response
    error_log('Response from token refresh: ' . $response);

    $responseData = json_decode($response, true);
    if (isset($responseData['access_token'])) {
        return $responseData['access_token'];
    } else {
        error_log('Unable to refresh access token: ' . json_encode($responseData) . ' Data sent: ' . json_encode($data));
        throw new Exception('Unable to refresh access token: ' . json_encode($responseData));
    }
}




/**
 * Zapisuje tokeny do pliku
 */
function saveTokens($accessToken, $refreshToken) {
    $tokens = [
        'access_token' => $accessToken,
        'refresh_token' => $refreshToken
    ];
    file_put_contents(TOKEN_FILE, json_encode($tokens));
}

/**
 * Ładuje tokeny z pliku
 */
function loadTokens() {
    if (!file_exists(TOKEN_FILE)) {
        throw new Exception('Token file not found');
    }
    $tokens = json_decode(file_get_contents(TOKEN_FILE), true);
    if (!isset($tokens['access_token']) || !isset($tokens['refresh_token'])) {
        throw new Exception('Invalid token file');
    }
    return $tokens;
}