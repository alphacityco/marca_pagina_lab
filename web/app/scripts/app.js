(function() {

  this.MarcaPagina = angular.module('MarcaPagina', ['ngResource']).config(['$routeProvider',
    function ($routeProvider) {

    $routeProvider.when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl'
    }).otherwise({
        redirectTo: '/'
    });

  }]);

}).call(this);

