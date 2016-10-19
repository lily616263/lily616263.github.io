app.factory('commonService',['$http',function($http){
    var service ={};


    service.getData = function(type,callBack){
        $http({
            url:'../../data/book_ +"type"+json',
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