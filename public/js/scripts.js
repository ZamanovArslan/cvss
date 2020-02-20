$(document).ready(function () {
  $(".form-check-label").on('click', function(){
    $("." + this.getAttribute("for")).addClass("active-radio")
  })
})