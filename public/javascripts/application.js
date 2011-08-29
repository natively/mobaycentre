$(document).ready(function() {
  $('.ads').each(function() {
    $(this).fadeToggle("slow", "swing", function() {
      console.log(this);
      
    });
  });
});
