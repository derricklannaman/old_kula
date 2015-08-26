$(document).ready(function(){

  messageBarStatus();

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