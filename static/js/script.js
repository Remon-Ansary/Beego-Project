// function showDiv(divId, element) {
//   document.getElementById(divId).style.display =
//     element.value == 2 || 1 ? "block" : "none"
// }

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
      console.log(order)
      console.log(breed)
      console.log(limit)
      let data = response

      let html_data = ""
      $.each(data, function (key, value) {
        html_data +=
          '<div class="col-md-4" style="padding-bottom: 10px;">' +
          '<div class="lazy" id="img" style="padding-bottom: 10px; background-image: url(' +
          value.url +
          '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
          "</div>" +
          "</div>"
      })
      $("#images").html(html_data)
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
  var page = (document.getElementById("page").value = 0)

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
      console.log(order)
      console.log(breed)
      console.log(limit)
      let data = response

      let html_data = ""
      $.each(data, function (key, value) {
        html_data +=
          '<div class="col-md-4" style="padding-bottom: 10px;">' +
          '<div class="lazy" id="img" style="padding-bottom: 10px; background-image: url(' +
          value.url +
          '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
          "</div>" +
          "</div>"
      })

      $("#images").html(html_data)
    },
    error: function (error) {
      console.log(error)
    },
  })
})