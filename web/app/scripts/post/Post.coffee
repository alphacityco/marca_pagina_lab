@MarcaPagina.factory 'Post', [
  ->

    (post) ->
      angular.extend post,
        getThumbnailUrl: ->
          thumbnailImages = post.thumbnail_images

          thumbnailImages.thumbnail.url if thumbnailImages?

      post
]
