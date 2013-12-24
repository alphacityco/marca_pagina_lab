
@MarcaPagina = angular.module('MarcaPagina', ['ui.router', 'WordPressAPI', 'Persistencejs'])

@MarcaPagina.config ['$stateProvider', 'WPAPIServiceProvider',
  ($stateProvider, WPAPIServiceProvider) ->

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

    WPAPIServiceProvider.setUrl 'http://apiedepagina.com/api'

]

@MarcaPagina.run ['$rootScope', '$state',
  ($rootScope, $state) ->

    $state.transitionTo 'home'

]
