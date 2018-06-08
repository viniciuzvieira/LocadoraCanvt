<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Confirmar locação</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="format-detection" content="telephone=no">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <link rel="shortcut icon" href="images/favicon.png"/>

        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Hind:400,300,500,600%7cMontserrat:400,700' rel='stylesheet' type='text/css'>

        <!-- CSS LIBRARY -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
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
            <section class="section-sub-banner " style="background-image: url(images/Cars/default.png)">
                <div class="awe-overlay"></div>
                <div class="sub-banner">
                    <div class="container">
                        <div class="text text-center">
                            <h2>Confirmar locação</h2>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END / SUB BANNER -->
        </div>

        <section class="section-room bg-white">
            <div class="container">

                <div class="room-wrap-1">
                    <div class="row">            
                        <br/>   
                        <div class="shortcode-tab-price">
                            <div class="tab-price">
                                <div id="dvData">
                                    <c:if test="${not empty erro}">
                                        <h2><c:out value="${erro}" /></h2>
                                    </c:if>
                                    <table>
                                        <thead>

                                            <tr>
                                                <th>Modelo</th>
                                                <th>Marca</th>
                                                <th>Data da Retirada</th>
                                                <th>Data de Entrega</th>
                                                <th>Valor Parcial R$</th>
                                                <th></th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            <c:forEach items="${carrinho}" var="item">

                                                <tr>
                                                    <td>${item.auto.modelo}</td>
                                                    <td>${item.auto.marca}</td>
                                                    <td>${item.dataRetirada}</td>
                                                    <td>${item.dataDeDevolucao}</td>
                                                    <td>${item.valorParcial} </td>
                                                    <td>
                                                        <form action="./Carrinho" method="post">

                                                            <input type="hidden" name="retirado" value="${item.auto.renavam}">
                                                            <button name="remove" value="true" type="submit"><span class="alert-warning">X</span></button>
                                                        </form>
                                                    </td> 
                                                </tr>
                                            </c:forEach>

                                        <td>Total:</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>                               
                                        <td></td>
                                        </tbody>
                                    </table>
                                    <br/>
                                    <form action="./Carrinho" method="post">
                                        <table>

                                            <tr>

                                                <td class="date-select">Forma de Pagamento</td>     
                                                <td class="date-select">

                                                    <select class="awe-select" name="pagamento" required="required">
                                                        <option value="boleto">Boleto</option>
                                                        <option value="CC">Cartão de Crédito</option>
                                                    </select>

                                                </td>
                                            </tr>

                                        </table>
                                        <br/>

                                        <input name="remove" value="false" type="hidden">
                                        <!--                                        <button class="awe-btn awe-btn-13" type="submit" style="font-size:11pt; padding:11px; width:auto; height:auto;">VOLTAR</button>-->
                                        <button class="awe-btn awe-btn-13" style="font-size:11pt; padding:11px; width:auto; height:auto; float: right">CONFIRMAR</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- RELATORIO -->
        <%@include file="../jspf/footer.jspf" %>
        <!-- FOOTER -->

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
        <script type="text/javascript" src="js/exportExcel.js"></script>
    </body>
</html>
