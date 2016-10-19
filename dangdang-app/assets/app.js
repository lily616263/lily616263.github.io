var app =angular.module('app',['ngRoute'])
app.config(['$routeProvider',function($routeProvider){
    $routeProvider
    .when('./',{
   tempalteUrl:'./tpl/index.html',
   controller:''
    })
    .when('/blog',{
         tempalteUrl:'./tpl/blog.html',
   controller:''
    })
    .when('/book',{
         tempalteUrl:'./tpl/book.html',
   controller:'bookController'
    })
    .when({
         tempalteUrl:'./tpl/about_me.html',
   controller:''
    })
    .when('/book_list',{
      templatewUrl:'./assets/tpl/book_list.html',
      controller:'bookListController'
    })
    .otherwise({
      
    })
}])