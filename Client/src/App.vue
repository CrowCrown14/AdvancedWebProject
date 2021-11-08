<template>
  <div id="nav">
    <div  v-if="isConnected">
      <p>Bienvenue {{ currentUser }} <button class="logoutButton" v-on:click="logout">Logout</button></p> 
    </div>
    <router-link to="/">Home</router-link> |
    <router-link to="/menu">Menu</router-link> |
    <router-link v-if="!isConnected" to="/menu">Login</router-link>
    
  </div>
  <router-view/>
</template>

<script>
  export default {

    name : "App",

    methods: {
      logout : function() {
        this.isConnected = false;
      }
    },

    data() { 
        return {
            plats : [],
            isConnected : true,
            currentUser : "Nom",
        }
    },
  }
</script>

<style>

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}

* {
  background-color: #fffeefe8 ;
}

.logoutButton {
  background-color: #555555 ;
  color: #fffeefe8;
}

</style>
