const express = require('express');

const app = express();

app.use((req,res,next) => {
    next();
})

app.get("/",(req,res) => {
    res.status(200).json({ message: "Bienvenue sur l'API d'un restaurant japonais" });
})

module.exports = app;