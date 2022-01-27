<!DOCTYPE html>

<html>

<head>
  <title>Caturday</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style type="text/css">
  </style>
</head>

<!-- Latest compiled and minified JavaScript -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
  integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
  integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
  integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
  crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
<!-- MDB -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.1/mdb.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css" />

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
  integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
  crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" />

<div class="container-flex">
  <nav class="navbar navbar-dark  navbar-expand-lg" style="background-color:rgb(221, 124, 89)">

    <a class="navbar-brand" href="#">
      &nbsp; <i class="fas fa-cat"></i> &nbsp; Cat API
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-list-6"
      aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbar-list-6">
      <ul class="navbar-nav">
        <li class="nav-item active">
          <a class="active nav-link " href="#"><u>Home</u> <span active class=" sr-only"></span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Documentation</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Experience</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Blog</a>
        </li>
      </ul>
    </div>
  </nav>
</div>
<br><br>
<div class="container">

  <div class="row">
    <div class="card shadow-lg z-depth-5 rounded">
      <div class="row" style="background-color:black;align-items: center; ">
        <span
          style="color:white; font-size:25px; display: flex;font-weight:bold;align-items: center; justify-content: center;">
          <p>Image/Search</p>
        </span>
      </div>
      <div class="row" style=" background-color: white;">
        <!-- select row 1 -->
        <div class="row">
          <div class="col-md-6">
            <label class="text-muted">Order</label>
            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="order"
              onchange="showDiv('hidden_div', this)">
              <option selected>Random</option>
              <option value="1">Ascending</option>
              <option value="2">Descending</option>
            </select>
          </div>
          <div class="col-md-6">
            <label class="text-muted">Type</label>
            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="type">
              <option selected>All</option>
              <option value="gif">Animated</option>
              <option value="png,jpg">Static</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <label class="text-muted">Category</label>
            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="category">
              <option value="" selected>None</option>
              {{range .F1}}
              <option value="{{.Id}}">{{.Name}}</option>
              {{end}}
            </select>
          </div>
          <div class="col-md-6">
            <label class="text-muted">Breed</label>
            <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="breed">
              <option value="" selected>None</option>
              {{range .F2}}
              <option value="{{.Id}}">{{.Name}}</option>
              {{end}}
            </select>
          </div>
        </div>
      </div>

      <div class="row" style=" height:70px; background-color:rgb(255, 255, 255)">
        <div class="col-md-6">
          <label class="text-muted">Per Page</label>
          <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="limit">
            <option value="9">9</option>
            <option value="3">3</option>
            <option value="6">6</option>
            <option value="12">12</option>
          </select>
        </div>
        <div class="col-md-6" style="margin-top:20px">
          <button type="button" id="page" value="0" class="btn btn-info btn-block">
            <i class="fas fa-redo"> </i>
            More</button>
        </div>
      </div>
      <br><br>

      <div class="row">
        <div id="images" class="row">
          {{range $i,$v := .F}}
          <div class="col-md-4" style="padding-top:10px">
            <div class="lazy"
              style=" background-image: url({{$v.Url}}); background-repeat: no-repeat; height: 300px; background-size: cover;">
              <!-- <img src=" {{$v.Url}}" style="object-fit: cover;height:200px;width:200px;padding: 10px 0px 10px 0px"> -->
            </div>
          </div>
          {{end}}
        </div>
      </div>
    </div>
  </div>
  <!-- pagination -->
  <div class="row">
    <div class="pagination" id="hidden_div">
      <ul>
        <!--pages or li are comes from javascript -->
      </ul>
    </div>
  </div>
</div>
<div id="loading">
  <img id="loading-image" src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Loader.gif/480px-Loader.gif"
    alt="Loading..." />
</div>




