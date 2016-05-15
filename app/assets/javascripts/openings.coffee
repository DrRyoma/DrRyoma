# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#opening-container").on "click", ()->
    window.localStorage.setItem("collects_count", 0)
    window.localStorage.setItem("is_pokemon_get", false)
    console.log "clear localstrage"
