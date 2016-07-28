$( document ).ready(function() {

  $('.correct').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div class="win"><h1 style="font-size: 6em">YOU WIN!!!!</h1></div>')
    $('.win').fadeOut(1000);
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 1500);
   });

  $('.wrong').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div class="lose"><h1 style="font-size: 6em">YOU LOSE!!!!</h1></div>')
    $('.lose').fadeOut(1000);
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 1500);
   });
});
