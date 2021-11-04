const express = require('express');
const app = express.Router();

app.get("/", (req,res) => {
    if (req.session.user !== undefined)
    {
        res.status(200).json(req.session.user);
    }
    else {
        res.status(300).json({connected : false, user : null});
    }
    
});

module.exports = app;