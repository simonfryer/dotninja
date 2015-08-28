Drupal.behaviors.ihfLoginFocus = {
  attach: function(context) {
    (function($) {
      $('#user-login #edit-name').focus();
    })(jQuery);
  }
}
