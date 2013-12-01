
@HomeCtrl = @MarcaPagina.controller 'HomeCtrl', ['$scope', '$state', 'WPAPIService', 'Posts'
  ($scope, $state, WPAPIService, Posts) ->

    API_URL = 'http://apiedepagina.com/api'

    $scope.posts = []

    wpApiService = new WPAPIService API_URL
    wpApiService.getPosts
      success: (wpApiResponse) ->
        $scope.posts = new Posts wpApiResponse.posts

    $state.transitionTo 'home.postIndex'

]
