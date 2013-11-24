
@MarcaPagina = angular.module('MarcaPagina', ['WordPressAPI'])

@MarcaPagina.config ['$routeProvider', ($routeProvider) ->

    $routeProvider.when '/',
        controller: 'HomeCtrl'
        templateUrl: 'scripts/home/index.html'
    .otherwise
        redirectTo: '/'

]
