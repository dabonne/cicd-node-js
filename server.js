const express = require('express');
const app = express();
const cors = require('cors');

app.use(cors({
    origin: 'http://localhost:3000'
}));

app.get('/names', (req, res) => {
    res.send('Dabonne');
})

app.listen(8000, () => console.log('Running on port 8000'));