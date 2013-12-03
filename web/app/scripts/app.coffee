
@MarcaPagina = angular.module('MarcaPagina', ['ui.router', 'WordPressAPI'])

@MarcaPagina.config ['$stateProvider',
  ($stateProvider) ->

    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'scripts/home/index.html'
        controller:  'HomeCtrl'

      .state 'home.postIndex',
        url: 'posts',
        templateUrl: 'scripts/post/index.html'
        controller: 'PostIndexCtrl'

      .state 'home.postShow',
        url: 'posts/:post_id'
        templateUrl: 'scripts/post/show.html'
        controller: 'PostShowCtrl'


]

@MarcaPagina.controller 'InitCtrl', ['$scope', '$state',
  ($scope, $state) ->

    $state.transitionTo 'home'

]
