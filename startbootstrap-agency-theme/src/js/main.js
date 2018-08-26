(function ($) {
  "use strict"; // Start of use strict

  // Activate scrollspy to add active class to navbar items on scroll
  $('body').scrollspy({
    target: '#navigation',
    offset: 56
  });

  // Collapse Navbar
  var navbarCollapse = function() {
    if ($("#navigation").offset().top > 100) {
      $("#navigation").addClass("navbar-shrink");
    } else {
      $("#navigation").removeClass("navbar-shrink");
    }
  };
  // Collapse now if page is not at top
  navbarCollapse();
  // Collapse the navbar when page is scrolled
  $(window).scroll(navbarCollapse);

  AUI().ready(
    'liferay-sign-in-modal',
    function (A) {
      var BODY = A.getBody();

      var signIn = A.one('#sign-in');

      if (signIn && signIn.getData('redirect') !== 'true') {
        signIn.plug(Liferay.SignInModal);
      }

      var fullScreenToggleIcon = A.one('.full-screen-navigation #banner .navbar-toggler');

      if (fullScreenToggleIcon) {
        fullScreenToggleIcon.on(
          'click',
          function (event) {
            BODY.toggleClass('main-nav-opened', event.currentTarget.hasClass('collapsed'));
          }
        );
      }
    }
  );

})(jQuery); // End of use strict
