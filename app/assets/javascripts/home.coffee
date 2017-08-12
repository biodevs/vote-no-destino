$(document).on 'turbolinks:load', ->
  Materialize.updateTextFields()
  Materialize.showStaggeredList('#destinations')
  $('a.btn-vote').on "click", (event) ->
  $(document).ajaxStart () ->
    $('.preloader').show()
  $(document).ajaxStop () ->
    $('.preloader').hide()