<script>

  function showDiv(divId, element) {
    document.getElementById(divId).style.display = element.value == 2 || 1 ? 'block' : 'none';
  }
  // document.addEventListener("DOMContentLoaded", function () {
  //   var lazyloadImages;

  //   if ("IntersectionObserver" in window) {
  //     lazyloadImages = document.querySelectorAll(".lazy");
  //     var imageObserver = new IntersectionObserver(function (entries, observer) {
  //       entries.forEach(function (entry) {
  //         if (entry.isIntersecting) {
  //           var image = entry.target;
  //           image.classList.remove("lazy");
  //           imageObserver.unobserve(image);
  //         }
  //       });
  //     });

  //     lazyloadImages.forEach(function (image) {
  //       imageObserver.observe(image);
  //     });
  //   } else {
  //     var lazyloadThrottleTimeout;
  //     lazyloadImages = document.querySelectorAll(".lazy");

  //     function lazyload() {
  //       if (lazyloadThrottleTimeout) {
  //         clearTimeout(lazyloadThrottleTimeout);
  //       }

  //       lazyloadThrottleTimeout = setTimeout(function () {
  //         var scrollTop = window.pageYOffset;
  //         lazyloadImages.forEach(function (img) {
  //           if (img.offsetTop < (window.innerHeight + scrollTop)) {
  //             img.src = img.dataset.src;
  //             img.classList.remove('lazy');
  //           }
  //         });
  //         if (lazyloadImages.length == 0) {
  //           document.removeEventListener("scroll", lazyload);
  //           window.removeEventListener("resize", lazyload);
  //           window.removeEventListener("orientationChange", lazyload);
  //         }
  //       }, 20);
  //     }

  //     document.addEventListener("scroll", lazyload);
  //     window.addEventListener("resize", lazyload);
  //     window.addEventListener("orientationChange", lazyload);
  //   }
  // })
  window.onload = function () { document.getElementById("loading").style.display = "none" }

  //page
  $(document).on('click', 'li', function () {

    const element = document.querySelector(".pagination ul");
    let totalPages = 20;
    let page = 10;
    //calling function with passing parameters and adding inside element which is ul tag
    element.innerHTML = createPagination(totalPages, page);
    function createPagination(totalPages, page) {
      let liTag = '';
      let active;
      let beforePage = page - 1;
      let afterPage = page + 1;
      if (page > 1) { //show the next button if the page value is greater than 1
        liTag += `<li class="btn prev" onclick="createPagination(totalPages, ${page - 1})"><span><i class="fas fa-angle-left"></i> Prev</span></li>`;
      }
      if (page > 2) { //if page value is less than 2 then add 1 after the previous button
        liTag += `<li class="first numb" onclick="createPagination(totalPages, 1)"><span>1</span></li>`;
        if (page > 3) { //if page value is greater than 3 then add this (...) after the first li or page
          liTag += `<li class="dots"><span>...</span></li>`;
        }
      }
      // how many pages or li show before the current li
      if (page == totalPages) {
        beforePage = beforePage - 2;
      } else if (page == totalPages - 1) {
        beforePage = beforePage - 1;
      }
      // how many pages or li show after the current li
      if (page == 1) {
        afterPage = afterPage + 2;
      } else if (page == 2) {
        afterPage = afterPage + 1;
      }
      for (var plength = beforePage; plength <= afterPage; plength++) {
        if (plength > totalPages) { //if plength is greater than totalPage length then continue
          continue;
        }
        if (plength == 0) { //if plength is 0 than add +1 in plength value
          plength = plength + 1;
        }
        if (page == plength) { //if page is equal to plength than assign active string in the active variable
          active = "active";
        } else { //else leave empty to the active variable
          active = "";
        }
        liTag += `<li class="numb ${active}" onclick="createPagination(totalPages, ${plength})"><span>${plength}</span></li>`;
      }
      if (page < totalPages - 1) { //if page value is less than totalPage value by -1 then show the last li or page
        if (page < totalPages - 2) { //if page value is less than totalPage value by -2 then add this (...) before the last li or page
          liTag += `<li class="dots"><span>...</span></li>`;
        }
        liTag += `<li class="last numb" onclick="createPagination(totalPages, ${totalPages})"><span>${totalPages}</span></li>`;
      }
      if (page < totalPages) { //show the next button if the page value is less than totalPage(20)
        liTag += `<li class="btn next" onclick="createPagination(totalPages, ${page + 1})"><span>Next <i class="fas fa-angle-right"></i></span></li>`;
      }
      element.innerHTML = liTag; //add li tag inside ul tag
      return liTag; //reurn the li tag
    }
    let order = $('#order').val();
    let category = $('#category').val();
    let breed = $('#breed').val();
    let limit = $('#limit').val();
    let type = $('#type').val();
    // var page = document.getElementById("page1").value = parseInt(document.getElementById("page1").value) + 1;
    console.log('page' + page);
    $.ajax({
      type: 'GET',
      url: 'http://localhost:8080/new',
      data: {
        "order": order,
        "category": category,
        "breed": breed,
        "limit": limit,
        "mime_types": type,
        "page": page
      },

      success: function (response) {
        console.log(order);
        console.log(breed);
        console.log(limit);
        let data = response;

        let html_data = "";
        $.each(data, function (key, value) {
          html_data += '<div class="col-md-4" style="padding-bottom: 10px;">' +
            '<div class="lazy" style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
            '</div>' +
            '</div>'
        })
        $("#images").html(html_data);
      },
      error: function (error) {
        console.log(error)
      }
    })

  });
  //click
  $(document).on('click', 'button', function () {
    let order = $('#order').val();
    let category = $('#category').val();
    let breed = $('#breed').val();
    let limit = $('#limit').val();
    let type = $('#type').val();
    var page = document.getElementById("page").value = parseInt(document.getElementById("page").value) + 1;
    console.log('page' + page);

    $.ajax({
      type: 'GET',
      url: 'http://localhost:8080/new',
      data: {
        "order": order,
        "category": category,
        "breed": breed,
        "limit": limit,
        "mime_types": type,
        "page": page
      },

      success: function (response) {
        console.log(order);
        console.log(breed);
        console.log(limit);
        let data = response;

        let html_data = "";
        $.each(data, function (key, value) {
          html_data += '<div class="col-md-4" style="padding-bottom: 10px;">' +
            '<div class="lazy" style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +
            '</div>' +
            '</div>'
        })
        $("#images").html(html_data);
      },
      error: function (error) {
        console.log(error)
      }
    })

  });
  //select
  $(document).on('change', 'select', function () {
    let order = $('#order').val();
    let category = $('#category').val();
    let breed = $('#breed').val();
    let limit = $('#limit').val();
    let type = $('#type').val();
    var page = document.getElementById("page").value = 0;

    $.ajax({
      type: 'GET',
      url: 'http://localhost:8080/new',
      data: {
        "order": order,
        "category": category,
        "breed": breed,
        "limit": limit,
        "mime_types": type,
        "page": page
      },

      success: function (response) {
        console.log(order);
        console.log(breed);
        console.log(limit);
        let data = response;

        let html_data = "";
        $.each(data, function (key, value) {

          html_data += '<div class="col-md-4" style="padding-bottom: 10px;">' +

            '<div class="lazy" style="padding-bottom: 10px; background-image: url(' + value.url + '); background-repeat: no-repeat; height: 300px; background-size: cover;">' +

            '</div>' +
            '</div>'


          // html_data += '<div class="col-md-4">',
          //   html_data += '<img src="' + value.url + '" width="100" height="100"></img>',
          //   html_data += '</div>'
        })

        $("#images").html(html_data);
      },
      error: function (error) {
        console.log(error)
      }
    })
  });


  //pagination

  const element = document.querySelector(".pagination ul");
  let totalPages = 20;
  let page = 10;
  //calling function with passing parameters and adding inside element which is ul tag
  element.innerHTML = createPagination(totalPages, page);
  function createPagination(totalPages, page) {
    let liTag = '';
    let active;
    let beforePage = page - 1;
    let afterPage = page + 1;
    if (page > 1) { //show the next button if the page value is greater than 1
      liTag += `<li class="btn prev" onclick="createPagination(totalPages, ${page - 1})"><span><i class="fas fa-angle-left"></i> Prev</span></li>`;
    }
    if (page > 2) { //if page value is less than 2 then add 1 after the previous button
      liTag += `<li class="first numb" onclick="createPagination(totalPages, 1)"><span>1</span></li>`;
      if (page > 3) { //if page value is greater than 3 then add this (...) after the first li or page
        liTag += `<li class="dots"><span>...</span></li>`;
      }
    }
    // how many pages or li show before the current li
    if (page == totalPages) {
      beforePage = beforePage - 2;
    } else if (page == totalPages - 1) {
      beforePage = beforePage - 1;
    }
    // how many pages or li show after the current li
    if (page == 1) {
      afterPage = afterPage + 2;
    } else if (page == 2) {
      afterPage = afterPage + 1;
    }
    for (var plength = beforePage; plength <= afterPage; plength++) {
      if (plength > totalPages) { //if plength is greater than totalPage length then continue
        continue;
      }
      if (plength == 0) { //if plength is 0 than add +1 in plength value
        plength = plength + 1;
      }
      if (page == plength) { //if page is equal to plength than assign active string in the active variable
        active = "active";
      } else { //else leave empty to the active variable
        active = "";
      }
      liTag += `<li class="numb ${active}" onclick="createPagination(totalPages, ${plength})"><span>${plength}</span></li>`;
    }
    if (page < totalPages - 1) { //if page value is less than totalPage value by -1 then show the last li or page
      if (page < totalPages - 2) { //if page value is less than totalPage value by -2 then add this (...) before the last li or page
        liTag += `<li class="dots"><span>...</span></li>`;
      }
      liTag += `<li class="last numb" onclick="createPagination(totalPages, ${totalPages})"><span>${totalPages}</span></li>`;
    }
    if (page < totalPages) { //show the next button if the page value is less than totalPage(20)
      liTag += `<li class="btn next" onclick="createPagination(totalPages, ${page + 1})"><span>Next <i class="fas fa-angle-right"></i></span></li>`;
    }
    element.innerHTML = liTag; //add li tag inside ul tag
    return liTag; //reurn the li tag
  }



