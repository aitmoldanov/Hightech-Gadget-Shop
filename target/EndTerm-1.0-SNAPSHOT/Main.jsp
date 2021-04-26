<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>PhoneStore</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

</head>

<body id="page-top">

<!-- Navigation -->
<%@ include file="/navbar.jsp" %>
<<style>
    .btn:hover{
        font-size: 30px;
        color: #10d3c9 !important;}
    .team-style-five .team-items .item {
        -moz-box-shadow: -1px 3px 10px 0 rgba(0, 0, 0, 0.06);
        -webkit-box-shadow: -1px 3px 10px 0 rgba(0, 0, 0, 0.06);
        -o-box-shadow: -1px 3px 10px 0 rgba(0, 0, 0, 0.06);
        box-shadow: -1px 3px 10px 0 rgba(0, 0, 0, 0.06);
        padding-top: 0px;
    }
    .team-style-five .single-item.team-standard .thumb {
        overflow: hidden;
    }
    .team-style-five .team-items .item .thumb img{
        width:100%;
    }
    .team-style-five .team-items .item .thumb {
        position: relative;
        z-index: 1;
    }
    .team-style-five .single-item.team-standard .thumb .social {
        bottom: -55px;
        left: 0;
        padding: 7px 25px;
        position: absolute;
        text-align: center;
        -webkit-transition: all 0.35s ease-in-out;
        -moz-transition: all 0.35s ease-in-out;
        -ms-transition: all 0.35s ease-in-out;
        -o-transition: all 0.35s ease-in-out;
        transition: all 0.35s ease-in-out;
        z-index: 1;
        width: 100%;
        text-align: center;
    }
    .team-style-five .single-item.team-standard .item:hover .thumb .social {
        bottom: 0;
    }
    .team-style-five .single-item.team-standard .thumb .social ul {
        background: #ffffff none repeat scroll 0 0;
        border-radius: 30px;
        display: inline-block;
        padding: 10px 30px;
    }
    .team-style-five .single-item.team-standard .thumb .social ul li {
        display: inline-block;
        margin-top: 0px;
    }
    .team-style-five .single-item.team-standard .thumb .social ul li a {
        color: #1cb9c8;
        display: inline-block;
        font-size: 14px;
        margin: 5px 4px 0;
    }
    .team-style-five .team-items .item .info {
        background: #ffffff none repeat scroll 0 0;
        padding: 40px 30px;
    }
    .team-style-five .team-items .item .info h3 {
        font-weight: 700;
        margin-bottom: 5px;
        font-size: 18px;
        font-family:"montserrat", sans-serif;
        text-transform: uppercase;
    }
    .team-style-five .single-item.team-standard .item .info span {
        display: inline-block;
        font-family: "montserrat",sans-serif;
        margin-bottom: 15px;
        padding-bottom: 10px;
        position: relative;
        text-transform: capitalize;
        font-size: 13px;
        color: #1cb9c8;
    }
    .team-style-five .single-item.team-standard .item .info span::after {
        background: #1cb9c8 none repeat scroll 0 0;
        bottom: 0;
        content: "";
        height: 2px;
        left: 50%;
        margin-left: -20px;
        position: absolute;
        width: 40px;
    }
    .team-style-five .team-items .item .info p:last-child {
        margin-bottom: 0;
        color: #666666;
        font-size: 14px;
        line-height: 25px;
    }
    .heading {
        padding: 0px 15px;
        font-size: 16px;
        color: #6b6b6b;
        font-weight: 500;
    }
    .tp-separator {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        flex-direction: row;
        align-items: center;
        padding: 60px 0px;
    }
    .tp-separator .tp-sep-hldr {
        position: relative;
        -webkit-box-flex: 1;
        -webkit-flex: 1 1 auto;
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        min-width: 11%;
    }
    .tp-separator .tp-sep-hldr .tp-sep-lne {
        border-top: 1px solid #eeee;
        display: block;
        position: relative;
        width: 100%;
    }
    .team-area{
        padding:100px 0px;
    }
    .tp-padding{
        padding:0px 30px;
    }
    .team-style-block{
        display:inline-block;
    }
</style>
<div class="view intro-2" style="">
    <div class="full-bg-img">
        <div class="mask pattern-9 flex-center">
            <div class="container text-center white-text wow fadeInUp">
                <h2>Your guide to the world of cinema</h2>
                <br>
                <h5>Choose your favourite gadget</h5>
                <p>Find your own</p>
                <p>The copyright of each film is protected </p>
                <b><a href="{{url('/register')}}" class="btn">Registration</a></b>
            </div>
        </div>
    </div>
</div>

<!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade" data-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-2" data-slide-to="1"></li>
        <li data-target="#carousel-example-2" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view">
                <img class="d-block w-100" src="https://www.ixbt.com/img/n1/news/2020/9/5/apple_announce-iphone12pro_10132020_large_0_large.png"
                     alt="First slide">
                <div class="mask rgba-black-slight"></div>
            </div>
            <div class="carousel-caption">
                <h3 class="h3-responsive">Iphone 12 Pro</h3>
                <p>New experience</p>
            </div>
        </div>
    </div>
    <!--/.Slides-->
</div>
<!--/.Carousel Wrapper-->
<!-------------------------------------------------Carousel Wrapper---------------------------------------------->
<div id="video-carousel-example2" class="carousel slide carousel-fade" data-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#video-carousel-example2" data-slide-to="0" class="active"></li>
        <li data-target="#video-carousel-example2" data-slide-to="1"></li>
        <li data-target="#video-carousel-example2" data-slide-to="2"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
        <!-- First slide -->
        <div class="carousel-item active">
            <!--Mask color-->
            <div class="view">
                <!--Video source-->
                <video class="video-fluid" autoplay loop muted>
                    <source src="https://www.apple.com/105/media/us/iphone-12-pro/2020/e70ffbd8-50f1-40f3-ac36-0f03a15ac314/anim/hero/large_2x.mp4" type="video/mp4" />
                </video>
                <div class="mask rgba-indigo-light"></div>
            </div>

            <!--Caption-->
            <div class="carousel-caption">
                <div class="animated fadeInDown">
                    <h3 class="h3-responsive">Discovery</h3>
                    <p>On the edge of the world</p>
                </div>
            </div>
            <!--Caption-->
        </div>
        <!-- /.First slide -->

        <!-- Second slide -->
        <div class="carousel-item">
            <!--Mask color-->
            <div class="view">
                <!--Video source-->
                <video class="video-fluid" autoplay loop muted>
                    <source src="https://mdbootstrap.com/img/video/forest.mp4" type="video/mp4" />
                </video>
                <div class="mask rgba-purple-slight"></div>
            </div>

            <!--Caption-->
            <div class="carousel-caption">
                <div class="animated fadeInDown">
                    <h3 class="h3-responsive">Home</h3>
                    <p>Yann Arthus-Bertrand</p>
                </div>
            </div>
            <!--Caption-->
        </div>
        <!-- /.Second slide -->

        <!-- Third slide -->
        <div class="carousel-item">
            <!--Mask color-->
            <div class="view">
                <!--Video source-->
                <video class="video-fluid" autoplay loop muted>
                    <source src="https://mdbootstrap.com/img/video/Agua-natural.mp4" type="video/mp4" />
                </video>
                <div class="mask rgba-black-strong"></div>
            </div>

            <!--Caption-->
            <div class="carousel-caption">
                <div class="animated fadeInDown">
                    <h3 class="h3-responsive">National Geographic</h3>
                    <p>African animals</p>
                </div>
            </div>
            <!--Caption-->
        </div>
        <!-- /.Third slide -->
    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#video-carousel-example2" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#video-carousel-example2" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->
</div>
<br>
<br>
<!---------------------------------------Carousel Wrapper------------------------------------------------>
<div class="card-columns">
    <div class="card">
        <img class="card-img-top" src="https://mobile-review.com/articles/2021/image/press-xiaomi/pic/18.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title">The Big Bang Theory</h5>
            <p class="card-text">The Big Bang Theory had been a hit since it first came onto the airwaves in 2007, earning blockbuster ratings, seven Emmy awards, and its own spin-off, Young Sheldon.</p>
        </div>
    </div>
    <div class="card p-3">
        <blockquote class="blockquote mb-0 card-body">
            <p>The Big Bang Theory promises exciting ends and new beginnings in hour-long two-part series finale</p>
            <footer class="blockquote-footer">
                <small class="text-muted">
                    <cite title="Source Title">Daily Mail</cite>
                </small>
            </footer>
        </blockquote>
    </div>
    <div class="card">
        <img class="card-img-top" src="https://s.yimg.com/os/creatr-uploaded-images/2020-07/d5b4fcf5-d2a0-11ea-bacd-bd40084be5d7" alt="Card image cap">

        <div class="card-body">
            <h5 class="card-title">Good Doctor</h5>
            <p class="card-text">The Good Doctor is an American medical drama television series based on the 2013 award-winning South Korean series of the same name.</p>
            <p class="card-text"><small class="text-muted">Last updated 2 mins ago</small></p>
        </div>
    </div>
    <div class="card bg-primary text-white text-center p-3" style="background-color: #424242 !important;">
        <blockquote class="blockquote mb-0">
            <p>The new drama, which stars Freddie Highmore as a surgeon with autism and savant syndrome, has engaged millions of viewers but critics remain skeptical.</p>
            <footer class="blockquote-footer text-white">
                <small>
                    <cite title="Source Title">The Guardian</cite>
                </small>
            </footer>
        </blockquote>
    </div>
    <div class="card text-center">
        <div class="card-body">
            <h5 class="card-title">Chernobyl</h5>
            <p class="card-text">Ahead of the series finale, a science writer who has toured the site of the 1986 nuclear disaster weighs in.</p>
            <p class="card-text"><small class="text-muted">Last updated 5 mins ago</small></p>
        </div>
    </div>
    <div class="card">
        <img class="card-img-top" src="https://cdn.pocket-lint.com/r/s/1200x/assets/images/155378-phones-review-hands-on-samsung-galaxy-s21-ultra-image1-luae09ici4.JPG" alt="Card image cap">

    </div>
    <div class="card p-3 text-right">
        <blockquote class="blockquote mb-0">
            <p>Plenty of Fantasy in HBO’s ‘Chernobyl,’ but the Truth Is Real</p>
            <footer class="blockquote-footer">
                <small class="text-muted">
                    <cite title="Source Title">The New York Times</cite>
                </small>
            </footer>
        </blockquote>
    </div>
</div>


<!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

    <!--Controls-->
    <div class="controls-top" style="margin-left: 720px;font-size: 30px;">
        <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fas fa-chevron-left"></i></a>
        <a class="btn-floating" href="#multi-item-example" data-slide="next"><i
                class="fas fa-chevron-right"></i></a>
    </div>
    <!--/.Controls-->

    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
        <li data-target="#multi-item-example" data-slide-to="1"></li>

    </ol>
    <!--/.Indicators-->

    <!------------------------------------------------------Slides------------------------------------------------------->
    <div class="carousel-inner" role="listbox">
        <!----------------------------------------------------slide------------------------------------------------------>
        <div class="carousel-item" style="">

            <div class="col-md-3" style="float: left;">
                <div class="card mb-2">
                    <div class="view overlay">
                        <img class="card-img-top" src="https://i.ytimg.com/vi/isOGD_7hNIY/maxresdefault.jpg" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <h5 class="card-title font-weight-bold fuchsia-rose-text mb-0">Parasite</h5>
                        <ul class="list-unstyled list-inline my-2">
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>

                        </ul>
                        <p class="chili-pepper-text mb-0">12,99 $</p>
                        <a class="btn aqua-gradient">Watchlist</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float: left;">
                <div class="card mb-2">
                    <div class="view overlay">
                        <img class="card-img-top" src="https://rafenew.world/wp-content/uploads/2020/03/1917.jpg" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <h5 class="card-title font-weight-bold fuchsia-rose-text mb-0">1917</h5>
                        <ul class="list-unstyled list-inline my-2">
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>


                        </ul>
                        <p class="chili-pepper-text mb-0">16,99 $</p>
                        <a class="btn aqua-gradient">Watchlist</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float: left;">
                <div class="card mb-2">
                    <div class="view overlay">
                        <img class="card-img-top" src="https://www.slashgear.com/wp-content/uploads/2019/06/avengers-endgame-1280x720.jpg" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <h5 class="card-title font-weight-bold fuchsia-rose-text mb-0">The Avengers: Endgame</h5>

                        <ul class="list-unstyled list-inline my-2">
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                        </ul>
                        <p class="chili-pepper-text mb-0">19,99 $</p>
                        <a class="btn aqua-gradient">Watchlist</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3" style="float: left;">
                <div class="card mb-2">
                    <div class="view overlay">
                        <img class="card-img-top" src="https://allmyloveisfortaenggu.files.wordpress.com/2019/05/aquaman-everything-i-need-soundtrack-cover-pic.jpg" alt="Card image cap">
                        <a href="#!">
                            <div class="mask rgba-white-slight"></div>
                        </a>
                    </div>
                    <div class="card-body p-3">
                        <h5 class="card-title font-weight-bold fuchsia-rose-text mb-0">Aquaman</h5>
                        <ul class="list-unstyled list-inline my-2">
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>
                            <li class="list-inline-item mx-0"><i class="fas fa-star mimosa-text"></i></li>

                        </ul>
                        <p class="chili-pepper-text mb-0">19,99 $</p>
                        <a class="btn aqua-gradient">Watchlist</a>
                    </div>
                </div>
            </div>

        </div>
        <!--/.Second slide-->
    </div>
    <!--/.Slides-->

</div>
<!--/.Carousel Wrapper-->


<!-------------------------------------/.MEMBERS------------------------------------->
<div class="tp-divid">
    <div class="container">
        <div class="tp-separator">
						<span class="tp-sep-hldr">
							<span class="tp-sep-lne">
							</span>
						</span>
            <span class="heading">Our Team</span>
            <span class="tp-sep-hldr">
							<span class="tp-sep-lne">
							</span>
						</span>
        </div>
    </div>
</div>


<br>


<!-- Footer -->
<%@ include file="/footer.jsp" %>

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom JavaScript for this theme -->
<script src="js/scrolling-nav.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">


<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700|Poppins:200,300,400,500,500i,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/css/mdb.min.css" rel="stylesheet">
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.16.0/js/mdb.min.js"></script>
<script type="text/javascript" src="script.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
