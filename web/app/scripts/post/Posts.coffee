@MarcaPagina.factory 'Posts', [ 'Post',
  (Post) ->

    (posts) ->
      angular.extend posts,
        getPost: (postId) ->
          postId = parseInt(postId) or postId
          for post in posts when post.id == postId
            return lePost = post

          new Post lePost

      posts
]