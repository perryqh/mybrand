jQuery(document).ready(function($) {
  var gaTrackCode = "UA-7211958-1";
  var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");

  jQuery.getScript(gaJsHost + "google-analytics.com/ga.js", function(){
    try {
      var pageTracker = _gat._getTracker("UA-7211958-1");
      pageTracker._trackPageview();
    } catch(err) {}
  });
});

