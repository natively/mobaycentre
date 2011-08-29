jQuery.jQueryRandom = 0;
jQuery.extend(jQuery.expr[":"],
{
    random: function(a, i, m, r) {
        if (i == 0) {
            jQuery.jQueryRandom = Math.floor(Math.random() * r.length);
        };
        return i == jQuery.jQueryRandom;
    }
});

$(document).ready(function() {
  $('.ads:random').show();
  $('.hangribbons li').bind('mouseenter', function(){
    $(this).find('.inner').show();
  }).bind('mouseleave', function(){
    $(this).find('.inner').hide();
  });
});