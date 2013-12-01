
@MarcaPagina.controller 'PostShowCtrl', ['$scope', '$state', '$stateParams',
  ($scope, $state, $stateParams) ->

    postId = $stateParams.post_id

    $scope.post = $scope.posts.getPost postId

    $scope.goHome = ->
      alert "@@@@@@@@"

]