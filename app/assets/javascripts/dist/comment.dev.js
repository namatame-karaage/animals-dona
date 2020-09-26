"use strict";

document.addEventListener("turbolinks:load", function () {
  function buildHTML(comment) {
    var html = "<div class=\"comments__box\">\n                  <p>\n                    <strong>\n                      <a href=/users/".concat(comment.user_id, ">").concat(comment.user_name, "</a>\n                    </strong>\n                  </p>\n                  ").concat(comment.content, "\n                </div>");
    return html;
  }

  $("#new_comment").on("submit", function (e) {
    e.preventDefault();
    console.log(this);
    var formData = new FormData(this);
    var url = $(this).attr("action");
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: "json",
      processData: false,
      contentType: false
    }).done(function (data) {
      var html = buildHTML(data);
      $(".comments").append(html);
      $(".textbox").val("");
      $(".form__submit").prop("disabled", false);
    }).fail(function () {
      alert("error");
    });
  });
});