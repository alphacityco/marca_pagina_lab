
@MarcaPagina = angular.module('MarcaPagina', ['ui.router', 'WordPressAPI'])

@MarcaPagina.config ['$stateProvider',
  ($stateProvider) ->

    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'scripts/home/index.html'
        controller: 'HomeCtrl'

]

@MarcaPagina.controller 'Init', ['$state',
  ($state) ->

    $state.transitionTo 'home'

]
