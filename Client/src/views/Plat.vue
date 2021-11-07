<template>
    <div>
        <div class="miniBlock">
                <div class="image">
                    <img :src="getSrc(plat.image)" v-bind:alt="pic">
                </div>
                <div class="text">
                    <p> id : {{ plat.id }}</p>
                    <p> {{ plat.category }} : {{ plat.description }} </p>
                    <p> Prix : {{plat.price / 100}}€ </p>
                </div>
                
            </div>
    </div>
</template>

<script>

export default {
    name: 'Plat',

    props: {
        plat : Object,
    },

    data() { 
        return {
            menu : [],
            menuLength : 0,
        }
    },
    methods: {
        getSrc(name) {
            var images = "http://localhost:3000" + name
            return images    
        }
    },
}
</script>

<style scoped>
    .miniBlock {    
        display: flex;
        align-items: center;
        margin: 3vh;
        border-top: 1px solid black;
    }
    img {
        border: 1px solid black;
        padding: 5px;
        width: 300px;
    }
    .text {
        text-align: left;
        margin-left: 5vh;
    }

</style>