const express = require('express');
const { User } = require('../../Class/User');
const app = express.Router();
const newUser = new User();


app.get("/", (req,res) => {
    if (req.session.user !== undefined)
    {
        req.session.user = newUser;
        res.status(200).json(req.session.user);
    }
    else {
        res.status(300).json({connected : false, user : null});
    }
    
});

app.post("/")

module.exports = app;