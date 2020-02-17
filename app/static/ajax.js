$(document).ready(function() {
  $('form').on('submit', function(event) {
    $.ajax({
       data : {
          firstName : $('#firstName').val(),
          lastName: $('#lastName').val(),
              },
          type : 'POST',
          url : '/robotframework'
         })
     .done(function(data) {
       $('#output').text(data.output).show();
       $('#output').text(data.error).show();
   });
   event.preventDefault();
   });
});