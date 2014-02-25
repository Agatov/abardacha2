$ ->

  $('.case-tag').on 'click', ->

    tags_container = $(@).parent()
    tags_container.children('.case-tag').removeClass('active')
    $(@).addClass('active')

    c = $(@).parents('.case')
    c.find('.case-desc p').hide()
    c.find(".case-desc p[anchor=#{$(@).attr('rel')}]").show()
