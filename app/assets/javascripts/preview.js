$(function () {
  $('#preview').on('change', function (e) {
  let reader = new FileReader();
  reader.onload = function (e) {
      $(".img-square").attr('src', e.target.result);
  }
  reader.readAsDataURL(e.target.files[0]);
});
});
