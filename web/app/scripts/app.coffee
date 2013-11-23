
@MarcaPagina = angular.module('MarcaPagina', ['WordPressAPI', 'PostItem'])

@MarcaPagina.config ['$routeProvider', ($routeProvider) ->

    $routeProvider.when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
    .otherwise
        redirectTo: '/'

]
