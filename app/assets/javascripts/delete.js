$(function(){
  $(".edit-stop").on('click',function(e){
    e.preventDefault();
    $(".delete").fadeIn(500);
    $(".individuallack").fadeIn(500);
  });
  $(".delete-buttom__text").on('click',function(e){
    $(".delete").fadeOut(300);
    $(".individuallack").fadeOut(300);
  });
});