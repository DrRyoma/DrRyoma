# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  leftSide = Math.floor(Math.random() * 9) + 1
  question = Math.floor(Math.random() * 9) + 1
  answer = leftSide + question

  $("#content").find(".left-side").html(leftSide)
  $("#content").find(".answer").html(answer)

  current_count = parseInt window.localStorage.getItem("collects_count"), 10
  current_count = if isNaN(current_count) then 0 else current_count
  get_count = 3 - (current_count % 3)
  $("#get-count").html(get_count)

  $(".input-num").on "click", () ->
    q = parseInt($(this).attr("data-value"), 10)
    if question != q
      $("#navigation").find(".bubble").html("もういっかい！")
      $(this).addClass("disabled")
      return false
    else
      collects_count = parseInt window.localStorage.getItem("collects_count"), 10
      current_count = if isNaN(collects_count) then 1 else ++collects_count
      window.localStorage.setItem("collects_count", current_count)
      isPokemonGet = current_count % 3 == 0
