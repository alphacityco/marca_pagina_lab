
@WordPressAPI = angular.module('WordPressAPI', []).config ['$httpProvider',
  ($httpProvider) ->

    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common['X-Requested-With']

]

@WordPressAPI.factory 'WPAPIService', ['$http',
  ($http) ->

    JSONP_SUFIX = 'callback=JSON_CALLBACK'

    (api_url) ->

      info: ({success, error}) ->
        $http.jsonp("#{api_url}/info/?#{JSONP_SUFIX}")
        .success(success)
        .error(error)

      getPosts: ({success, error}) ->
        $http.jsonp("#{api_url}/get_posts/?#{JSONP_SUFIX}")
        .success(success)
        .error(error)

      getRecentPosts: ({success, error}) ->
        $http.jsonp("#{api_url}/get_recent_posts/?#{JSONP_SUFIX}")
        .success(success)
        .error(error)

      getPost: (postId, {success, error}) ->
        $http.jsonp("#{api_url}/get_post/?post_id=#{postId}&#{JSONP_SUFIX}")
        .success(success)
        .error(error)

]
