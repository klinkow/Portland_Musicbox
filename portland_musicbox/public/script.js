//FRONT END FUNCTIONS

toggle = function(click, reveal) {
  $(click).click(function() {
    $(reveal).toggle();
  });
};




//DOCUMENT READY
$(document).ready(function() {


  toggle(".enable_menu", ".user_artist_menu");
  



});
