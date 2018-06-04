// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {

  function isDisplayed(id) {
    var isDisplayed = $('#'+id).css('display')
    if(isDisplayed === "flex")
      return true
    return false
  }

  function display(id) {
    $('#'+id).css('display', 'flex')
  }

  function hide(id) {
    $('#'+id).css('display', 'none')
  }

  $('#upgrade-btn-fins').on('click', function() {
    if(isDisplayed("upgrade-panel-fins"))
      hide("upgrade-panel-fins")
    else
      display("upgrade-panel-fins")
  })

  $('#upgrade-btn-tube').on('click', function() {
    if(isDisplayed("upgrade-panel-tube"))
      hide("upgrade-panel-tube")
    else
      display("upgrade-panel-tube")
  })

  $('#upgrade-btn-nose').on('click', function() {
    if(isDisplayed("upgrade-panel-nose"))
      hide("upgrade-panel-nose")
    else
      display("upgrade-panel-nose")
  })

  $('#upgrade-btn-hollow-pressure-vessel').on('click', function() {
    if(isDisplayed("upgrade-panel-hollow-pressure-vessel"))
      hide("upgrade-panel-hollow-pressure-vessel")
    else
      display("upgrade-panel-hollow-pressure-vessel")
  })
})
