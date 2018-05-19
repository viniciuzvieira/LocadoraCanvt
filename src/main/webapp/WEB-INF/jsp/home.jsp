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
            <%@include file="../jspf/header.jspf"%>

            <section class="section-slider">
                <h1 class="element-invisible">Slider</h1>
                <div id="slider-revolution">
                    <ul>
                        <li data-transition="fade">
                            <img class="img-responsive" src="images/slider/img-1.jpg" data-bgposition="left center" data-duration="14000" data-bgpositionend="right center" alt="">
                                <div class="tp-caption sft fadeout" data-x="center" data-y="195" data-speed="700" data-start="1300" data-easing="easeOutBack">
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dia
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
                                                        <span class="amout">R$320</span>/dia
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
                                                        <span class="amout">R$320</span>/dia
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dias
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
                                                        <span class="amout">R$320</span>/dia
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
                                                        <span class="amout">R$320</span>/dia
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
                                                        <span class="amout">R$320</span>/dia
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
                                    <a href="sobre"><img src="images/logo-header_1.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="text">
                                    <h2 class="heading">Sobre Nós</h2>
                                    <span class="box-border"></span>
                                    <p> CANVT é a locadora de automóveis , rápidos e caros.
                                        Temos como objetivo te proporcinar a melhor experiência possível.</p>
                                    <a href="sobre" class="awe-btn awe-btn-default">Veja mais</a>
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

            <!-- FOOTER -->
            <%@include file="../jspf/footer.jspf" %>>
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