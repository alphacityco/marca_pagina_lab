
@HomeCtrl = @MarcaPagina.controller 'HomeCtrl', ['$scope', '$state', 'WPAPIService', 'Posts', 'Persistence'
  ($scope, $state, WPAPIService, Posts, Persistence) ->

    $scope.posts = []

    WPAPIService.getPosts
      success: (wpApiResponse) ->
        $scope.posts = new Posts wpApiResponse.posts

    $state.transitionTo 'home.postIndex'

]
