// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

var getUrlParameter = function getUrlParameter(sParam) {
  var sPageURL = decodeURIComponent(window.location.search.substring(1)),
      sURLVariables = sPageURL.split('&'),
      sParameterName,
      i;

  for (i = 0; i < sURLVariables.length; i++) {
    sParameterName = sURLVariables[i].split('=');

    if (sParameterName[0] === sParam) {
        return sParameterName[1] === undefined ? true : sParameterName[1];
    }
  }
};

$(document).ready(function() {
  if(getUrlParameter('upgrade') == 'success') {
    swal({
      title: "Your rocket has been successfully upgraded !",
      width: 600,
      padding: '3em',
      backdrop: `
        rgba(0,0,123,0.4)
        url("https://media.giphy.com/media/xUOwGcpl1R1yeqo9YQ/giphy.gif")
        center top
        no-repeat
      `
    })
  }

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

  $('.panel-dismiss').on('click', function() {
    $(this).parent().parent().hide()
  })
})
