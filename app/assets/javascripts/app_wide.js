$(function() {
  $(document).ready(function() {
    $("a[rel=twipsy]").twipsy({
      live: true,
      placement: 'below'
    });
  });
  $("a[rel=popover-img]").popover({
      live: true,
      html: true,
      placement: 'below'
    });
});