</script>


<style>
  .caturday {
    font-size: 30px;
    color: rgb(206, 71, 71);
  }

  .img-fluid {
    height: 150px;
    width: 200px;
    object-fit: cover;
    object-position: bottom;
  }

  #loading {
    width: 100%;
    height: 100%;
    top: 0px;
    right: 70px;
    position: fixed;
    display: block;
    z-index: 99
  }

  #loading-image {
    position: absolute;
    top: 40%;
    left: 45%;
    z-index: 100
  }

  #hidden_div {
    display: none;
  }


  /* pagination */


  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');

  /* * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
  } */

  /* body {
    display: flex;
    align-items: center;
    justify-content: center;
    background: #20B2AA;
    min-height: 100vh;
    padding: 10px;
  } */

  .pagination ul {
    width: 100%;
    display: flex;
    flex-wrap: wrap;
    background: #fff;
    padding: 8px;
    border-radius: 50px;
    box-shadow: 0px 10px 15px rgba(0, 0, 0, 0.1);
  }

  .pagination ul li {
    color: #20B2AA;
    list-style: none;
    line-height: 45px;
    text-align: center;
    font-size: 18px;
    font-weight: 500;
    cursor: pointer;
    user-select: none;
    transition: all 0.3s ease;
  }

  .pagination ul li.numb {
    list-style: none;
    height: 45px;
    width: 45px;
    margin: 0 3px;
    line-height: 45px;
    border-radius: 50%;
  }

  .pagination ul li.numb.first {
    margin: 0px 3px 0 -5px;
  }

  .pagination ul li.numb.last {
    margin: 0px -5px 0 3px;
  }

  .pagination ul li.dots {
    font-size: 22px;
    cursor: default;
  }

  .pagination ul li.btn {
    padding: 0 20px;
    border-radius: 50px;
  }

  .pagination li.active,
  .pagination ul li.numb:hover,
  .pagination ul li:first-child:hover,
  .pagination ul li:last-child:hover {
    color: #fff;
    background: #20B2AA;
  }
</style>
</body>

</html>