<%--
  Created by IntelliJ IDEA.
  User: asank
  Date: 4/4/2016
  Time: 1:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
  <title>Fandom Corner</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/materialize.min.css">
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Bree Serif">
  <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/icon?family=Material+Icons" >
  <link rel="stylesheet" type="text/css" href="css/ninja-slider.css">
  <script type="text/javascript" src="js/jquery-2.2.2.min.js"></script>

  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="js/materialize.min.js"></script>

  <script type="text/javascript" src="js/ninja-slider.js"></script>

  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */

    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    /* Remove the jumbotron's default bottom margin */

    .jumbotron {
      margin-bottom: 0;
    }
    /* Add a gray background color and some padding to the footer */

    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>

<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1>Fandow Corner</h1>
    <p>One stop for all type of Fans</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Fandom Corner</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Deals</a></li>
        <li><a href="allproducts.jsp">Browse All</a></li>
        <li><a href="#">Movies</a></li>
        <li><a href="#">Games</a></li>
        <li><a href="#">Accesories</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span> Sign In/Sign Up</a></li>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-bookmark"></span> Wishlist</a></li>
        <li><a href="#"><span class="glyphicon glyphicon-earphone"></span> Contact Us</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="slider">
  <div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
      <div id="ninja-slider">
        <div class="slider-inner">
          <ul>
            <li>
              <a class="ns-img" href="resourse/sliderIMG/FCSlider1.png"></a>
              <div class="caption">NEWEST MOVIES</div>
            </li>
            <li>
              <a class="ns-img" href="resourse/sliderIMG/FCSlider2.png"></a>
              <div class="caption">UP COMING TV SERIES</div>
            </li>
            <li>
              <a class="ns-img" href="resourse/sliderIMG/FCSlider3.png"></a>
              <div class="caption">ATTRACTIVE GAMES</div>
            </li>
            <li>
              <a class="ns-img" href="resourse/sliderIMG/FCSlider4.png"></a>
              <div class="caption">COMIC ART T-SHIRTS</div>
            </li>
            <li>
              <a class="ns-img" href="resourse/sliderIMG/FCSlider5.png"></a>
              <div class="caption">OTHER ACCESSORIES</div>
            </li>
          </ul>
          <div class="navsWrapper">
            <div id="ninja-slider-prev"></div>
            <div id="ninja-slider-next"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-2"></div>
  </div>
</div>

<br><br>

<div class="container">

  <div class="row">

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Special Offer 1<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Special Offer 1<i class="material-icons right">close</i></span>
          <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Special Offer 2<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Special Offer 2<i class="material-icons right">close</i></span>
          <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Special Offer 3<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Special Offer 3<i class="material-icons right">close</i></span>
          <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>
  </div>
<%--</div>--%>

<%--<br>--%>

<%--<div class="container">--%>

  <div class="row">

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
          <p>Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Special Offer 5<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Special Offer 5<i class="material-icons right">close</i></span>
          <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>

    <div class="col-sm-4">
      <div class="card">
        <div class="card-image waves-effect waves-block waves-light">
          <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
        </div>
        <div class="card-content">
          <span class="card-title activator grey-text text-darken-4">Special Offer 6<i class="material-icons right">more_vert</i></span>
            <div class="card-action">
                <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
            </div>
        </div>
        <div class="card-reveal">
          <span class="card-title grey-text text-darken-4">Special Offer 6<i class="material-icons right">close</i></span>
          <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
        </div>
      </div>
    </div>
  </div>

    <div class="row">

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                    <p>Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Special Offer 5<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Special Offer 5<i class="material-icons right">close</i></span>
                    <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Special Offer 6<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Special Offer 6<i class="material-icons right">close</i></span>
                    <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Card Title<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Card Title<i class="material-icons right">close</i></span>
                    <p>Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Special Offer 5<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Special Offer 5<i class="material-icons right">close</i></span>
                    <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>

        <div class="col-sm-4">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img class="activator" src="http://materializecss.com/images/sample-1.jpg">
                </div>
                <div class="card-content">
                    <span class="card-title activator grey-text text-darken-4">Special Offer 6<i class="material-icons right">more_vert</i></span>
                    <div class="card-action">
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><i class="material-icons">info_outline</i></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-bookmark"></span></button></a>
                        <a href="#"><button class="waves-effect waves-teal btn-flat"><span class="glyphicon glyphicon-shopping-cart"></button></a>
                    </div>
                </div>
                <div class="card-reveal">
                    <span class="card-title grey-text text-darken-4">Special Offer 6<i class="material-icons right">close</i></span>
                    <p>Sample Text Here.Here is some more information about this product that is only revealed once clicked on.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>


<footer class="container-fluid text-center">
  <p>Online Store Copyright</p>
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

<script>
  $('.fixed-action-btn').openFAB();
</script>

<script>
  $('.fixed-action-btn').closeFAB();
</script>


</body>
</html>