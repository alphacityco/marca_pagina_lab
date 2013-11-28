
@MarcaPagina = angular.module('MarcaPagina', ['ui.router', 'WordPressAPI'])

@MarcaPagina.config ['$stateProvider',
  ($stateProvider) ->

    $stateProvider
      .state 'home',
        templateUrl: 'scripts/home/index.html'
        controller:  'HomeCtrl'

      .state 'home.postIndex',
        templateUrl: 'scripts/post/index.html'
        controller: 'PostIndexCtrl'

      .state 'home.postShow',
        templateUrl: 'scripts/post/show.html'
        controller: 'PostShowCtrl'


]

@MarcaPagina.controller 'Init', ['$state',
  ($state) ->

    $state.transitionTo 'home'

]
