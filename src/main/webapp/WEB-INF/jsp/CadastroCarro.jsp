<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Cadastro do Carro</title>

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
            <section class="section-sub-banner bg-9" style="background-image: url(images/Cars/default.png)">

                <div class="awe-overlay"></div>

                <div class="sub-banner">
                    <div class="container">
                        <div class="text text-center">
                            <h2>CADASTRO DO CARRO</h2>
                        </div>
                    </div>

                </div>

            </section>
            <!-- END / SUB BANNER -->

            <!-- RESERVATION -->
            <section class="section-reservation-page bg-white">

                <div class="container">
                    <div class="reservation-page">

                        <div class="row">


                            <div class="col-md-10 col-lg-3">


                                <div class="reservation-date bg-gray">

                                </div>

                            </div>


                            <!-- CONTENT -->
                            <div class="col-md col-lg-6">

                                <form action="./CadastroCarro" method="post">

                                    <div class="reservation-billing-detail">
                                        <label>Categoria<sup>*</sup></label>
                                        <select class="awe-select"name="categoria">
                                            <option  value="Clássicos">Clássicos</option>
                                            <option  value="Esportivos">Esportivos</option>
                                            <option  value="Luxuosos">Luxuosos</option>
                                            <option  value="Off Road">Off Road</option>
                                            <option  value="Super Esportivos">Super Esportivos</option>
                                        </select>

                                        <div class="row">
                                            <div class="col-sm-4 ">
                                                <label for="modelo">Modelo</label>
                                                <input type="text" class="form-control" id="modeloAuto" placeholder="Digite o modelo do carro" name="model">
                                            </div>
                                            <div class="col-sm-4">
                                                <label for="marcaAuto" >Marca</label>
                                                <input type="text "class="form-control" id="marcaAuto" placeholder="Digite a marca do automóvel" name="marca">
                                            </div>
                                            <div class="col-sm-4">
                                                <label>Combustível:<sup>*</sup></label>
                                                <select id="comb" class="form-control " name="combustivel">
                                                    <option value="Flex">Flex</option>
                                                    <option value="Gasolina">Gasolina</option>
                                                    <option value="Etanol">Etanol</option>
                                                    <option value="Diesel">Diesel</option>
                                                    <option value="Gás">Gás</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-6">
                                                <label for="Portas" class=" control-label ">Portas</label>
                                                <input type="text " class="form-control" id="Portas" placeholder="numero de portas " name="portas">
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="Kilometragem" class=" control-label ">Kilometragem</label>
                                                <input type="text " class="form-control" id="Portas" placeholder="KM " name="KMs">
                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-4">
                                                <label for="ano" >Ano</label>
                                                <input type="text " class="form-control" id="anoAuto" placeholder="Digite o ano do automóvel" name="anoAuto">
                                            </div>   

                                            <div class="form-group col-md-4">
                                                <label for="renavam" class=" control-label ">Renavam</label>
                                                <input type="text " class="form-control" id="renavam" placeholder="Digite o renavam do automóvel" name="renavam">

                                            </div>
                                            <div class="form-group col-md-4">
                                                <label for="cor" class=" control-label ">Cor</label>
                                                <input type="text " class="form-control" id="cor" placeholder="Digite a cor " name="cor">

                                            </div>

                                        </div>
                                        <div class="row">
                                            <div class="form-group col-md-4">
                                                <label for="numeroChassi" class=" control-label ">Numero do Chassi</label>
                                                <input type="text" class="form-control" id="numeroChassi" placeholder="Digite o número do chassi" name="nchassi">
                                            </div>
                                            <div class="form-group col-sm-4">
                                                <label for="placa" class="control-label">Placa</label>
                                                <input type="text" class="form-control" id="placaAuto" placeholder="Digite a placa do automóvel" name="placa">
                                            </div>
                                            <div class="form-group col-sm-4">
                                                <label>Preço diária R$:<sup>*</sup></label>
                                                <input type="text" class="form-control" id="val" placeholder=" " name="val">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="form-group col md-12 col-lg-6 col-sm-4">
                                                <label for="file">Escolha a imagem do Veiculo</label>
                                                <input type="file" id="file" name="file" multiple>
                                            </div>

                                        </div>
                                        <button class="awe-btn awe-btn-13" type="submit">CADASTRAR</button>
                                    </div>
                                </form>


                            </div>
                            <!-- END / CONTENT -->

                        </div>
                    </div>
                </div>

            </section>
            <!-- END / RESERVATION -->

            <!-- FOOTER -->
            <%@include file="../jspf/footer.jspf"%>
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
        <script type="text/javascript" src="js/scripts.js"></script>
    </body>
</html>