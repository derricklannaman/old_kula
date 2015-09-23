$(document).ready(function(){

  // messageBarStatus();
$('[id^="myCarousel"]').carousel({
  pause: true,
  interval: false
});
// $('.myCarousel').carousel()

$('.carousel .item').each(function(){
  var next = $(this).next();
  if (!next.length) {
    next = $(this).siblings(':first');
  }
  next.children(':first-child').clone().appendTo($(this));

  if (next.next().length>0) {
    next.next().children(':first-child').clone().appendTo($(this));
  }
  else {
    $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
  }
});




});

function messageBarStatus() {
// if message bar has content, show message bar for 8 seconds, then hide
  var messageBar = $('.message-bar');
  var messg = messageBar.find('.notice').first().text().trim();
  if(messg.length == 0) {
    messageBar.hide();
  }
  else {
    messageBar.show();
  }

}

