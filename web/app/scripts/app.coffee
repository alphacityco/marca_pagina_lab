
@MarcaPagina = angular.module('MarcaPagina', ['ngResource']).config ['$routeProvider', ($routeProvider) ->

    $routeProvider.when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
    .otherwise
        redirectTo: '/'

]
