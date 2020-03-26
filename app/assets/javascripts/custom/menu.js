$(document).on('turbolinks:load', function(){
  $('#main_menu li').click(function (e) {
    $('li').removeClass('active');
    $(this).addClass('active');
  });

  var path = window.location.pathname;
  if (path != '/') {
    path = path[0] == '/' ? path.substr(1) : path;
  } else {
    $('#main_menu li a').parent().removeClass('active'); 
  }
  $('#main_menu li a').parent().removeClass('active'); 
  $('#main_menu li a[href$="'+ path +'"]').parent().addClass('active'); 
})
