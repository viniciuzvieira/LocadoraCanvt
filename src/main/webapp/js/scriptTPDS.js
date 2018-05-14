var carros = angular.module('carros', []);

    carros.controller('principal', function ($scope, $http) {

        $scope.carros = [];

        $http.get('carros.json').then(function (response) {
            $scope.carros = response.data.carros;
        });

        $scope.compras = [];

        $scope.comprarCarros = function () {
            var p = $scope.carroSelecionado;
            var q = $scope.carroQtd;
            var v = valor(p, $scope.carros);

            if (p !== undefined && q > 0) {
                var i = find(p);

                if (i >= 0) {
                    $scope.compras[i].quantidade += q;
                } else {
                    $scope.compras.push({
                        tipo: 'carros',
                        produto: p,
                        quantidade: q,
                        valor: v
                    });
                }
            }
        };

        $scope.comprarBebida = function () {
            var p = $scope.bebidaSelecionada;
            var q = $scope.bebidaQtd;
            var v = valor(p, $scope.bebidas);

            if (p !== undefined && q > 0) {
                var i = find(p);

                if (i >= 0) {
                    $scope.compras[i].quantidade += q;
                } else {
                    $scope.compras.push({
                        tipo: 'bebidas',
                        produto: p,
                        quantidade: q,
                        valor: v
                    });
                }
            }
        };

        $scope.comprarOutro = function () {
            var p = $scope.outroSelecionado;
            var q = $scope.outroQtd;
            var v = valor(p, $scope.outros);

            if (p !== undefined && q > 0) {
                var i = find(p);

                if (i >= 0) {
                    $scope.compras[i].quantidade += q;
                } else {
                    $scope.compras.push({
                        tipo: 'outros',
                        produto: p,
                        quantidade: q,
                        valor: v
                    });
                }
            }
        };

        var valor = function (nome, lista) {
            var valor = 0;

            for (var i = 0; i < lista.length; i++) {
                var p = lista[i];

                if (p.nome === nome) {
                    valor = p.valor;
                    break;
                }
            }

            return valor;
        };

        var find = function (produto) {
            var indice = -1;

            for (var i = 0; i < $scope.compras.length; i++) {
                var c = $scope.compras[i];

                if (c.produto === produto) {
                    indice = i;
                    break;
                }
            }

            return indice;
        }

        $scope.quantidade = function (tipo) {
            var qtd = 0;

            for (var i = 0; i < $scope.compras.length; i++) {
                var c = $scope.compras[i];

                if (c.tipo === tipo) {
                    qtd += c.quantidade;
                }
            }

            return qtd;
        };

        $scope.total = function (tipo) {
            var total = 0;

            for (var i = 0; i < $scope.compras.length; i++) {
                var c = $scope.compras[i];

                if (tipo === undefined || c.tipo === tipo) {
                    total += c.quantidade * c.valor;
                }
            }

            return total.toFixed(2);
        };

    });

