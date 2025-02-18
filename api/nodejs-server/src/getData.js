const axios = require('axios');
const { refreshAccessToken, saveTokens } = require('./tokenize');
const config = require('./config');

async function getCombinedThermostatData(accessToken, refreshToken) {
  const homeId = config.homeId;

  let url1 = `${config.apiUrl}/api/homestatus?access_token=${encodeURIComponent(accessToken)}&home_id=${encodeURIComponent(homeId)}`;
  let response1 = await makeGetRequest(url1);

  if (response1.error && (response1.error.code === 3 || response1.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response1 = await makeGetRequest(url1);
  }

  let url2 = `${config.apiUrl}/api/homesdata?access_token=${encodeURIComponent(accessToken)}`;
  let response2 = await makeGetRequest(url2);

  if (response2.error && (response2.error.code === 3 || response2.error.code === 2)) {
    accessToken = await refreshAccessToken(refreshToken);
    saveTokens(accessToken, refreshToken);
    response2 = await makeGetRequest(url2);
  }

  const filteredResponse1 = filterHomestatusData(response1);
  const filteredResponse2 = filterHomesdata(response2);

  return {
    rooms: combineRoomData(filteredResponse1, filteredResponse2),
    meta: {
      homestatus: response1,
      homesdata: response2
    }
  };
}

function filterHomestatusData(data) {
  if (!data.body.home.rooms) {
    return [];
  }

  return data.body.home.rooms.map(room => ({
    id: room.id || null,
    reachable: room.reachable || null,
    anticipating: room.anticipating || null,
    heating_power_request: room.heating_power_request || null,
    open_window: room.open_window || null,
    therm_measured_temperature: room.therm_measured_temperature || null,
    therm_setpoint_temperature: room.therm_setpoint_temperature || null,
    therm_setpoint_mode: room.therm_setpoint_mode || null
  }));
}

function filterHomesdata(data) {
  if (!data.body.homes[0].rooms) {
    return [];
  }

  return data.body.homes[0].rooms.map(room => ({
    id: room.id || null,
    name: room.name || null,
    type: room.type || null
  }));
}

function combineRoomData(homestatusRooms, homesdataRooms) {
  return homestatusRooms.map(statusRoom => {
    const dataRoom = homesdataRooms.find(room => room.id === statusRoom.id);
    return { ...statusRoom, ...dataRoom };
  });
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

module.exports = { getCombinedThermostatData };