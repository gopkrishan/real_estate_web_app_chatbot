    <!--Embedded Chat-->
    <div id="embedded_messenger">
        <header id="message_header" onclick="Botkit.toggle()">Chat</header>
        <iframe id="botkit_client" src="http://localhost:3000/chat.html"></iframe>
    </div>
    <script src="http://localhost:3000/embed.js"></script>
    <script src="//localhost:3000/myscript.js"></script>
    <script>
        var options = {}; // for options, see: https://github.com/howdyai/botkit-starter-web/blob/master/docs/botkit_web_client.md#botkitbootuser
        Botkit.boot(options);
    </script>
    <link rel="stylesheet" href="http://localhost:3000/css/embed.css" />


</body>
</html>