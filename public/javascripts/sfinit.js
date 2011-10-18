$(document).ready(function(){
    $("ul.sf-menu").supersubs({
        delay: 600, // the delay in milliseconds that the mouse can remain outside a submenu without it closing
        animation: {
            opacity: 'show',
            height: 'show'
        }, // an object equivalent to first parameter of jQuery’s .animate() method
        speed: 'normal', // speed of the animation. Equivalent to second parameter of jQuery’s .animate() method
        autoArrows: true, // if true, arrow mark-up generated automatically = cleaner source code at expense of initialisation performance
        dropShadows: true, // completely disable drop shadows by setting this to false
        minWidth: 8, // minimum width of sub-menus in em units
        maxWidth: 15, // maximum width of sub-menus in em units
        extraWidth: 1 // extra width can ensure lines don't sometimes turn over
        // due to slight rounding differences and font-family
    }).superfish(); // call supersubs first, then superfish, so that subs are not display:none when measuring. Call before initialising containing tabs for same reason.
}); 