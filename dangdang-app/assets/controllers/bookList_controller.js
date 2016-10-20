app.controller('bookListController',['$scope','$routeParams','commonService', function($scope,$routeParams,c_s){
        $scope.data=[];
     console.log($routeParams.id);
      c_s.getData($routeParams.id,function(res){
          $scope.data=res.data;
          console.dir($scope.data);
      })
}])