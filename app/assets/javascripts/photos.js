$(document).ready(function() {
    if ($('.pagination').length && $('.feed').length) {
        $(window).scroll(function() {
            const url = $('.pagination .next_page').attr('href');
            if (url && ($(window).scrollTop() > ($(document).height() - $(window).height() - 15))) {
                console.log('POOP');
                $('.pagination').text("Loading more photos...");
                return $.getScript(url);
            }
        });
        return $(window).scroll();
    }
});