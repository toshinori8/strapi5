const axios = require('axios');
const { refreshAccessToken, saveTokens } = require('./tokenize');
const config = require('./config');

async function roomExists(accessToken, refreshToken, roomId) {
  let url = `${config.apiUrl}/api/homesdata?access_token=${encodeURIComponent(accessToken)}`;
  let response = await makeGetRequest(url);

  if (response.error && (response.error.code === 3 || response.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response = await makeGetRequest(url);
  }

  if (response.body.homes[0].rooms) {
    return response.body.homes[0].rooms.some(room => room.id === roomId);
  }

  return false;
}

async function setRoomTemperature(accessToken, refreshToken, roomId, temperature) {
  const url = `${config.apiUrl}/api/setroomthermpoint`;
  const data = {
    home_id: config.homeId,
    room_id: roomId,
    mode: 'manual',
    temp: temperature
  };

  let response = await makePostRequest(url, accessToken, data);

  if (response.error && (response.error.code === 3 || response.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response = await makePostRequest(url, accessToken, data);
  }

  return response;
}

async function setHomeMode(accessToken, refreshToken, mode) {
  const url = `${config.apiUrl}/api/setthermmode`;
  const data = {
    home_id: config.homeId,
    mode: mode
  };

  let response = await makePostRequest(url, accessToken, data);

  if (response.error && (response.error.code === 3 || response.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response = await makePostRequest(url, accessToken, data);
  }

  return response;
}

async function checkTemperatureSet(accessToken, refreshToken, roomId, temperature) {
  let url = `${config.apiUrl}/api/homestatus?access_token=${encodeURIComponent(accessToken)}&home_id=${encodeURIComponent(config.homeId)}`;
  let response = await makeGetRequest(url);

  if (response.error && (response.error.code === 3 || response.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response = await makeGetRequest(url);
  }

  if (response.body.home.rooms) {
    return response.body.home.rooms.some(room => room.id === roomId && room.therm_setpoint_temperature === temperature);
  }

  return false;
}

async function makePostRequest(url, accessToken, data) {
  try {
    const response = await axios.post(url, new URLSearchParams(data), {
      headers: { Authorization: `Bearer ${accessToken}` }
    });
    return response.data;
  } catch (error) {
    console.error('Error making POST request:', error.response.data);
    throw new Error('Error making POST request');
  }
}

async function makeGetRequest(url) {
  try {
    const response = await axios.get(url);
    return response.data;
  } catch (error) {
    console.error('Error making GET request:', error.response.data);
    throw new Error('Error making GET request');
  }
}

module.exports = { roomExists, setRoomTemperature, setHomeMode, checkTemperatureSet, makePostRequest, makeGetRequest };