$ ->

  $('#scroll-to-first-case').on 'click', ->
    $('body').animate({scrollTop: $('#first-case').offset().top}, 'slow')
    false

  $('#scroll-to-form-button').on 'click', ->
    $('body').animate({scrollTop: $('#order-form').offset().top}, 'slow')
    false

  $('.add-message').on 'click', ->
    $(@).hide()
    $('input.long').show()


  $('.principle').on 'click', ->

    $('.principle-container').hide()
    $(".principle-container[anchor=#{$(@).attr('rel')}]").show()

    new_height = $('.principle-card').height() + 140 + 120

    $('.principles').animate({height: new_height}, 500, =>
          $('.principle-card').show()
          $('.principle-card').animate({opacity: 1}, 500)
          $('body').animate({scrollTop: $('.principle-card').offset().top - 60}, 'slow')
    )


  $('.close-icon').on 'click', ->

    $('.principle-card').animate({opacity: 0}, 500, =>
      $('.principle-card').hide()
      $('.principles').animate({height: 480}, 500)
    )

    $('body').animate({scrollTop: $('.principles').offset().top}, 'slow')








