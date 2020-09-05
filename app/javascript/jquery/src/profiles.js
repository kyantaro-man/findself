$(function() {
  $(".profile__header--cover-image").hover( () => {
    $(".js-modal-open.cover-image").fadeIn();
    $(".profile__header--cover-image__hover-bg").fadeIn();
  }, () => {
    $(".js-modal-open.cover-image").fadeOut();
    $(".profile__header--cover-image__hover-bg").fadeOut();
  })
})

$(function() {
  $(".profile__header--profile-image").hover( () => {
    $(".js-modal-open.profile-image").fadeIn();
    $(".profile__header--profile-image__hover-bg").fadeIn();
  }, () => {
    $(".js-modal-open.profile-image").fadeOut();
    $(".profile__header--profile-image__hover-bg").fadeOut();
  })
})