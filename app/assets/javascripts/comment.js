document.addEventListener("turbolinks:load", function () {
  function buildHTML(comment) {
    let html = `<div class="comments__box">
                  <p>
                    <strong>
                      <a class= "comments__username" href=/users/${comment.user_id}>${comment.user_name}</a>
                    </strong>
                  </p>
                  <p class="comments__text">${comment.content}</p>
                </div>`;
    return html;
  }
  $("#new_comment").on("submit", function (e) {
    e.preventDefault();
    console.log(this)
    let formData = new FormData(this);
    let url = $(this).attr("action");
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: "json",
      processData: false,
      contentType: false,
    })
      .done(function (data) {
        let html = buildHTML(data);
        $(".comments").append(html);
        $(".textbox").val("");
        $(".form__submit").prop("disabled", false);
      })
      .fail(function () {
        alert("error");
      });
  });
});
