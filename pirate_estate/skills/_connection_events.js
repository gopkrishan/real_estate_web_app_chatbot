/* This module kicks in if no Botkit Studio token has been provided */

module.exports = function(controller) {
  
  controller.on('hello', conductOnboarding);
  controller.on('welcome_back', conductOnboarding);
 

  function conductOnboarding(bot, message) {

    bot.startConversation(message, function(err, convo) {
      convo.addMessage('Ahoy! I\'m Kleinbot.','default')
      convo.addMessage('I\'m here to assist you.','default')
      convo.say({
        text: 'How can I help you?',
        quick_replies: [
          {
            title: 'Buy', 
            payload: 'Buy',
          },
          {
              title: 'Rent',
              payload: 'Rent',
          },
          {
            title: 'Entry your property',
            payload: 'Entry',
        }
        ]
      });


    });

  }

  
}
    