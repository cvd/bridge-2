resize = -> 
  windowHeight = $(window).height()
  topbarHeight = $('.topbar').height()
  searchBarHeight = $('#search_bar').height()
  h = windowHeight - topbarHeight - searchBarHeight
  $('[data-autoheight]').height(h)

$(document).ready ->
  resize()
  $(window).resize(_.throttle(resize, 100))
