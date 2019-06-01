$('body #message_list').on('DOMNodeInserted', '.message.message', function () {

    $('.message.message').addClass('kleinbot-icon');
    $('.outgoing').removeClass('kleinbot-icon');


    /* Chat icon */
    // $(".kleinbot-icon").css({
    //     "background-image": "linear-gradient(to right, transparent 14%, rgb(119, 171, 110) 14%), url('http://localhost:3000/favicon.png')",
    //     "background-position": "0 0",
    //     "background-repeat": "no-repeat",
    //     "padding-left": "25px",
    //     "background-color": "transparent"
    // });

});


// Chatbox red notification
setTimeout(
    function () {
        $(".chatbox-popup-notification").css({
            "background-color": "#a94442",
            "height": "18px",
            "width": "14px",
            "border-radius": "18%",
            "position": "absolute",
            "top": "21px",
            "right": "29%",
            "z-index": "99",
            "color": "#fff",
            "padding-left": "3px",
            "padding-top": "2px",
            "font-size": "14px",
            "font-weight": "400"
        });

        $(".chatbox-popup-notification").append('3');



        // Play notification sound
        var media = document.getElementById("pop");
        const playPromise = media.play();
        if (playPromise !== null) {
            playPromise.catch(() => { media.play(); })
        }

        $('title').text("(3) KleinBot Chat | Pirate Estate");
        $('.chatbox-bot-icon').attr('src','resources/chatbox-bot-icon-unread.png');
    }, 4300
);

$('#embedded_messenger, #botkit_client').on('click', function () {
    $(".chatbox-popup-notification").remove();
    $('title').text("KleinBot Chat | Pirate Estate");
    $('.chatbox-bot-icon').attr('src','resources/chatbox-bot-icon.png');
});
$('.wrapper').on('click', function () {
    $(".chatbox-popup-notification").remove();
    $('title').text("KleinBot Chat | Pirate Estate");
});



