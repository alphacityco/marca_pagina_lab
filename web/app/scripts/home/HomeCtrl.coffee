
@HomeCtrl = @MarcaPagina.controller 'HomeCtrl', ['$scope', '$state', 'WPAPIService',
  ($scope, $state, WPAPIService) ->

    API_URL = 'http://apiedepagina.com/api'

    $scope.posts = []

    wpApiService = new WPAPIService API_URL
    wpApiService.getPosts
      success: (wpApiResponse) ->
        $scope.posts = wpApiResponse.posts

    $state.transitionTo 'home.postIndex'

]
