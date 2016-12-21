//FRONT END FUNCTIONS
toggle = function(click, reveal) {
  $(click).click(function() {
    $(reveal).slideToggle();
  });
};

display_album = function(click, reveal) {
  $(click).click(function() {
    $(reveal).hide();
    $(this).fadeIn();
    $('.tracks').slideDown(1000);
  });
};


//DOCUMENT READY
$(document).ready(function() {
  toggle(".enable_menu", ".user_artist_menu");

  $(".add_input").click(function() {
    $(".starting_input").append("<div class='form-group'><input class='form-control' type='text' name='tracks[]' placeholder='Track Name'></div>");
  });

  display_album(".album_holder", ".album_holder");
});
