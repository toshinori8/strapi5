const express = require('express');
const { loadTokens } = require('./tokenize');
const { roomExists, setRoomTemperature, setHomeMode, checkTemperatureSet } = require('./setData');
const { getCombinedThermostatData } = require('./getData');
const config = require('./config');

const app = express();
const PORT = 3000;

app.use(express.json());

app.get('/setdata', async (req, res) => {
  try {
    const tokens = loadTokens();
    let { accessToken, refreshToken } = tokens;

    const { mode, temperature, room_id } = req.query;

    if (!mode && !temperature) {
      return res.status(400).json({ error: 'Missing required parameters' });
    }

    let response;
    if (mode === 'away') {
      response = await setHomeMode(accessToken, refreshToken, 'away');
    } else {
      if (!room_id) {
        return res.status(400).json({ error: 'Missing room_id parameter' });
      }

      const roomExistsResult = await roomExists(accessToken, refreshToken, room_id);
      if (!roomExistsResult) {
        return res.status(400).json({ error: 'Room does not exist' });
      }

      if (!temperature) {
        return res.status(400).json({ error: 'Missing temperature parameter' });
      }

      response = await setRoomTemperature(accessToken, refreshToken, room_id, temperature);

      await new Promise(resolve => setTimeout(resolve, 5000)); // Poczekaj 5 sekund
      const temperatureSet = await checkTemperatureSet(accessToken, refreshToken, room_id, temperature);
      return res.json({ response, temperature_set: temperatureSet });
    }

    res.json({ response });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.get('/getdata', async (req, res) => {
  try {
    const tokens = loadTokens();
    const { accessToken, refreshToken } = tokens;

    const data = await getCombinedThermostatData(accessToken, refreshToken);
    res.json(data);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});