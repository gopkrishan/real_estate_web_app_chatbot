/* User exits the conversation */

module.exports = function(controller) {

    controller.hears(['No, thank you!','no','bye','exit','thanks'], 'message_received', function(bot, message) {
        bot.startConversation(message, function(err, convo) {
            convo.addMessage('Thank you for being on board... May your compass be true, Arr! ','default')
            
        });
    });
}