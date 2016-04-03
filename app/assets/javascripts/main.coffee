$(document).on 'ready page:load', ->
  $('.preloader').addClass 'animated slideOutUp'
  $('.logo_gif').width($('.logo').width()*0.2)
  $('.logo_gif').height($('.logo').width()*0.2)
  $('.logo_gif').css('margin-top', $('.logo').width()*(-0.1))
  $('.logo_gif').css('margin-left', $('.logo').width()*(-0.1))
  $(window).resize ->
    $('.logo_gif').width($('.logo').width()*0.2)
    $('.logo_gif').height($('.logo').width()*0.2)
    $('.logo_gif').css('margin-top', $('.logo').width()*(-0.1))
    $('.logo_gif').css('margin-left', $('.logo').width()*(-0.1))
  return
