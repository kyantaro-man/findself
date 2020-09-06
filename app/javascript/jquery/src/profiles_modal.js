$(function() {
  let winScrollTop;
  $('.js-modal-open').each(function() {
    $(this).on('click', () => {
      winScrollTop = $(window).scrollTop();
      let target = $(this).data('target');
      let modal = document.getElementById(target);
      $(modal).fadeIn();
      return false;    
    })
  });
  $('.js-modal-close').on('click', () => {
    $('.js-modal').fadeOut();
    $('body, html').stop().animate( {scrollTop: winScrollTop}, 100);
    return false;
  });
})