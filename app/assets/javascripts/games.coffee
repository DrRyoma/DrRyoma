# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  leftSide = Math.floor(Math.random() * 9) + 1
  question = Math.floor(Math.random() * 9) + 1
  answer = leftSide + question

  $("#content").find(".left-side").html(leftSide)
  $("#content").find(".answer").html(answer)

  $(".input-num").on "click", () ->
    q = parseInt($(this).attr("data-value"), 10)
    if question != q
      $("#navigation").find(".bubble").html("もういっかい！")
      $(this).addClass("disabled")
      return false
