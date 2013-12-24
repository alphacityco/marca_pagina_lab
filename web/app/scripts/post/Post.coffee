@MarcaPagina.factory 'Post', ['Persistence',
  (Persistence) ->

    (post) ->
      _post = _.pick(post, 'id', 'status', 'url', 'title_plain', 'content', 'date', 'modified', 'author', 'categories', 'tags', 'thumbnail_images')

      angular.extend new Persistence.model.Post(_post),
        getImageUrl: (imageType = 'full') ->
          thumbnailImages = _post.thumbnail_images

          thumbnailImages[imageType].url if thumbnailImages?

]
