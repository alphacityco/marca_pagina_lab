
@MarcaPagina = angular.module('MarcaPagina', ['Cordova', 'WordPressAPI'])

@MarcaPagina.config ['$routeProvider', ($routeProvider) ->

    $routeProvider.when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
    .otherwise
        redirectTo: '/'

]
