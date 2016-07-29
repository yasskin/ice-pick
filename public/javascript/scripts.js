$( document ).ready(function() {

  $('.correct').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div class="win"><h1>CORRECT!</h1></div>')
    $('.win').fadeOut(2000);
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 1500);
   });

  $('.wrong').on('submit', function(e){
    var form = this;
    e.preventDefault();
    $('body').prepend('<div class="lose"><h1>WRONG!</h1></div>')
    $('.lose').fadeOut(2000);
     setTimeout(function() {
        console.log("yeah");
        form.submit();
     }, 1500);
   });
});
