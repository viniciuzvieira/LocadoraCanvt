<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Carro Detalhe</title>

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

        <div id="page-wrap">


            <%@include file="../jspf/header.jspf"%> 

            <section class="section-sub-banner"  style="background-image: url(images/Cars/default.png)"/>
            <div class="awe-overlay"></div>
            <div class="sub-banner">
                <div class="container">
                    <div class="text text-center">
                        <h2></h2>
                        <p></p>
                    </div>
                </div>

            </div>

        </section>
        <!-- END / SUB BANNER -->

        <!-- ROOM DETAIL -->
        <section class="section-room-detail bg-white">
            <div class="container">

                <!-- DETAIL -->
                <div class="room-detail">
                    <div class="row">
                        <div class="col-lg-9">

                            <!-- LAGER IMGAE -->
                            <div class="room-detail_img">
                                <div class="room_img-item">
                                    <img src="images/Cars/ferrari-carro.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                                <div class="room_img-item">
                                    <img src="images/room/detail/lager/img-1.jpg" alt="">    
                                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry</h6>
                                </div>
                            </div>
                            <!-- END / LAGER IMGAE -->

                            <!-- THUMBNAIL IMAGE -->
                            <div class="room-detail_thumbs">
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                                <a href="#"><img src="images/room/detail/img-2.jpg" alt=""></a>
                            </div>
                            <!-- END / THUMBNAIL IMAGE -->

                        </div>

                        <div class="col-lg-3">

                            <!-- FORM BOOK -->
                            <div class="room-detail_book">

                                <div class="room-detail_total">
                                    <img src="images/icon-logo.png" alt="" class="icon-logo">

                                    <h6>${sessionScope.auto.modelo}</h6>
                                    <!--<h6>${sessionScope.auto.renavam}</h6>-->
                                    <p class="price">
                                        <span class="amout">${sessionScope.auto.valorDeLocacao}</span>  /dia
                                    </p>
                                </div>
                                <form action="./Carrinho" method="post">
                                    <div class="room-detail_form">
                                        <label></label>
                                        <input type="text" class="awe-calendar from" name="dataRetirada" placeholder="Retirada  ">
                                        <label></label>
                                        <input type="text" class="awe-calendar to"name="dataEntrega" placeholder="Entrega ">
                                        <input name="auto" type="hidden"  value="${sessionScope.auto.renavam}">
                                        <button class="awe-btn awe-btn-13 " name="botao" value="aluguel"type="submit">Alugar</button>
                                    </div>
                                </form>
                            </div>
                            <!-- END / FORM BOOK -->

                        </div>
                    </div>
                </div>
                <!-- END / DETAIL -->

                <!-- TAB -->
                <div class="room-detail_tab">

                    <div class="row">
                        <div class="col-md-3">
                            <ul class="room-detail_tab-header">
                                <li><a href="#overview" data-toggle="tab">Descrição</a></li>

                                <li><a href="#package" data-toggle="tab">Pacotes</a></li>

                                <li><a href="#calendar" data-toggle="tab">Calendario</a></li>
                            </ul>
                        </div>

                        <div class="col-md-9">
                            <div class="room-detail_tab-content tab-content">

                                <!-- OVERVIEW -->
                                <div class="tab-pane fade" id="overview">

                                    <div class="room-detail_overview">
                                        <h5 class='text-uppercase
                                            '>de Finibus Bonorum et Malorum", written by Cicero in 45 BC</h5>
                                        <p>Located in the heart of Aspen with a unique blend of contemporary luxury and historic heritage, deluxe accommodations, superb amenities, genuine hospitality and dedicated service for an elevated experience in the Rocky Mountains.</p>

                                        <div class="row">
                                            <div class="col-xs-6 col-md-4">
                                                <h6>SPECIAL ROOM</h6>
                                                <ul>
                                                    <li>Max: 4 Person(s)</li>
                                                    <li>Size: 35 m2 / 376 ft2</li>
                                                    <li>View: Ocen</li>
                                                    <li>Bed: King-size or twin beds</li>
                                                </ul>
                                            </div>
                                            <div class="col-xs-6 col-md-4">
                                                <h6>SERVICE ROOM</h6>
                                                <ul>
                                                    <li>Oversized work desk</li>
                                                    <li>Hairdryer</li>
                                                    <li>Iron/ironing board upon request</li>
                                                </ul>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <!-- END / OVERVIEW -->

                                <!-- AMENITIES -->

                                <!-- END / AMENITIES -->

                                <!-- PACKAGE -->
                                <div class="tab-pane fade" id="package">

                                    <div class="room-detail_package">

                                        <!-- ITEM package -->
                                        <div class="room-package_item">

                                            <div class="text">
                                                <h4><a href="#">package standar</a></h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>

                                                <div class="room-package_price">
                                                    <p class="price">
                                                        <span class="amout">$260</span> / Package
                                                    </p>
                                                    <a href="#" class="awe-btn awe-btn-default">Book package</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM package -->

                                        <!-- ITEM package -->
                                        <div class="room-package_item">

                                            <div class="text">
                                                <h4><a href="#">package standar</a></h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>

                                                <div class="room-package_price">
                                                    <p class="price">
                                                        <span class="amout">$260</span> / Package
                                                    </p>
                                                    <a href="#" class="awe-btn awe-btn-default">Book package</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM package -->

                                        <!-- ITEM package -->
                                        <div class="room-package_item">

                                            <div class="text">
                                                <h4><a href="#">package standar</a></h4>
                                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>

                                                <div class="room-package_price">
                                                    <p class="price">
                                                        <span class="amout">$260</span> / Package
                                                    </p>
                                                    <a href="#" class="awe-btn awe-btn-default">Book package</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- END / ITEM package -->
                                    </div>

                                </div>
                                <!-- END / PACKAGE -->

                                <!-- RATES -->

                                <!-- END / RATES -->

                                <!-- CALENDAR -->
                                <div class="tab-pane fade" id="calendar">

                                    <div class="room-detail_calendar-wrap row">

                                        <div class="col-sm-6">
                                            <!-- CALENDAR ITEM -->
                                            <div class="calendar_custom">

                                                <div class="calendar_title">
                                                    <span class="calendar_month">JUNE</span>
                                                    <span class="calendar_year">2015</span>

                                                    <a href="#" class="calendar_prev calendar_corner"><i class="lotus-icon-left-arrow"></i></a>
                                                </div>

                                                <table class="calendar_tabel">

                                                    <thead>
                                                        <tr>
                                                            <th>Su</th>
                                                            <th>Mo</th>
                                                            <th>Tu</th>
                                                            <th>We</th>
                                                            <th>Th</th>
                                                            <th>Fr</th>
                                                            <th>Sa</th>
                                                        </tr>
                                                    </thead>

                                                    <tr>
                                                        <td></td>
                                                        <td class="apb-calendar_current-date">
                                                            <a href="#"><small>1</small></a>
                                                        </td>
                                                        <td><a href="#"><small>2</small></a></td>
                                                        <td><a href="#"><small>3</small></a></td>
                                                        <td><a href="#"><small>4</small></a></td>
                                                        <td><a href="#"><small>5</small></a></td>
                                                        <td><a href="#"><small>6</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>7</small></a></td>
                                                        <td><a href="#"><small>8</small></a></td>
                                                        <td><a href="#"><small>9</small></a></td>
                                                        <td><a href="#"><small>10</small></a></td>
                                                        <td class="apb-calendar_current-select"><a href="#"><small>11</small></a></td>
                                                        <td class="apb-calendar_current-select"><a href="#"><small>12</small></a></td>
                                                        <td><a href="#"><small>13</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>14</small></a></td>
                                                        <td><a href="#"><small>15</small></a></td>
                                                        <td class="not-available"><a href="#"><small>16</small></a></td>
                                                        <td class="not-available"><a href="#"><small>17</small></a></td>
                                                        <td><a href="#"><small>18</small></a></td>
                                                        <td><a href="#"><small>19</small></a></td>
                                                        <td><a href="#"><small>20</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>21</small></a></td>
                                                        <td><a href="#"><small>22</small></a></td>
                                                        <td><a href="#"><small>23</small></a></td>
                                                        <td><a href="#"><small>24</small></a></td>
                                                        <td><a href="#"><small>25</small></a></td>
                                                        <td><a href="#"><small>26</small></a></td>
                                                        <td><a href="#"><small>27</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>28</small></a></td>
                                                        <td><a href="#"><small>29</small></a></td>
                                                        <td><a href="#"><small>30</small></a></td>
                                                        <td><a href="#"><small>31</small></a></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                </table>

                                            </div>
                                            <!-- END CALENDAR ITEM -->
                                        </div>

                                        <div class="col-sm-6">

                                            <!-- CALENDAR ITEM -->
                                            <div class="calendar_custom">

                                                <div class="calendar_title">
                                                    <span class="calendar_month">JUNE</span>
                                                    <span class="calendar_year">2015</span>

                                                    <a href="#" class="calendar_next calendar_corner"><i class="lotus-icon-right-arrow"></i></a>
                                                </div>

                                                <table class="calendar_tabel">

                                                    <thead>
                                                        <tr>
                                                            <th>Su</th>
                                                            <th>Mo</th>
                                                            <th>Tu</th>
                                                            <th>We</th>
                                                            <th>Th</th>
                                                            <th>Fr</th>
                                                            <th>Sa</th>
                                                        </tr>
                                                    </thead>

                                                    <tr>
                                                        <td></td>
                                                        <td class="apb-calendar_current-date">
                                                            <a href="#"><small>1</small></a>
                                                        </td>
                                                        <td><a href="#"><small>2</small></a></td>
                                                        <td><a href="#"><small>3</small></a></td>
                                                        <td><a href="#"><small>4</small></a></td>
                                                        <td><a href="#"><small>5</small></a></td>
                                                        <td><a href="#"><small>6</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>7</small></a></td>
                                                        <td><a href="#"><small>8</small></a></td>
                                                        <td><a href="#"><small>9</small></a></td>
                                                        <td><a href="#"><small>10</small></a></td>
                                                        <td class="apb-calendar_current-select"><a href="#"><small>11</small></a></td>
                                                        <td class="apb-calendar_current-select"><a href="#"><small>12</small></a></td>
                                                        <td><a href="#"><small>13</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>14</small></a></td>
                                                        <td><a href="#"><small>15</small></a></td>
                                                        <td class="not-available"><a href="#"><small>16</small></a></td>
                                                        <td class="not-available"><a href="#"><small>17</small></a></td>
                                                        <td><a href="#"><small>18</small></a></td>
                                                        <td><a href="#"><small>19</small></a></td>
                                                        <td><a href="#"><small>20</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>21</small></a></td>
                                                        <td><a href="#"><small>22</small></a></td>
                                                        <td><a href="#"><small>23</small></a></td>
                                                        <td><a href="#"><small>24</small></a></td>
                                                        <td><a href="#"><small>25</small></a></td>
                                                        <td><a href="#"><small>26</small></a></td>
                                                        <td><a href="#"><small>27</small></a></td>
                                                    </tr>

                                                    <tr>
                                                        <td><a href="#"><small>28</small></a></td>
                                                        <td><a href="#"><small>29</small></a></td>
                                                        <td><a href="#"><small>30</small></a></td>
                                                        <td><a href="#"><small>31</small></a></td>
                                                        <td></td>
                                                        <td></td>
                                                        <td></td>
                                                    </tr>

                                                </table>

                                            </div>
                                            <!-- END CALENDAR ITEM -->
                                        </div>

                                        <div class="calendar_status text-center col-sm-12">
                                            <span>Available</span>
                                            <span class="not-available">Not Available</span>
                                        </div>
                                    </div>

                                </div>
                                <!-- END / CALENDAR -->

                            </div>
                        </div>

                    </div>

                </div>
                <!-- END / TAB -->

                <!-- COMPARE ACCOMMODATION -->
                <div class="room-detail_compare">
                    <h2 class="room-compare_title">COMPARE COM OUTROS</h2>

                    <div class="room-compare_content">

                        <div class="row">
                            <!-- ITEM -->
                            <c:forEach items="${ultimos}" var="itens">
                                <div class="col-sm-6 col-md-4 col-lg-3">
                                    <div class="room-compare_item">
                                        <div class="img">
                                            <a href="#"><img src="images/Cars/BMWI8.jpg" alt=""></a>
                                        </div>  

                                        <div class="text">
                                            <h2><a href=""> </a></h2>

                                            <ul>
                                                <li><a >MODELO:</a> ${itens.modelo}</li>
                                                <li><a >MARCA:</a> ${itens.valorDeLocacao}</li>
                                                <li ><a >VALOR:</a> ${itens.valorDeLocacao}<span >/DIAS</span> </li>
                                            </ul>

                                            <a href="#" class="awe-btn awe-btn-default">DETALHES</a>

                                        </div>

                                    </div>
                                </div>
                            </c:forEach>
                            <!-- END / ITEM -->


                        </div>

                    </div>
                </div>
                <!-- END / COMPARE ACCOMMODATION -->

            </div>
        </section>
        <!-- END / SHOP DETAIL -->

        <%@include file="../jspf/footer.jspf"%>

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
    <script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>