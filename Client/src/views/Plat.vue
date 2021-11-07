<template>
    <div>
        <div class="miniBlock">
                <div class="image">
                    <img :src="getSrc(plat.image)" v-bind:alt="pic">
                </div>
                <div class="text">
                    <p> <strong>id :</strong> {{ plat.id }}</p>
                    <p> <strong>{{ plat.category }}</strong> : {{ plat.description }} </p>
                    <p> Prix : {{plat.price / 100}}€ </p>
                </div>
                <div>
                    <div class="check">
                        <Button v-on:click="removeQte()">-</Button>
                        <p>Quantity : {{ this.qte }}</p>
                        <Button v-on:click="addQte()">+</Button>
                    </div>
                    <br/>
                    <div>
                        <p>Total price : {{ plat.price /100 * this.qte }}€</p>
                        <button v-on:click="addPanier()">Add to shopping cart</button>
                    </div>
                    
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
            qte : 0,
        }
    },
    methods: {
        getSrc(name) {
            var images = "http://localhost:3000" + name
            return images    
        },
        addQte() {
            this.qte++;
        },
        removeQte() {
            if (this.qte > 0)
            {
                this.qte--;
            }
        },
        addPanier() {
            alert("Added to shopping cart");
        }
    },
}
</script>

<style scoped>
    .miniBlock {    
        padding-top: 20px;
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
    .check {
        display: flex;
        padding-left:90vh ;
        width: 300px;
        height: 50px;
        justify-content: right;
    }

</style>