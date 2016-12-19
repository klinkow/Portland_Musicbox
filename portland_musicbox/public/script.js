//FRONT END FUNCTIONS





//DOCUMENT READY
$(document).ready(function() {
  toggle = function(click, reveal) {
    $(click).click(function() {
      $(reveal).slideToggle();
    });
  };

  toggle(".enable_menu", ".user_artist_menu");

  $(".add_input").click(function() {
    $(".starting_input").append("<div class='form-group'><input class='form-control' type='text' name='tracks[]' placeholder='Track Name'></div>");
  });
});
