const express = require('express');
const app = express.Router();


const { Plat } = require('../../Class/Plat');
const { Client } = require('pg');

const client = new Client({
    user : 'postgres',
    host : 'localhost',
    password : 'motdepasse',
    database : 'AdvanceWebBDD',
});

client.connect();

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
})

app.use("/", (req,res) => {
    res.status(200).json({ articles : req.session.plats })
});

module.exports = app;