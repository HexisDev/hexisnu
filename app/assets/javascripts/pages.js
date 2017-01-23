$(document).ready(function(){
    $('.yolk').toggle();
    $('.egg, .yolk').click(function(){
        $('.egg').toggle();
        $('.yolk').toggle();
    })
});