

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR" ng-app="carros" ng-controller="principal">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Reservation Step 1</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="shortcut icon" href="images/favicon.png"/>

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
            <!-- END / HEADER -->

            <!-- SUB BANNER -->
            <section class="section-sub-banner bg-9">

                <div class="awe-overlay"></div>

                <div class="sub-banner">
                    <div class="container">
                        <div class="text text-center">
                            <h2>ESCOLHA O SEU SONHO</h2>
                        </div>
                    </div>

                </div>

            </section>
            <!-- END / SUB BANNER -->

            <!-- ACCOMD ODATIONS -->
            <section class="section-accomd awe-parallax">
                <div class="container">
                    <div class="accomd-modations">
                        <div class="row">
                            <div class="col-md-12">
                                <form action= "./ConsultaCliete" method="post">
                                    <br/>
                                    <input type="text" class="input-text" placeholder="Buscar">
                                    <button class="awe-btn awe-btn-13" type="submit" style="font-size:11pt; padding:11px; width:auto; height:auto;">Buscar</button>



                                    <div style="float: right">
                                        <label>Categoria:</label>
                                        <select>
                                            <option>Clássicos</option>
                                            <option>Esportivos</option>
                                            <option>Luxuosos</option>
                                            <option>Off Road</option>
                                            <option>Super Esportivos</option>
                                        </select>
                                        <br/>
                                        <label>Preço:</label>
                                        <select>
                                            <option>Menor preço</option>
                                            <option>Maior preço</option>
                                        </select>
                                    </div>
                                </form>

                                <div class="accomd-modations-header">
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
            <!-- END / RESERVATION -->

            <%@include file="../jspf/footer.jspf" %>
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
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.0/angular-route.min.js"></script>
        <script type="text/javascript" src="js/lib/SmoothScroll.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
        <script type="text/javascript" src="js/scriptTPDS.js"></script>
    </body>
</html>