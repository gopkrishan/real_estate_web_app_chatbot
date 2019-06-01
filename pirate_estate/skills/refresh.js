/*
Refresh
*/

module.exports = function(controller) {

    controller.middleware.receive.use(function(bot, message) {
    
        controller.on('reconnect',function(conversation) {
        
            bot.findConversation(message, function(convo) {
                if (convo) {
                    // stop the conversation and swallow this message
                    convo.stop();
                   
                    bot.startConversation(message, function(err, conversation) {
              
                                    conversation.addMessage('Ahoy! I\'m Kleinbot.','default')
                                    conversation.addMessage('I\'m here to assist you.','default')
                                    conversation.say({
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
                    
                                })
                } else {
                    // nothing ongoing, this message passes through
                  
                }
            });
        
    
    });
    })
}