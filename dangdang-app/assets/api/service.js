app.factory('commonService',['$http',function($http){
    var service ={};


    service.getData = function(type,callBack){
        $http({
            url:'https://lily616263.github.io/dangdang-app/data/book_'+ type +'.json',
            method:'get'
        })
        .then(function(res){
            console.log('success')
            callBack(res)
        },function(err){
            console.dir(err)
        })
    }
    return service
}])