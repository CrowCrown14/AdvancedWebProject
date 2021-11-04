const express = require('express');
const app = express.Router();

const { Client } = require('pg');
// const { Plat } = require('../Class/Plat');

const client = new Client({
    user : 'postgres',
    host : 'localhost',
    password : 'motdepasse',
    database : 'AdvanceWebBDD',
});

class Plat {
    
    constructor(id, name, category, description, image, price) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.description = description;
        this.image = image;
        this.price = price;
    }
}

app.use( (req, res, next) => {
    next();
})

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

        // new Plat(1,"test","category","description","image","prix");
        
        // req.session.plats = requete.rows;
    }
    next();
})

app.get("/",(req,res) => {
    res.status(200).json({ message: "Bienvenue sur l'API d'un restaurant japonais", lien: {articles : "/articles"} });
});

app.use("/articles" ,(req,res) => {
    res.status(200).json({ articles : req.session.plats })
});

module.exports = app;