<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Cadastrar Cliente</title>

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
                            <h2>FAÇA JÁ O SEU CADASTRO</h2>
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



                                <div class="reservation-billing-detail">
                                    <form action="./CadastroCliente" method="post">

                                        <label for="Name">Username:<sup>*</sup></label>
                                        <input type="text" name="Username"class="input-text" placeholder="Ex: Gabriela627">

                                        <label for="nomecompleto">Nome Completo:<sup>*</sup></label>
                                        <input type="text" name="nomecompleto"class="input-text">

                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label for="cpf">CPF:<sup>*</sup></label>
                                                <input type="text" class="input-text" id="cpf" placeholder="CPF" name="cpf" maxlength="11">
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="datanasc">Data de nascimento:<sup>*</sup></label>
                                                <input  type="text" class="input-text" id="datanasc" placeholder="DD/MM/AAAA" name="datanasc" maxlength="11" onkeypress="mascara(this, '##/##/####')">
                                            </div>

                                        </div>

                                        <div class="row">
                                            <div class="col-sm-3">
                                                <label for="cep">CEP:<sup>*</sup></label>
                                                <input type="text" class="input-text" id="cep" placeholder="CEP" name="cep">
                                            </div>
                                            <div class="col-sm-3">
                                                <label for="cidade">Cidade:<sup>*</sup></label>
                                                <input type="text" class="input-text" id="cidade" placeholder="CEP" name="cidade">
                                            </div>
                                            <div class="col-sm-3">
                                                <label for="bairro">Bairro:<sup>*</sup></label>
                                                <input  type="text" class="input-text" name="bairro">
                                            </div>
                                            <div class="col-sm-3 ">
                                                <label for="UF">UF<sup>*</sup></label>
                                                <select id="UF" class="awe-select"  name="UF">
                                                    <option selected value="NI">UF</option>
                                                    <option value="AC">AC</option>
                                                    <option value="AL">AL</option>
                                                    <option value="AM">AM</option>
                                                    <option value="AP">AP</option>
                                                    <option value="BA">BA</option>
                                                    <option value="CE">CE</option>
                                                    <option value="DF">DF</option>
                                                    <option value="ES">ES</option>
                                                    <option value="GO">GO</option>
                                                    <option value="MA">MA</option>
                                                    <option value="MG">MG</option>
                                                    <option value="MS">MS</option>
                                                    <option value="MT">MT</option>
                                                    <option value="PA">PA</option>
                                                    <option value="PB">PB</option>
                                                    <option value="PE">PE</option>
                                                    <option value="PI">PI</option>
                                                    <option value="PR">PR</option>
                                                    <option value="RJ">RJ</option>
                                                    <option value="RN">RN</option>
                                                    <option value="RS">RS</option>
                                                    <option value="RO">RO</option>
                                                    <option value="RR">RR</option>
                                                    <option value="SC">SC</option>
                                                    <option value="SE">SE</option>
                                                    <option value="SP">SP</option>
                                                    <option value="TO">TO</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label for="Complemento">Complemento<sup>*</sup></label>
                                                <input type="text" id="Complemento" name="complemento"class="input-text">
                                            </div>
                                            <div class="col-sm-4">
                                                <label for="Endereco:">Endereco:<sup>*</sup></label>
                                                <input type="text" id="endereco" name="endereco"class="input-text">
                                            </div>

                                            <div class="col-sm-4">
                                                <label for="numerocasa">N°:<sup>*</sup></label>
                                                <input type="text" name="numerocasa"id="numerocasa"class="input-text">
                                            </div>
                                        </div>

                                        <br/>
                                        <span style="font-weight:bold;" for="rad" >Sexo:<sup style="color:red;">*</sup></span>
                                        <input type="radio" name="sexo" id="radioMas" value="Masculino">Masculino
                                        <input type="radio" name="sexo" id="radioFem" value="Feminino">Feminino

                                        <label for="numeroCNH">Número da CNH:<sup>*</sup></label>
                                        <input type="text" class="input-text" id="NumeroCNH" name="cnh" placeholder="Número da CNH">

                                        <div class="row">
                                            <div class="col-sm-4">
                                                <label for="telefone">Telefone:</label>
                                                <input type="text" name="tel"class="input-text" placeholder="Ex:(11)51231234">
                                            </div>
                                            <div class="col-sm-4">
                                                <label for="celular">Celular:<sup>*</sup></label>
                                                <input type="text" class="input-text" placeholder="Ex:(11)951231234">
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-6">
                                                <label for="email">E-mail:<sup>*</sup></label>
                                                <input type="email" class="input-text" id="email" placeholder="Digite o seu e-mail" maxlength="100" name="email">
                                            </div>
                                            <div class="col-sm-6">
                                                <label for="senha">Senha:<sup>*</sup></label>
                                                <input type="password" class="input-text" id="senha" placeholder="Senha" name="senha">
                                            </div>
                                        </div>

                                        <button class="awe-btn awe-btn-13">CADASTRAR</button>
                                    </form>      
                                </div>



                            </div>
                            <!-- END / CONTENT -->

                        </div>
                    </div>
                </div>

            </section>
            <!-- END / RESERVATION -->

            <!-- FOOTER -->
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
        <script type="text/javascript" src="js/lib/SmoothScroll.js"></script>
        <script type="text/javascript" src="js/scripts.js"></script>
    </body>
</html>