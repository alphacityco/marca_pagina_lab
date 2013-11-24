@MarcaPagina.factory 'Post', [
  ->
    (post) ->
      getThumbnail: ->
        attachments = post.attachments.filter (at) ->
          fileType = at.mime_type.split('/')[0] # "image/jpeg"
          fileType is 'image'

        attachments[0].images.thumbnail

]
