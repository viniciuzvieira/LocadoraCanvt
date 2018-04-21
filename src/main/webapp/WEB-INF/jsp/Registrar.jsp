<%-- 
Document   : Registrar
Created on : 13/04/2018, 20:06:11
Author     : adriano.rlourenco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <!-- TITLE -->
        <title>Registrar</title>

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

            <!-- ACCOUNT -->
            <section class="section-account parallax" style="background-image: url(images/Cars/ferrari-carro.jpg );">
                <div class="awe-overlay"></div>
                <div class="container">
                    <div class="login-register">
                        <div class="text text-center">
                            <h2>Cadastre-se agora!</h2>
                            <p></p>
                            <form action="./registrar" method="post"class="account_form">
                                <div class="field-form">
                                    <input name="name"type="text" class="field-text" placeholder="Name*">

                                </div>
                                <div class="field-form">
                                    <input name="CPF"type="text" class="field-text" placeholder="CPF*">
                                </div>
                                <div class="field-form">
                                    <input name="Data de nascimento"type="text" class="field-text" placeholder="Data de nascimento*">

                                </div>
                                <div class="field-form">


                                    <select id="sexo" class="form-control " name="sexo">
                                        <option selected value="nulo">Sexo...</option>
                                        <option value="Masculino">Masculino</option>
                                        <option value="Feminino">Feminino</option>
                                        <option value="nulo">Prefiro nao dizer</option>
                                    </select>
                                </div>
                                <div class="field-form">
                                    <input name="Endereço"type="text" class="field-text" placeholder="Endereço*">

                                </div>
                                <div class="field-form">
                                    <input name="Numero"type="number" class="field-text" placeholder="Numero*">

                                </div>

                                <div class="field-form">
                                    <select id="inputState" class="form-control" name="UF">
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
                                <div class="field-form">
                                    <input name="Email"type="text" class="field-text" placeholder="Email*">
                                </div>
                                <div class="field-form">
                                    <input type="text " class="field-text" id="Bairro" placeholder="Bairro " name="bairro"  maxlength="100" >
                                </div>
                                <div class="field-form">
                                    <input type="text " class="field-text" id="CEP" placeholder="Digite o CEP " name="cep"  maxlength="8"onkeypress='return SomenteNumero(event)' >
                                </div>
                                <div class="field-form">
                                    <input type="text " class="field-text" id="Telefone" placeholder="(11)000000000" maxlength="20" name="tel">
                                </div>
                                <div class="field-form">
                                    <input type="text" class="field-text" id="CNH" placeholder="CNH" maxlength="20" name="cnh">
                                </div>
                                <div class="field-form">
                                    <input name="Senha"type="password" class="field-text" placeholder="Senha*">
                                    <span class="view-pass"><i class="lotus-icon-view"></i></span>
                                </div>

                                <div class="field-form field-submit">
                                    <button class="awe-btn awe-btn-13" type="submit">REGISTRAR</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END / ACCOUNT -->

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
