@MarcaPagina.factory 'Post', [
  ->

    (post) ->
      angular.extend post,
        getImageUrl: (imageType = 'full') ->
          thumbnailImages = post.thumbnail_images

          thumbnailImages[imageType].url if thumbnailImages?

      post
]
