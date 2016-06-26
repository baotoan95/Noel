$(function(){
    setInterval(function(){
       var $X=Math.ceil(Math.random() * $(document).width() - 300);
       var $Y=Math.ceil(Math.random() * $(document).height() - 300);
        
       $('#santa').animate({'left':$X, 'top':$Y}, 10000);
    },1000)
})