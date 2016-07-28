$( document ).ready(function() {
  $('.correct').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div><h1 style="font-size: 6em">YOU WIN!!!!</h1></div>').fadeOut
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 300);
   });
  $('.wrong').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div style="font-size: 6em"><h1>YOU LOSE!!!!</h1></div>').fadeOut
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 300);
   });
});
