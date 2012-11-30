$ ->
  $(".click-me").on "click", ->
    $("<p>Clicked!</p>").insertAfter $(@)

  $("#inputEmail").on "keyup", ->
    if parts = $(@).val().match(/(.*)@(.*)/)
      $(@).parent().find(".help-inline").text "Email is valid."



