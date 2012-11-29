$ ->
  $(".click-me").on "click", ->
    $("<p>Clicked!</p>").insertAfter $(@)

