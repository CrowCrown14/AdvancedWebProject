const express = require('express');
const app = express.Router();

const { Plat } = require('../../Class/Plat');

app.use("/", (req,res) => {
    res.status(200).json({ articles : req.session.plats })
});

module.exports = app;