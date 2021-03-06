//pagination

function showDiv(divId, element) {
  document.getElementById(divId).style.display =
    element.value == 1 || 2 ? "" : "none"
  $("#pagination-demo").twbsPagination({
    totalPages: 100,
    visiblePages: 6,
    next: "Next",
    prev: "Prev",
    onPageClick: function (event, page1) {
      //fetch content and render here
      $("#page-content").text("Page " + page1)
      let order = $("#order").val()
      let category = $("#category").val()
      let breed = $("#breed").val()
      let limit = $("#limit").val()
      let type = $("#type").val()
      var page = page1

      $.ajax({
        type: "GET",
        url: "http://localhost:8080/new",
        data: {
          order: order,
          category: category,
          breed: breed,
          limit: limit,
          mime_types: type,
          page: page,
        },

        success: function (response) {
          console.log("pagination" + page)
          let data = response

          let html = ""
          $.each(data, function (key, value) {
            html +=
              '<div class="col-md-4" style="padding-bottom: 10px;">' +
              '<div  id="img" style="padding-bottom: 10px; background-image: url(' +
              value.url +
              '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
              "</div>" +
              "</div>"
          })
          $("#image").html(html)
        },
        error: function (error) {
          console.log(error)
        },
      })
    },
  })
}

//button on click
$(document).on("click", "button", function () {
  let order = $("#order").val()
  let category = $("#category").val()
  let breed = $("#breed").val()
  let limit = $("#limit").val()
  let type = $("#type").val()
  var page = (document.getElementById("page").value =
    parseInt(document.getElementById("page").value) + 1)
  console.log("page" + page)

  $.ajax({
    type: "GET",
    url: "http://localhost:8080/new",
    data: {
      order: order,
      category: category,
      breed: breed,
      limit: limit,
      mime_types: type,
      page: page,
    },

    success: function (response) {
      let data = response

      let html = ""
      $.each(data, function (key, value) {
        html +=
          '<div class="col-md-4" style="padding-bottom: 15px;">' +
          '<div id="img" style=" background-image: url(' +
          value.url +
          '); height: 300px; background-repeat: no-repeat; background-size: cover;">' +
          "</div>" +
          "</div>"
      })
      $("#image").html(html)
    },
    error: function (error) {
      console.log(error)
    },
  })
})

//On select
$(document).on("change", "select", function () {
  let order = $("#order").val()
  let category = $("#category").val()
  let breed = $("#breed").val()
  let limit = $("#limit").val()
  let type = $("#type").val()
  var page = (document.getElementById("page").value =
    parseInt(document.getElementById("page").value) + 1)
  $.ajax({
    type: "GET",
    url: "http://localhost:8080/new",
    data: {
      order: order,
      category: category,
      breed: breed,
      limit: limit,
      mime_types: type,
      page: page,
    },

    success: function (response) {
      let data = response

      let html = ""
      $.each(data, function (key, value) {
        html +=
          '<div class="col-md-4" style="padding-bottom: 10px;">' +
          '<div class="" id="img" style="padding-bottom: 10px; background-image: url(' +
          value.url +
          '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
          "</div>" +
          "</div>"
      })

      $("#image").html(html)
    },
    error: function (error) {
      console.log(error)
    },
  })
})

// page number
