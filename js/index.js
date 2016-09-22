var titles = document.querySelectorAll('h2')
var input = document.querySelector('input')
 var divs = document.querySelectorAll('.kind')
 
console.log(divs);
 input.onkeyup = function(e){
     var str = input.value;
    

 var result = titles.filter(function(item){
     var div = item.parentNode.parentNode;
     if (item.innerHTML.toLowerCase().indexOf(str.toLowerCase()) > -1)
     {
        
        div.style.display ='show';
     }
     else{
      div.style.display ='none';
     }
 })

 }