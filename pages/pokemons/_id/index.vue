<template>
  <section class="card-view">
    <img :src="spriteUrl" alt="Pokemon Logo"><br>
    <h1>Nombre: {{ name }}</h1>
    <p>Peso: {{ weight }}</p>
  </section>
</template>

<script>

    import axios from 'axios'

    export default {

        data(){
            return{
                spriteUrl:'',
                name:'',
                weight:''
            }
        },
        methods:{
            goSearchPokemon(){

                axios.get('https://pokeapi.co/api/v2/pokemon/150/')
                    .then(result => {
                        console.log(result)
                        this.spriteUrl = result.data.sprites.front_default
                        this.weight = result.data.weight
                        this.name = result.data.name
                    })
                    .catch(e => {
                        console.log(e)
                    })

            }
        },
        created(){
            this.goSearchPokemon()
        }

    }
</script>

<style scoped>

.card-view{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translateX(-50%) translateY(-50%);
        height: 200px;
        width: 500px;
        text-align: center;
        padding: 10px;
        border: 1px solid #ccc;
        box-shadow: 0px 3px 6px #ccc;
    }

    img{
        width: 100px;
        height: 100px;
    }

</style>

