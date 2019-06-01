/* User goes back to the menu with the buy/sell options */

module.exports = function(controller) {

  controller.hears('Menu', 'message_received', function(bot, message) {
      bot.startConversation(message, function(err, convo) {
        convo.addMessage('Well, okay! One more time...','default')  
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
  });
}