$(document).on 'ready page:load', ->
  $('.logo_gif').width($('.logo').width()*0.2)
  $('.logo_gif').height($('.logo').width()*0.2)
  $('.logo_gif').css('margin-top', (-25))
  $('.logo_gif').css('margin-left', (-30))
  $(window).resize ->
    $('.logo_gif').width($('.logo').width()*0.2)
    $('.logo_gif').height($('.logo').width()*0.2)
    $('.logo_gif').css('margin-top', (-25))
    $('.logo_gif').css('margin-left', (-30))

  return
