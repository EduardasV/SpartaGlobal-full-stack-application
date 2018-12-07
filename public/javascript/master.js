$(function() {
  $(".image").hover(function() {
    $(this).addClass('transition');
  }, function() {
    $(this).removeClass('transition');
  });
});
