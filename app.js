import express from 'express';

const app = express()
app.listen(80, (req, res) => {
    console.log('Listening at Port 80');
});