// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
  $('.upgrade-button').on('click', function() {
    var id = $(this).attr('id')
    var position = $(this).position()
    $('.upgrade-panel').hide()
    $('#upgrade-panel-' + id).css({
      display: 'flex',
      left: position.left + $(this)[0].getBoundingClientRect().width,
      position: 'fixed',
      top: position.top + $(this)[0].getBoundingClientRect().height,
    })
  })
})
