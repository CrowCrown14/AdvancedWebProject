<template>
<div class="block">
    <div>
        <div v-for="element in this.menu.articles" :key="element.id">
            <Plat
                :plat="element"
            />
        </div>
    </div>

</div>
</template>

<script>

import Plat from "./Plat.vue";

export default {
    
    name: 'Menu',
    components: {
        Plat,
    },

    mounted() {
        fetch('http://localhost:3000/articles')
            .then(res => res.json())
            .then((out) => {
                this.menu = out;
            }).catch(err => console.error(err));
        
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
    .block {
        display: flex;
        flex-wrap: wrap;
        flex-direction: column;;
        justify-content: center;
        
    }
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