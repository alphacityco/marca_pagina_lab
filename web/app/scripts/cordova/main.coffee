@Cordova = angular.module('Cordova', [])

@Cordova.factory 'onCordovaReady', ->
  (fn) ->

    queue = []

    impl = ->
      queue.push Array.prototype.slice.call(arguments)

    document.addEventListener 'deviceready', ->
      queue.forEach (args) ->
        fn.apply(this, args)

      impl = fn
    , false

    ->
      impl.apply this, arguments
