const express = require('express');
const app = express.Router();
const articlesAPI = require('./articles/articles');

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
    next();
  });




app.get("/",(req,res) => {
    res.status(200).json({ message: "Bienvenue sur l'API d'un restaurant japonais", lien: {articles : "/articles"} });
});

app.use("/articles" , articlesAPI);

module.exports = app;

