$ ->
  $('.select.index').ready ->
    $('#player_select_button').on click: ->
      name = $('#player_name').val()
      c_type = $('#chara_type').val()
      location.href = '/select/show?name=' + name + '&c_type=' + c_type
