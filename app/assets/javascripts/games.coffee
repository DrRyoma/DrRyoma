# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  leftSide = Math.floor(Math.random() * 9) + 1
  question = Math.floor(Math.random() * 9) + 1
  answer = leftSide + question

  $("#content").find(".left-side").html(leftSide)
  $("#content").find(".answer").html(answer)

  currentCount = parseInt window.localStorage.getItem("collects_count"), 10
  currentCount = if isNaN(currentCount) then 0 else currentCount
  getCount = 3 - (currentCount % 3)
  $("#get-count").html(getCount)

  $(".input-num").on "click", () ->
    q = parseInt($(this).attr("data-value"), 10)
    if question != q
      b = $("#navigation").find(".bubble")
      b.html("もういっかい！")
      b.css('color', '#E91E63')
      $(this).addClass("disabled")
      return false
    else
      return false if $(this).hasClass("disabled")
      collectsCount = parseInt window.localStorage.getItem("collects_count"), 10
      currentCount = if isNaN(collectsCount) then 1 else ++collectsCount
      isPokemonGet = currentCount % 3 == 0
      window.localStorage.setItem("collects_count", currentCount)
      window.localStorage.setItem("is_pokemon_get", isPokemonGet)
      $(this).addClass("disabled")
