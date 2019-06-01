/* Buy flow with results in the command prompt */
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

    controller.hears(['Buy'], 'message_received', function (bot, message) {
        var propertiesArray = [];
        var isAreaFlag;
        var minPriceDb;
        var maxPriceDb;

        var flowFlag;

        // Start convertation about buy
        bot.startConversation(message, function (err, convo) {

            convo.addMessage('Hmm... Let me see!', 'default')
            convo.ask('So, give me the location you\'re interested in buying in Thessaloniki.', function (response, convo) {
                convo.setVar('area', response.text)
                var area = response.text;


                connection.query("SELECT MIN(PRICE) AS minAreaPrice FROM PROPERTIES JOIN SELL ON\
                PROPERTIES.ID = SELL.PROPERTY_ID WHERE AREA = ('" + area + " ')", function (error, results, fields) {

                        minPriceDb = results[0].minAreaPrice
                        convo.setVar('minPriceResultVar', results[0].minAreaPrice);                                               //collect the min price

                        console.log('Min Price: ' + minPriceDb);


                    });
                connection.query("SELECT MAX(PRICE) AS maxAreaPrice FROM PROPERTIES JOIN SELL ON\
                PROPERTIES.ID = SELL.PROPERTY_ID WHERE AREA = ('" + area + " ')", function (error, results, fields) {

                        maxPriceDb = results[0].maxAreaPrice
                        convo.setVar('maxPriceResultVar', results[0].maxAreaPrice);                                               //collect the max price

                        console.log('Max Price: ' + maxPriceDb);


                    });

                connection.query("SELECT MAX(NUMBER_OF_ROOMS) AS maxNumberOfRooms FROM PROPERTIES WHERE AREA = ('" + area + " ')", function (error, results, fields) {

                    maxNumberOfRooms = results[0].maxNumberOfRooms
                    convo.setVar('maxNumberOfRooms', results[0].maxNumberOfRooms);                                               //collect the max number of rooms

                    console.log('Max Number Of Rooms: ' + maxNumberOfRooms);



                });



                connection.query("SELECT DISTINCT AREA FROM PROPERTIES JOIN SELL ON\
                PROPERTIES.ID = SELL.PROPERTY_ID ", function (error, results, fields) {
                        if (error) throw error;

                        for (var i = 0; i < results.length; i++) {
                            var re = new RegExp("\\b" + results[i].AREA.toUpperCase() + "\\b")

                            if (re.test(area.toUpperCase()) == false) {  // false flag   
                                console.log("NOT IN MY AREA");
                                isAreaFlag = false;
                            }
                            else if (re.test(area.toUpperCase())) {  // Start else if // true flag
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
                                text: 'I\'m sorry, there are no properties in this area. Please choose an action.',
                                quick_replies: [
                                    {
                                        title: 'Buy',
                                        payload: 'Buy',
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
                            convo.addMessage('Now, let\'s set the price range.', 'default')
                            convo.ask('Please give me the highest price you\'re willing to pay.', function (response, convo) {
                                convo.setVar('highestPrice', response.text)
                                var highestPrice = response.text;
                                console.log(highestPrice)

                                if (!isNaN(highestPrice)) {


                                    convo.next();
                                    convo.ask('Also, please give me the lowest price.', function (response, convo) {
                                        convo.setVar('lowestPrice', response.text)
                                        var lowestPrice = response.text;
                                        console.log(lowestPrice);

                                        if (!isNaN(lowestPrice)) {
                                            console.log('max price database:' + maxPriceDb)
                                            console.log('min price database:' + minPriceDb)
                                            console.log('min price user:' + lowestPrice)
                                            console.log('max price user:' + highestPrice)


                                            if ((parseInt(highestPrice, 10) >= minPriceDb) && (parseInt(lowestPrice, 10) <= maxPriceDb) && (parseInt(highestPrice, 10) >= parseInt(lowestPrice, 10))) {
                                                convo.next();

                                                convo.addMessage('What about number of rooms?', 'default')
                                                convo.ask('Please set lowest number of rooms you want.', function (response, convo) {
                                                    convo.setVar('roomResponse', response.text)
                                                    var roomResponse = response.text;
                                                    var roomNumberChangedFlag = false;
                                                    if (!isNaN(roomResponse)) {
                                                        convo.next();

                                                        if (parseInt(roomResponse, 10) > maxNumberOfRooms) {
                                                            roomResponse = maxNumberOfRooms;
                                                            convo.next();
                                                            roomNumberChangedFlag = true
                                                            convo.setVar('maxNumberOfRooms', maxNumberOfRooms)
                                                        }


                                                        connection.query("SELECT PROPERTIES.ID, STREET, STREET_NUMBER, PRICE, SIZE, NUMBER_OF_ROOMS, AREA, PROPERTIES.IMAGE_NAME FROM PROPERTIES JOIN SELL ON\
                                                                  PROPERTIES.ID = SELL.PROPERTY_ID WHERE AREA = ('" + area + " ') AND\
                                                                  PRICE BETWEEN ( " + lowestPrice + " ) AND ( " + highestPrice + " ) AND\
                                                                   NUMBER_OF_ROOMS >= ("+ roomResponse + "); ", function (error, results, fields) {
                                                                if (error) throw error;



                                                                var jsonVar = [];
                                                                var jsonVarResult = [];

                                                                // Loop for displaying each result to the console
                                                                for (var i = 0; i < results.length; i++) {
                                                                    var counter = i + 1;
                                                                    console.log('Property ' + counter + ':', results[i].STREET, '   ', results[i].STREET_NUMBER, '   ', results[i].PRICE, '€', '   ', results[i].SIZE, ' squaremeters', '  ', results[i].NUMBER_OF_ROOMS)
                                                                    propertiesArray[i] = '• Result ' + counter + ': ' + results[i].STREET + '   ' + results[i].STREET_NUMBER + ' ,  ' + results[i].PRICE + '€' + ' ,  ' + results[i].SIZE + 'm\u00B2' + ' , ' + results[i].NUMBER_OF_ROOMS + ' ' + 'rooms' + '\n\n\n\n'

                                                                    //convo.setVar('listOfProperties', propertiesArray.join(''));

                                                                    jsonVar[i] = [
                                                                        { "street": results[i].STREET },
                                                                        { "streetNumber": results[i].STREET_NUMBER },
                                                                        { "price": results[i].PRICE },
                                                                        { "size": results[i].SIZE },
                                                                        { "area": area },
                                                                        { "numberOfRooms": results[i].NUMBER_OF_ROOMS },
                                                                        { "propertiesID": results[i].ID },
                                                                        { "imageThumb": results[i].IMAGE_NAME },
                                                                        {"flowFlag": "buy"},
                                                                        {"roomChatFilter": roomResponse},
                                                                        {"lowestPriceChatFilter": lowestPrice.toLocaleString()},
                                                                        {"highestPriceChatFilter": highestPrice.toLocaleString()}

                                                                    ];

                                                                }

                                                                jsonVarResult = JSON.stringify(jsonVar);
                                                                module.exports.firstItem = jsonVarResult;

                                                            });

                                                        console.log('convo.vars:', convo.vars)  // For debugging
                                                        if (roomNumberChangedFlag == true) {
                                                            //convo.addMessage('Alright! ' + '\n', 'step3')
                                                            convo.addMessage('Check out these properties with the maximum number of rooms', 'step3');
                                                            convo.gotoThread('step3');
                                                            convo.next()

                                                        }
                                                        else {
                                                            //convo.addMessage('Alright ' + '\n', 'step2')
                                                            convo.addMessage('Feel free to change any parameters in the filter section', 'step2');
                                                            convo.gotoThread('step2');          // Goes to thread step2 and prints the output
                                                            convo.next()

                                                        }
                                                        convo.next();
                                                        convo.say({                                               // To handle the flow after results 
                                                            text: 'Do you need anything else?',
                                                            quick_replies: [
                                                                {
                                                                    title: 'Back to menu',
                                                                    payload: 'Menu',
                                                                },
                                                                {
                                                                    title: 'No, thank you!',
                                                                    payload: 'No, thank you!',
                                                                },
                                                                {
                                                                    title: 'Contact us',
                                                                    payload: 'Contact us',
                                                                }
                                                            ]
                                                        });

                                                    }
                                                    else {

                                                        //convo.reply('The input you\'ve given is not a number.Try again')
                                                        convo.repeat();
                                                        convo.next();
                                                    }

                                                })

                                            }
                                            else {
                                                convo.next();
                                                convo.addMessage('There are no properties in this range.', 'default')
                                                convo.say({
                                                    text: 'The price range in this area is {{vars.minPriceResultVar}} - {{vars.maxPriceResultVar}}. Please choose an action.',
                                                    quick_replies: [
                                                        {
                                                            title: 'Buy',
                                                            payload: 'Buy',
                                                        },
                                                        {
                                                            title: 'Menu',
                                                            payload: 'Menu',
                                                        }
                                                    ]
                                                });
                                            }
                                        }
                                        else {
                                            convo.repeat();
                                            convo.next();
                                        }
                                    }); // End second ask

                                }
                                else {
                                    convo.repeat();
                                    convo.next();
                                }



                            }) // End first ask

                        } // End else if
                    });

            }, { key: 'response' }, 'default')

            convo.addMessage('I have some properties you might want to check out.', 'step2')
            convo.addMessage('Your number of rooms is out of range.The maximum number of rooms is {{vars.maxNumberOfRooms}}', 'step3')

        })

    });
}