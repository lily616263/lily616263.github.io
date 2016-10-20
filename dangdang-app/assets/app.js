var app = angular.module('app', ['ngRoute'])
app.config(['$routeProvider', function ($routeProvider) {
    $routeProvider
        .when('./', {
            tempalteUrl: './assets/tpl/index.html',
            controller: ''
        })
        .when('/blog', {
            tempalteUrl: './assets/tpl/blog.html',
            controller: ''
        })
        .when('/book', {
            tempalteUrl: './assets/tpl/book.html',
            controller: 'bookController'
        })
        .when('/about_me', {
            tempalteUrl: './assets/tpl/about_me.html',
            controller: ''
        })
        .when('/book_list/:id', {
            templatewUrl: './assets/tpl/book_list.html',
            controller: 'bookListController'
        })
        .otherwise({
           redirectTo:'/'
        })
}])