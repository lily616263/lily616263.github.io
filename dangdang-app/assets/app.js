var app = angular.module('app', ['ngRoute'])
app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider
        .when('./', {
            tempalteUrl: './tpl/index.html',
            controller: ''
        })
        .when('/blog', {
            tempalteUrl: './tpl/blog.html',
            controller: ''
        })
        .when('/book', {
            tempalteUrl: './tpl/book.html',
            controller: 'bookController'
        })
        .when('/about_me', {
            tempalteUrl: './tpl/about_me.html',
            controller: ''
        })
        .when('/book_list', {
            templatewUrl: './tpl/book_list.html',
            controller: 'bookListController'
        })
        .otherwise({
           redirectTo:'/'
        })
}])