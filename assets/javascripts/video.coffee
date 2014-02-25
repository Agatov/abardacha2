$ ->


  $('#video-button').bind 'click', ->
    window.show_video("#about-us-video-html")
    reachGoal('video-viewed')


window.show_video = (template_id) ->

  $('.video-modal-bg').bind 'click', ->
    $('.video-modal').html('')
    $('.video-modal').hide()
    $('.video-modal-bg').hide()


  $('.video-modal-bg').show()
  $('.video-modal').html($(template_id).html())
  $('.video-modal').show()