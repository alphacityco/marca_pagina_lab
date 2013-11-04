
@MainCtrl = @MarcaPagina.controller 'MainCtrl', ['$scope','WPAPIService',
  ($scope, WPAPIService) ->

    $scope.awesomeThings = ['HTML5 Boilerplate', 'AngularJS', 'Karma']

    $scope.posts = []

    WPAPIService.getPosts
      success: (data) ->
        alert data.count
        console.log data
        $scope.posts = data.posts
      error: ->
        alert "ERROR"

]
