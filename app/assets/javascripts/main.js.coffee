$ ->
  $('.welcome.index').ready ->
    console.log 'top page'

  $('.select.index').ready ->
    console.log 'select#index page'
    $('#player_select_button').on click: ->
      name = $('#player_name').val()
      c_type = $('#chara_type').attr('data-chara-type')
      location.href = '/select/show?name=' + name + '&c_type=' + c_type

  $('.select.show').ready ->
    console.log 'select#show page'

  $('.social.callback').ready ->
    console.log 'social#callback page'
