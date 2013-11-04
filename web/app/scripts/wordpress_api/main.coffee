
@WordPressAPI = angular.module('WordPressAPI', []).config ['$httpProvider',
  ($httpProvider) ->

    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common['X-Requested-With']

]

@WordPressAPI.factory 'WPAPIService', ['$http', ($http) ->

  API_URL = 'http://apiedepagina.com/api'

  info: ({success, error}) ->
    $http.jsonp("#{API_URL}/info/?callback=JSON_CALLBACK")
    .success(success)
    .error(error)

  getPosts: ({success, error}) ->
    $http.jsonp("#{API_URL}/get_recent_posts/?callback=JSON_CALLBACK")
    .success(success)
    .error(error)

  getPost: (postId, {success, error}) ->
    $http.jsonp("#{API_URL}/get_post/?callback=JSON_CALLBACK&post_id=#{postId}")
    .success(success)
    .error(error)

]
