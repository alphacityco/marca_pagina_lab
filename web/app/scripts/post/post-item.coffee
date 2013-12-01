# EXAMPLE
# <post-item ng-repeat="post in posts" post="post"></post-item>

@MarcaPagina.directive 'postItem', [ 'Post',
  (Post) ->
    restrict: 'E'
    replace: true
    scope:
      post: '='
      onClick: '='
    template: """
      <li class="topcoat-list__item mpagina-nav__list__item">
        <a ng-click="postClick(post)" class="mpagina-nav__button">
          <img src="{{post.getThumbnailUrl()}}">
          <span>{{post.title}}</span>
        </a>
      </li>
    """
    link: (scope, element, attrs) ->
      scope.post = new Post scope.post

      scope.postClick = (post) -> scope.onClick post
]
