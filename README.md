# AdvancedWebProject

To use the project correctly, you need to host Server and Client

First, you need to clone project  
```
git clone https://github.com/CrowCrown14/AdvancedWebProject.git
```

## Project

The project is composed of a FrontEnd and an BackEnd.    
 - Server part (BackEnd) is coded with **Express.js**.  
 - Client part (FrontEnd) is coded with **Vue.js**.  

## Run project  

To run project, you need to follow instructions below :  
Install PostgreSQL  
On PostgreSQL :  
 - Create a database named "AdvanceWebBDD"  
 - Insert script plat.sql on your databases.  

Default account for databases  
 - host : postgres  
 - password : motdepasse  

If you have not the same id or password, open [api.js](.\Server\API\api.js) and change host and password in **const client**  
Open you shell and write to launch server :  
```
npm install  
npm run serve  
```