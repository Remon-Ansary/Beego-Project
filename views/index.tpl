<!DOCTYPE html>
<html>

<head>
  <title>Caturday</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style type="text/css">
  </style>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>

  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
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
  <!-- 

  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet" /> -->

  <!-- <script src="../static/js/script.js"></script> -->
  <script src="  https://cdnjs.cloudflare.com/ajax/libs/twbs-pagination/1.4.1/jquery.twbsPagination.min.js"></script>
  <link rel="stylesheet" src="../static/css/style.css" />
</head>

<body>
  <div class="container-flex">
    <nav class="navbar navbar-dark  navbar-expand-lg" style="background-color:rgb(221, 124, 89)">

      <a class="navbar-brand" href="#">
        &nbsp; <i class="fas fa-cat"></i> &nbsp; Cat Images
      </a>
      <a class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-list-6"
        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </a>
      <div class="collapse navbar-collapse justify-content-end" id="navbar-list-6">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="active nav-link " href="#"><u>Home</u> <span active class=" sr-only"></span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">More Images</a>
          </li>
        </ul>
      </div>
    </nav>
  </div>
  <!-- nav finished -->
  <br><br>
  <div class="container">
    <div>

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
            <div class="col-md-6">
              <label class="text-muted">Order</label>
              <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="order"
                onchange="showDiv('pagination-demo', this)">
                <option selected value="Rand">Random</option>
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
                {{range .jsondata1}}
                <option value="{{.Id}}">{{.Name}}</option>
                {{end}}
              </select>
            </div>
            <div class="col-md-6">
              <label class="text-muted">Breed</label>
              <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="breed">
                <option value="" selected>None</option>
                {{range .jsondata2}}
                <option value="{{.Id}}">{{.Name}}</option>
                {{end}}
              </select>
            </div>
          </div>

          <div class="row" style=" height:70px; background-color:rgb(255, 255, 255)">
            <div class="col-md-6">
              <label class="text-muted">Per Page</label>
              <select class="form-select form-select-sm" aria-label=".form-select-sm example" id="limit">
                <option value="9">9</option>
                <option value="12">12</option>
                <option value="20">20</option>
                <option value="25">25</option>
              </select>
            </div>
            <div class="col-md-6" style="margin-top:20px; width: 200px;">
              <button type="button" id="page" value="0" class="btn btn-info btn-block">
                <i class="fas fa-redo"> </i>
                More</button>
            </div>
          </div>
          <br><br>
          <!-- per page -->
          <!-- <div class="row">
            <div class="col-md-6">
              <ul id="pagination-demo" class="pagination-sm" style="display: none">
              </ul>
            </div>
            <div id="page-content" class="page-content"></div>
          </div> -->

          <div id="image" class="row">
            {{range $i,$j := .jsondata}}
            <div class="col-md-4" style="padding-top:15px">
              <div class="image" id='img'
                style=" background-image: url({{$j.Url}}); background-repeat: no-repeat; height: 300px; background-size: cover;">

              </div>
            </div>
            {{end}}
          </div>

          <!-- per page -->
          <div class="row">
            <div class="col-md-6">
              <ul id="pagination-demo" class="pagination-sm" style="display: none">
              </ul>
            </div>
            <!-- <div id="page-content" class="page-content"></div> -->
          </div>

        </div>
      </div>

      <script src="../static/js/script.js"></script>

</body>

</html>