$(document).on 'turbolinks:load', ->
  Materialize.updateTextFields()
  $(".button-collapse").sideNav();
  Materialize.showStaggeredList('#destinations')
  $(document).ajaxStart () ->
    $('.preloader').show()
  $(document).ajaxStop () ->
    $('.preloader').hide()
