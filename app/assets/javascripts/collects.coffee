# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  isPokemonGet = window.localStorage.getItem("is_pokemon_get") == "true"
  if isPokemonGet
    $("#collect-container .description").hide()
    $("#collect-container .next-buttons").hide()
  else
    $("#collect-container .get-pokemon-button").hide()
