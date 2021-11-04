const express = require('express');
const session = require('express-session');
const cookieParser = require('cookie-parser');
const path = require('path');
const logger = require("morgan")

const apiRouter = require('./API/api.js');

const app = express();

app.use(logger('dev'))
app.use(express.json())
app.use(express.urlencoded({ extended: false }))
app.use(cookieParser())
app.use(session({ secret: 'blablablalol', saveUninitialized: false, resave: false }))

app.use(apiRouter)
app.use('/static',express.static(path.join(__dirname + '/static')))

module.exports = app;