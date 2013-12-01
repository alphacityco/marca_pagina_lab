
@MarcaPagina.controller 'PostIndexCtrl', ['$scope', '$state',
  ($scope, $state) ->

    $scope.postShow = (post) ->
      $state.transitionTo 'home.postShow', {post_id: post.id}

]