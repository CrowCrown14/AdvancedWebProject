const express = require('express');
const app = express.Router();

const articlesAPI = require('./articles/articles');
const userAPI = require('./user/user');

const { Plat } = require('../Class/Plat');
const { Client } = require('pg');

const client = new Client({
    user : 'postgres',
    host : 'localhost',
    password : 'motdepasse',
    database : 'AdvanceWebBDD',
});

client.connect();

app.use((req, res, next) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content, Accept, Content-Type, Authorization');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
    next();
  });

app.use(async (req, res, next) => {
  if (typeof req.session.plats === 'undefined') {
      const requete = await client.query('SELECT * FROM plats');
      
      req.session.plats = []

      for (var i = 0 ; i < requete.rowCount; i++)
      {
          req.session.plats.push(new Plat(requete.rows[i].id,requete.rows[i].name,requete.rows[i].category,requete.rows[i].description,requete.rows[i].image,requete.rows[i].price));
          console.log(req.session.plats);
      }
  }
  next();
});

app.get("/",(req,res) => {
    res.status(200).json({ message: "Bienvenue sur l'API d'un restaurant japonais", lien: {articles : "/articles"} });
});

app.use("/articles" , articlesAPI);
app.use("/user", userAPI);

module.exports = app;

