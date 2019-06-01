/*Average Renting Price of an Area*/
module.exports = function (controller) {

    //Connection to the database
    var mysql = require('mysql');
    var connection = mysql.createConnection({
        host: '127.0.0.1',
        user: 'root',
        password: '',
        database: 'kleinbotdb'
    })
    connection.connect();

    controller.hears('rental price', 'message_received', function (bot, message) {

        // Start convertation about Area
        bot.startConversation(message, function (err, convo) {

            convo.addQuestion('Which area\'s average rental price would you like to check out?', function (response, convo) {

                convo.setVar('area', response.text)
                var area = response.text

                connection.query("SELECT DISTINCT AREA FROM PROPERTIES JOIN RENT ON\
                PROPERTIES.ID = RENT.PROPERTY_ID ", function (error, results, fields) {
                    if (error) throw error;

                    for (var i = 0; i < results.length; i++) {

                        if (!results[i].AREA.toUpperCase().includes(area.toUpperCase())) {  // false flag
                            console.log("NOT IN MY AREA");
                            isAreaFlag = false;
                        }
                        else if (results[i].AREA.toUpperCase().includes(area.toUpperCase())) {  // Start else if // true flag
                            console.log("YES, IN MY AREA");
                            isAreaFlag = true;
                            break;  // When you find the area break from for
                        }
                    }
                    console.log("isAreaFlag: " + isAreaFlag)

                    if (isAreaFlag == false) {  // false flag,restart or back to main menu 
                        convo.next();
                        console.log("next()");
                        convo.say({
                            text: 'Excuse me but there are no properties in this area. Please choose an action.',
                            quick_replies: [
                                {
                                    title: 'Landlord',
                                    payload: 'landlord',
                                },
                                {
                                    title: 'Menu',
                                    payload: 'Menu',
                                }
                            ]
                        });
                    }
                    else if (isAreaFlag == true) {  // Start else if // true flag


                        convo.next();

                connection.query("SELECT AVG(PRICE) AS priceResult FROM PROPERTIES JOIN RENT ON \
                PROPERTIES.ID = RENT.PROPERTY_ID WHERE AREA = ('" + area + " ')", function (error, results, fields) {

                    if (error) throw error;

                    console.log('The average price of ' + response.text + ' is', results[0].priceResult, '€'); // results[i]."here you place the attribute of interest" which you must match with the SELECT of the sql query"

                    convo.setVar('averagePrice', results[0].priceResult)
                    // });

                    console.log('convo.vars:', convo.vars)  // For debugging
                    convo.gotoThread('step2');          // Goes to thread step2 and prints the input

                    convo.say({                                 // To handle the flow after results
                        text: 'Do you need anything else?',
                        quick_replies: [
                            {
                                title: 'Back to menu.',
                                payload: 'Menu',
                            },
                            {
                                title: 'No, thank you!',
                                payload: 'No, thank you!',
                            },
                            {
                                title: 'Contact us.',
                                payload: 'Contact us.',
                            }
                        ]
                    });
                });

                }


            })

        });
                
                convo.addMessage('The average price in this area is {{vars.averagePrice}} €', 'step2')
            }, { key: 'response' }, 'default');
        })


    }