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


$(function() {
  $('.modal__container-contents__form').on('change', 'input[type="file"]', function(e) {
    let file = e.target.files[0],
        reader = new FileReader(),
        preview = $(".modal__container-contents__cover-image-preview");
    
    if(file.type.indexOf("image") < 0) {
      return false;
    }

    reader.onload = (function() {
      preview.css({
        backgroundImage: `url(${reader.result})`,
        height: '220px',
        width: '640px',
        backgroundPositionX: '50%',
        backgroundPositionY: '50%',
        backgroundSize: 'cover',
        marginTop: '16px',
        border: '1px solid'
      })
    })

    reader.readAsDataURL(file);

  })
})

$(function() {
  $('.modal__container-contents__form').on('change', 'input[type="file"]', function(e) {
    let file = e.target.files[0],
        reader = new FileReader(),
        preview = $(".modal__container-contents__profile-image-preview");
    
    if(file.type.indexOf("image") < 0) {
      return false;
    }

    reader.onload = (function() {
      preview.css({
        backgroundImage: `url(${reader.result})`,
        height: '264px',
        width: '200px',
        backgroundPositionX: '50%',
        backgroundPositionY: '50%',
        backgroundSize: 'cover',
        margin: '16px auto 0',
        border: '1px solid'
      })
    })

    reader.readAsDataURL(file);

  })
})