# EXAMPLE
# <post-item ng-repeat="post in posts" post="post"></post-item>

@MarcaPagina.directive 'postItem', [ 'Post',
  (Post) ->
    restrict: 'E'
    replace: true
    scope:
      post: '='
    template: """
      <li class="topcoat-list__item mpagina-nav__list__item">
        <a ng-click="hello()" class="mpagina-nav__button">
          <img src="{{thumbnail.url}}">
          <span>{{post.title}}</span>
        </a>
      </li>
    """
    link: (scope, element, attrs) ->
      post = new Post scope.post
      scope.thumbnail = post.getThumbnail()

      scope.hello = ->
        alert post.title
]
