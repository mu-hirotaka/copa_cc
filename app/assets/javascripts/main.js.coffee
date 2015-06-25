$ ->
  $('.select.index').ready ->
    $p_name = $('#player_name')
    $p_button = $('#player_select_button')

    $('#player_select_button').on click: ->
      name = $p_name.val()
      c_type = $('#chara_type').val()
      location.href = '/select/show?name=' + name + '&c_type=' + c_type

     switchButtonStyle = () ->
      if $p_name.val().length > 0
        $p_button.css({opacity:"1.0"})
        $p_button.removeAttr("disabled")
      else
        $p_button.css({opacity:"0.6"})
        $p_button.attr("disabled", "disabled")

    $p_name.keyup (e) ->
      switchButtonStyle()
