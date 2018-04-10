<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Aluguel de Carros</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="shortcut icon" href="images/logo-header.png"/>
        <link href="../../images/css/lib/images.css" rel="stylesheet" type="text/css"/>
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet' type='text/css'>

        <!-- CSS LIBRARY -->
        <link rel="stylesheet" type="text/css" href="css/lib/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="css/lib/font-lotusicon.css">
        <link rel="stylesheet" type="text/css" href="css/lib/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/lib/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/lib/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="css/lib/magnific-popup.css">
        <link rel="stylesheet" type="text/css" href="css/lib/settings.css">
        <link rel="stylesheet" type="text/css" href="css/lib/bootstrap-select.min.css">
        <link rel="stylesheet" type="text/css" href="css/helper.css">

        <!-- MAIN STYLE -->
        <link rel="stylesheet" type="text/css" href="css/style.css">

        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
        <![endif]-->
    </head>

    <!--[if IE 7]> <body class="ie7 lt-ie8 lt-ie9 lt-ie10"> <![endif]-->
    <!--[if IE 8]> <body class="ie8 lt-ie9 lt-ie10"> <![endif]-->
    <!--[if IE 9]> <body class="ie9 lt-ie10"> <![endif]-->
    <!--[if (gt IE 9)|!(IE)]><!--> <body> <!--<![endif]-->

        <!-- PRELOADER -->
        <div id="preloader">
            <span class="preloader-dot"></span>
        </div>
        <!-- END / PRELOADER -->

        <!-- PAGE WRAP -->
        <div id="page-wrap">

            <!-- HEADER -->
            <header id="header" class="header-v2">

                <!-- HEADER TOP -->
                <div class="header_top">
                    <div class="container">
                        <div class="header_left float-left">
                            <span><i class="lotus-icon-location"></i> Av. Eng. Eusébio Stevaux, 823</span>
                            <span><i class="lotus-icon-phone"></i> (11) 5682-7300</span>
                        </div>
                        <div class="header_right float-right">

                            <span class="login-register">
                                <a href="login.html">Login</a>
                                <a href="register.html">register</a>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="header_content" id="header_content">

                    <div class="container">

                        <div class="header_logo">
                            <a href="#"><img src="images/logo-header.png" alt=""></a>
                        </div>

                        <nav class="header_menu">
                            <ul class="menu">
                                <li class="current-menu-item">
                                    <a href="home">Home </a>

                                </li>
                                <li><a href="about.html">A Canvt</a></li>

                                <li>
                                    <a href="#">Room <span class="fa fa-caret-down"></span></a>
                                    <ul class="sub-menu">
                                        <li><a href="room-1.html">Room 1</a></li>
                                        <li><a href="room-2.html">Room 2</a></li>
                                        <li><a href="room-3.html">Room 3</a></li>
                                        <li><a href="room-4.html">Room 4</a></li>
                                        <li><a href="room-5.html">Room 5</a></li>
                                        <li><a href="room-6.html">Room 6</a></li>
                                        <li><a href="room-detail.html">Room Detail</a></li>
                                    </ul>
                                </li>

                                <li>
                                    <a href="reserva">Reserva</a>

                                </li>

                                <li><a href="contact.html">Contato</a></li>
                            </ul>
                        </nav>

                        <span class="menu-bars">
                            <span></span>
                        </span>

                    </div>
                </div>

            </header>

            <section class="section-slider">
                <h1 class="element-invisible">Slider</h1>
                <div id="slider-revolution">
                    <ul>


                        <li data-transition="fade">
                            <img class="img-responsive" src="images/slider/img-1.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">
                            <!--                            
                            -->                            <div class="tp-caption sft fadeout" data-x="center" data-y="195" data-speed="700" data-start="1300" data-easing="easeOutBack">
                                <img src="images/icon-slider-1.png" alt="">
                            </div>

                            <div class="tp-caption sft fadeout slider-caption-sub slider-caption-sub-3" data-x="center" data-y="220" data-speed="700" data-start="1500" data-easing="easeOutBack">
                                Esportivo
                            </div>

                            <div class="tp-caption sfb fadeout slider-caption slider-caption-3" data-x="center" data-y="260" data-speed="700" data-easing="easeOutBack"  data-start="2000">
                                15% Desconto
                            </div>

                            <div class="tp-caption sfb fadeout slider-caption-sub slider-caption-sub-3" data-x="center" data-y="365" data-easing="easeOutBack" data-speed="700" data-start="2200">APENAS PARA VOCÊ</div>

                            <div class="tp-caption sfb fadeout slider-caption-sub slider-caption-sub-3" data-x="center" data-y="395" data-easing="easeOutBack" data-speed="700" data-start="2400"><img src="images/icon-slider-2.png" alt=""></div>

                        </li> 

                        <li data-transition="fade">
                            <img src="images/slider/slider2.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">

                        </li> -->
                    </ul>
                </div>

            </section>
            <!-- END / BANNER SLIDER -->

            <!-- CHECK AVAILABILITY -->
            <section class="section-check-availability">
                <div class="container">
                    <div class="check-availability">
                        <div class="row">
                            <div class="col-lg-3">
                                <h2>ALUGUE O SEU AGORA MESMO</h2>
                            </div>
                            <div class="col-lg-9">
                                <form id="ajax-form-search-room" action="search_step_2.php" method="post">
                                    <div class="availability-form">
                                        <input type="text" name="arrive" class="awe-calendar from" placeholder="Data de retirada">
                                        <input type="text" name="departure" class="awe-calendar to" placeholder="Data de entrega">

                                        <select class="awe-select" name="adults">
                                            <option>Local de retirada</option>
                                            <option>Unidade Jabaquara</option>
                                            <option>Unidade Santo Amaro</option>
                                            <option>Unidade Congonhas</option>
                                        </select>
                                        <div class="vailability-submit">
                                            <button class="awe-btn awe-btn-13">ALUGAR</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END / CHECK AVAILABILITY -->

            <!-- ACCOMD ODATIONS -->
            <section class="section-accomd awe-parallax">
                <div class="container">
                    <div class="accomd-modations">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="accomd-modations-header">
                                    <h2 class="heading">Carros & Destaques</h2>
                                    <img src="images/icon-accmod.png" alt="icon">
                                    <p>Semper ac dolor vitae accumsan. Cras interdum hendrerit lacinia. Phasellus accumsan urna vitae molestie interdum. Nam sed placerat libero, non eleifend dolor.</p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="accomd-modations-content owl-single">

                                    <div class="row">

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/MC250_1.jpg" class="cars" alt="Mercedes-Bens azul"></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Mercedes-Benz C250</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/LDEvoqueC.jpg"   class="cars"alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">RANGE ROVER EVOQUE HSE DYNAMIC CONVERSÍVEL</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/300C.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">CHRYSLER 300C
                                                        </a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/AgeraRS_1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Agera RS</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/KRegera.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Regera </a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->


                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/Cars/BMWI8.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">BMWI8</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->


                                    </div>

                                    <div class="row">

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Luxury Room</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Family Room</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Couple Room</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/days
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Standard</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Standard</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-4">
                                            <div class="accomd-modations-room">
                                                <div class="img">
                                                    <a href="#"><img src="images/room/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <h2><a href="#">Standard</a></h2>
                                                    <p class="price">
                                                        <span class="amout">$320</span>/day
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <!-- END / ACCOMD ODATIONS -->

            <!-- ABOUT -->
            <section class="section-home-about bg-white">
                <div class="container">
                    <div class="home-about">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="img">
                                    <a href="#"><img src="images/home/about/img-1.jpg" alt=""></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text">
                                    <h2 class="heading">Sobre Nós</h2>
                                    <span class="box-border"></span>
                                    <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source</p>
                                    <a href="#" class="awe-btn awe-btn-default">READ MORE</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END / ABOUT -->

            <!-- OUR BEST -->
            <section class="section-our-best bg-white">
                <div class="container">

                    <div class="our-best">
                        <div class="row">

                            <div class="col-md-6 col-md-push-6">
                                <div class="img">
                                    <img src="images/Cars/BMWI8.jpg" alt="">
                                </div>
                            </div>

                            <div class="col-md-6 col-md-pull-6 ">
                                <div class="text">
                                    <h2 class="heading">Um dos Melhores</h2>
                                    <p>O BMW i8 Roadster revela-se como futurista nos mais ínfimos detalhes. As linhas modernas transmitem um conceito que dificilmente poderia ser mais dinâmico. O componente mais apelativo: as imponentes portas de baixo peso em fibra de carbono com abertura ascendente que podem ser facilmente abertas.</p>
                                    <ul>
                                        <li><img src="images/icons/snow-icon.png" alt="icon">Ar-condicionado digital bi-zone</li>
                                        <li><img src="images/icons/price-icon.png" alt="icon">2.000R$/diaria</li>
                                        <li><img src="images/icons/engine-icon.png" alt="icon">Motor elétrico 1.5 (362 cv)</li>
                                        <li><img src="images/icons/bag-icon.png" alt="icon">Abertura da bagageira pelo interior     </li>
                                        <li><img src="images/icons/controlP-icon.png" alt="icon">Computador de bordo</li>
                                        <li><img src="images/icons/five-icon.png" alt="icon">5 Airbags inclusos</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </section>
            <!-- END / OUR BEST -->

            
            <!-- HOME NEW -->
            <section class="section-event-news bg-white">
                <div class="container">

                    <div class="event-news">
                        <div class="row">

                            <!-- EVENT -->
                            <div class="col-md-6">
                                <div class="event">
                                    <h2 class="heading">EVENT &amp; DEAL</h2>
                                    <span class="box-border w350"></span>

                                    <div class="row">

                                        <!-- ITEM -->
                                        <div class="col-xs-12 col-sm-12">
                                            <div class="event-slide owl-single">

                                                <div class="event-item">
                                                    <div class="img hover-zoom">
                                                        <a href="#">
                                                            <img src="images/home/eventdeal/img-1.jpg" alt="">
                                                        </a>
                                                    </div>
                                                </div>

                                                <div class="event-item">
                                                    <div class="img hover-zoom">
                                                        <a href="#">
                                                            <img src="images/home/eventdeal/img-1.jpg" alt="">
                                                        </a>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-6">
                                            <div class="event-item">
                                                <div class="img hover-zoom">
                                                    <a href="#">
                                                        <img src="images/home/eventdeal/img-2.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="text">
                                                    <div class="text-cn">
                                                        <h2>SAVE THE DATE</h2>
                                                        <span>BECCA &amp; ROBERT</span>
                                                        <a href="#" class="awe-btn awe-btn-12">VIEW MORE</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-xs-6">
                                            <div class="event-item">
                                                <div class="img hover-zoom">
                                                    <a href="#">
                                                        <img src="images/home/eventdeal/img-2.jpg" alt="">
                                                    </a>
                                                </div>
                                                <div class="text">
                                                    <div class="text-cn">
                                                        <h2>GO ON BEACH. lotus </h2>
                                                        <a href="#" class="awe-btn awe-btn-12">VIEW MORE</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                    </div>
                                </div>
                            </div>
                            <!-- END / EVENT -->

                            <!-- NEWS -->
                            <div class="col-md-6">
                                <div class="news">
                                    <h2 class="heading">NEWS</h2>
                                    <span class="box-border w350 space-5"></span>

                                    <div class="row">

                                        <!-- ITEM -->
                                        <div class="col-md-12">
                                            <div class="news-item">
                                                <div class="img">
                                                    <a href="noticia.html"><img src="images/Cars/destaque-carros-2018ve.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <span class="date">10/04</span>
                                                    <h2><a href="#">Carros 2018: veja 80 lançamentos esperados</a></h2>
                                                    <a href="" class="read-more">[ Read More ]</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-md-12">
                                            <div class="news-item">
                                                <div class="img">
                                                    <a href="#"><img src="images/home/lotusnews/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <span class="date">8 / March</span>
                                                    <h2><a href="#">WEDDING DAY JONATHA &amp; JESSICA</a></h2>
                                                    <a href="" class="read-more">[ Read More ]</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                        <!-- ITEM -->
                                        <div class="col-md-12">
                                            <div class="news-item">
                                                <div class="img">
                                                    <a href="#"><img src="images/home/lotusnews/img-1.jpg" alt=""></a>
                                                </div>
                                                <div class="text">
                                                    <span class="date">16 / February</span>
                                                    <h2><a href="#">THE BEST WEDDING GUIDE 2015</a></h2>
                                                    <a href="" class="read-more">[ Read More ]</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM -->

                                    </div>

                                    <a href="#" class="awe-btn awe-btn-default">VIEW MORE</a>

                                </div>

                            </div>
                            <!-- END / NEWS -->

                        </div>

                        <div class="hr"></div>

                    </div>

                </div>
            </section>
            <!-- END / HOME NEW -->

            <!-- GALLERY -->
            <section class="section-gallery bg-white">

                <div class="gallery  no-padding">
                    <h2 class="heading text-center">GALLERY</h2>

                    <!-- FILTER -->
                    <div class="gallery-cat text-center">
                        <ul class="list-inline">
                            <li class="active"><a href="#" data-filter="*">All</a></li>
                            <li><a href="#" data-filter=".ground">HOTEL &amp; GROUND</a></li>
                            <li><a href="#" data-filter=".suite">ROOM/SUITE </a></li>
                            <li><a href="#" data-filter=".bathroom">BATHROOM</a></li>
                            <li><a href="#" data-filter=".dining">DINING</a></li>
                        </ul>
                    </div>
                    <!-- END / FILTER -->

                    <!-- GALLERY CONTENT -->
                    <div class="gallery-content hover-img">
                        <div class="row">
                            <div class="gallery-isotope col-6 pd-0">

                                <!-- ITEM SIZE -->
                                <div class="item-size"></div>
                                <!-- END / ITEM SIZE -->
                                <!-- ITEM -->

                                <div class="item-isotope suite dining ">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope  ground bathroom suite">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground bathroom dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope suite dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope  ground suite dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground bathroom dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground suite dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope bathroom suite dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope bathroom suite dining">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground bathroom">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground bathroom suite ">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                                <!-- ITEM -->
                                <div class="item-isotope ground bathroom">
                                    <div class="gallery_item">
                                        <a  href="images/gallery/popup/img-1.jpg" class="gallery-popup mfp-image" title="Luxury Room view all">
                                            <img src="images/gallery/img-1.jpg" alt="">
                                        </a>
                                    </div>
                                </div>
                                <!-- END / ITEM -->

                            </div>
                        </div>

                        <div class="our-gallery text-center">
                            <a href="#" class="awe-btn awe-btn-default">BROWSE OUR GALLERY</a>
                        </div>

                    </div>
                    <!-- GALLERY CONTENT -->

                </div>
            </section>
            <!-- END / GALLERY -->

            <!-- FOOTER -->
            <footer id="footer">

                <!-- FOOTER TOP -->
                <div class="footer_top">
                    <div class="container">
                        <div class="row">

                            <!-- WIDGET MAILCHIMP -->
                            <div class="col-lg-9">
                                <div class="mailchimp">
                                    <h4>News &amp; Offers</h4>
                                    <div class="mailchimp-form">
                                        <form action="#" method="POST">
                                            <input type="text" name="email" placeholder="Your email address" class="input-text">
                                            <button class="awe-btn">SIGN UP</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- END / WIDGET MAILCHIMP -->



                        </div>
                    </div>
                </div>
                <!-- END / FOOTER TOP -->

                <!-- FOOTER CENTER -->
                <div class="footer_center">
                    <div class="container">
                        <div class="row">

                            <div class="col-xs-12 col-lg-5">
                                <div class="widget widget_logo">
                                    <div class="widget-logo">
                                        <div class="img">
                                            <a href="#"><img src="images/logo-header.png" alt=""></a>
                                        </div>
                                        <div class="text">
                                            <p><i class="lotus-icon-location"></i>  Av. Eng. Eusébio Stevaux, 823</p>
                                            <p><i class="lotus-icon-phone"></i>(11)5682-7300</p>
                                            <p><i class="fa fa-envelope-o"></i> <a href="mailto:contato@Cantv.com">contato@Cantv.com</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xs-4 col-lg-2">
                                <div class="widget">
                                    <h4 class="widget-title">Page site</h4>
                                    <ul>
                                        <li><a href="#">Guest Book</a></li>
                                        <li><a href="#">Gallery</a></li>
                                        <li><a href="#">Restaurant</a></li>
                                        <li><a href="#">Event</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-xs-4 col-lg-2">
                                <div class="widget">
                                    <h4 class="widget-title">ABOUT</h4>
                                    <ul>
                                        <li><a href="">About</a></li>
                                        <li><a href="">Blog</a></li>
                                        <li><a href="">Contact Us</a></li>
                                        <li><a href="">Comming Soon</a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-xs-4 col-lg-3">
                                <div class="widget widget_tripadvisor">
                                    <h4 class="widget-title">Parceiros</h4>
                                    <div class="tripadvisor">
                                        <p>Confira nossos parceiros</p>
                                        <img src="images/4228-32x32x32.png" alt="">
                                        <img src="images/4226-32x32x32.png" alt="">
                                        <img src="images/5878-32x32x32.png" alt="">
                                        <span class="tripadvisor-circle">
                                            <i></i>
                                            <i></i>
                                            <i></i>
                                            <i></i>
                                            <i class="part"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
                <!-- END / FOOTER CENTER -->

                <!-- FOOTER BOTTOM -->
                <div class="footer_bottom">
                    <div class="container">
                        <p>&copy;2018 Canvt todos direitos reservados   .</p>
                    </div>
                </div>
                <!-- END / FOOTER BOTTOM -->

            </footer>
            <!-- END / FOOTER -->

        </div>
        <!-- END / PAGE WRAP -->


        <!-- LOAD JQUERY -->
        <script type="text/javascript" src="js/lib/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery-ui.min.js"></script>
        <script type="text/javascript" src="js/lib/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/lib/bootstrap-select.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;signed_in=true"></script>
        <script type="text/javascript" src="js/lib/isotope.pkgd.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="js/lib/owl.carousel.js"></script>
        <script type="text/javascript" src="js/lib/jquery.appear.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery.countTo.js"></script>
        <script type="text/javascript" src="js/lib/jquery.countdown.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery.parallax-1.1.3.js"></script>
        <script type="text/javascript" src="js/lib/jquery.magnific-popup.min.js"></script>
        <script type="text/javascript" src="js/lib/SmoothScroll.js"></script>
        <!-- validate -->
        <script type="text/javascript" src="js/lib/jquery.form.min.js"></script>
        <script type="text/javascript" src="js/lib/jquery.validate.min.js"></script>
        <!-- Custom jQuery -->
        <script type="text/javascript" src="js/scripts.js"></script>
    </body>
</html>