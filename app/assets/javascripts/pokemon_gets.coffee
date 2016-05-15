# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  currentCount = parseInt window.localStorage.getItem("collects_count"), 10
  currentCount = if isNaN(currentCount) then 0 else currentCount
  pokemonCount = Math.floor currentCount / 3
  pokemon = POKEMONS[pokemonCount - 1]

  return false if pokemon == undefined

  $("#pokemon-image").attr("src", pokemon["image_path"])
  $("#pokemon-name").html(pokemon["name"])

  for i in [0..pokemonCount-1]
    gotPokemon = $("#pokemon_get-container .pokemons")[i]
    $(gotPokemon).find("img").attr("src", POKEMONS[i]["image_path"])
    $(gotPokemon).find("div").attr("class", "circle-got")
