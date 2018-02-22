<template>
  <section class="card-view">
    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/250px-International_Pok%C3%A9mon_logo.svg.png" alt="Pokemon Logo">
    <h1 class="element">Busca a tu Pokemon favorito!</h1>
    <input class="element" 
      type="text" 
      placeholder="Escribe el número"
      v-model="pokemonId">
      <button @click="goToPokemonView">Ir</button>
  </section>
</template>

<script>


export default {
  data(){
    return {
      pokemonId:''
    }
  },
  methods:{
    goToPokemonView(){
      this.$router.push('/pokemons/'+this.pokemonId)
    }
  }
}
</script>

<style scoped>
.card-view{
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translateX(-50%) translateY(-50%);
        height: 220px;
        width: 450px;
        text-align: center;
        padding: 10px;
        border: 1px solid #ccc;
        box-shadow: 0px 3px 6px #ccc;
    }

    .element{
      position: relative;
      margin-top: 20px;

    }
</style>
