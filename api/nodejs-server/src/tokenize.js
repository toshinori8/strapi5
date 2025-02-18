const axios = require('axios');
const fs = require('fs');
const path = require('path');
const config = require('./config');

const TOKEN_FILE = path.join(__dirname, 'tokens.json');

async function refreshAccessToken(refreshToken) {
  const url = `${config.apiUrl}/oauth2/token`;
  const data = {
    grant_type: 'refresh_token',
    refresh_token: refreshToken,
    client_id: config.clientId,
    client_secret: config.clientSecret
  };

  try {
    const response = await axios.post(url, new URLSearchParams(data));
    return response.data.access_token;
  } catch (error) {
    console.error('Unable to refresh access token:', error.response.data);
    throw new Error('Unable to refresh access token');
  }
}

function saveTokens(accessToken, refreshToken) {
  const tokens = { access_token: accessToken, refresh_token: refreshToken };
  fs.writeFileSync(TOKEN_FILE, JSON.stringify(tokens));
}

function loadTokens() {
  if (!fs.existsSync(TOKEN_FILE)) {
    throw new Error('Token file not found');
  }
  const tokens = JSON.parse(fs.readFileSync(TOKEN_FILE));
  if (!tokens.access_token || !tokens.refresh_token) {
    throw new Error('Invalid token file');
  }
  return tokens;
}

module.exports = { refreshAccessToken, saveTokens, loadTokens };