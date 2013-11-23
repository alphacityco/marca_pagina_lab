@PostItem = angular.module 'PostItem', []

# EXAMPLE
# <post-item ng-repeat="post in posts" post="post"></post-item>

@PostItem.factory 'Post', [
  ->
    (post) ->
      getThumbnail: ->
        attachments = post.attachments.filter (at) ->
          fileType = at.mime_type.split('/')[0] # "image/jpeg"
          fileType is 'image'

        attachments[0].images.thumbnail

]

@PostItem.directive 'postItem', [ 'Post',
  (Post) ->
    restrict: 'E'
    replace: true
    scope:
      post: '='
    template: """
      <li class="topcoat-list__item mpagina-nav__list__item">
        <a href="#" class="mpagina-nav__button">
          <img src="{{thumbnail.url}}">
          <span>{{post.title}}</span>
        </a>
      </li>
    """
    link: (scope, element, attrs) ->
      post = new Post scope.post
      scope.thumbnail = post.getThumbnail()

]
