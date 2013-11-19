
$(document).ready(function(){
    $('input:radio').change(function(){
            var $this = $(this);
            $this.closest('.selection').find('.highlight').removeClass('highlight').addClass('darken');
            $this.closest('.selection').find('.coffee_text').removeClass('blue_text').addClass('brown_text');
            $this.closest('.round_box').addClass('highlight').removeClass('darken');
            $this.closest('.coffee_text').addClass('blue_text').removeClass('brown_text');
        });
});
