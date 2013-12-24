
@WordPressAPI = angular.module('WordPressAPI', []).config ['$httpProvider', ($httpProvider) ->

    $httpProvider.defaults.useXDomain = true
    delete $httpProvider.defaults.headers.common['X-Requested-With']

]

@WordPressAPI.provider 'WPAPIService', ->

  apiUrl = ''

  setUrl: (url) ->
    apiUrl = url if url

  $get: ['$http', ($http) ->
    throw new Error('WPAPIService: apiUrl was not defined') if apiUrl is ''
    JSONP_SUFIX = 'callback=JSON_CALLBACK'

    setUrl: @setUrl

    info: ({success, error}) ->
      $http.jsonp("#{apiUrl}/info/?#{JSONP_SUFIX}")
      .success(success)
      .error(error)

    getPosts: ({success, error}) ->
      $http.jsonp("#{apiUrl}/get_posts/?#{JSONP_SUFIX}")
      .success(success)
      .error(error)

    getRecentPosts: ({success, error}) ->
      $http.jsonp("#{apiUrl}/get_recent_posts/?#{JSONP_SUFIX}")
      .success(success)
      .error(error)

    getPost: (postId, {success, error}) ->
      $http.jsonp("#{apiUrl}/get_post/?post_id=#{postId}&#{JSONP_SUFIX}")
      .success(success)
      .error(error)
  ]
