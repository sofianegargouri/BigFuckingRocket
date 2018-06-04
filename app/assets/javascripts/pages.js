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

  $('.part-upgrade-button').on('click', function() {
    //= link_to 'Upgrade', level_up_rocket_part_path(rocket_part), method: :patch
    $.ajax({
      method: "PATCH",
      url: "/rocket_parts/"+$(this).attr('id')+"/level_up"
    }).done(function() {
      $.event.trigger({
        type: "upgrade",
        message: "Your rocket has been upgraded !",
        time: new Date()
      });
    });
  })

  $(document).on("upgrade", function(e) {
    console.log(e)
    swal({
      title: e.message,
      width: 600,
      padding: '3em',
      backdrop: `
        rgba(0,0,123,0.4)
        url("https://media.giphy.com/media/xUOwGcpl1R1yeqo9YQ/giphy.gif")
        center left
        no-repeat
      `
    })
  });

  $('.panel-dismiss').on('click', function() {
    $(this).parent().parent().hide()
  })
})
