(function(){this.MarcaPagina=angular.module("MarcaPagina",["ngResource"]).config(["$routeProvider",function(a){a.when("/",{templateUrl:"views/main.html",controller:"MainCtrl"}).otherwise({redirectTo:"/"})}])}).call(this),function(){this.MarcaPagina.controller("MainCtrl",["$scope",function(a){a.awesomeThings=["HTML5 Boilerplate","AngularJS","Karma"],console.log("@@@@@@@@@@@@@")}])}.call(this);