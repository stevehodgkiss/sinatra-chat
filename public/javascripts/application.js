$(function(){
  var client = new Faye.Client('/faye');
  var subscription = client.subscribe('/messages', function(message) {
    $("<li/>").text(message['text']).appendTo("#messages");
  });
  $("#send_form").submit(function(e){
    e.preventDefault();
    var message = $("#message").val();
    client.publish('/messages', {text: message});
  });
  var showDebugMessages = false;
  Faye.Logging.logLevel = 'debug';
  Faye.logger = function(msg) {
    if (window.console)
      console.log(msg);
    if (showDebugMessages)
      $("<li/>").text(msg).appendTo("#debug");
  };
  
});