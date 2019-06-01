// import { output } from './client'

// console.log("output from client.js: " + output);
function alertNumber( ) {
  alert( "test text" );
};

// alertOne( ); 

var output = "test text";
if (output === "\"Do you need anything else?\"") {
  console.log("Equals!");
  xhrCall();
}

function xhrCall() {
  var xhr = new XMLHttpRequest(); //New request object
  var data;
  xhr.onload = function () {
    if (xhr.readyState === 4 && xhr.status === 200) {
      console.log("Response from /botkit/history: ");
      console.log(this.responseText); // JSON response 
      console.log("xhr.status === " + xhr.status);
    }

    if (xhr.responseText != "") {
      data = JSON.parse(xhr.responseText);
    }

    // Get the first item
    var firstPost = data[0];  // I dont use it for now

    // console.log(data.history[0]);
    // Loop through each post
    var totalData;
    data.history.forEach(function (post) {
      console.log("post.length: " + post.length);
      totalData = post.length;
    });

    console.log("totalData length: " + totalData);
    // console.log(data.history[0].street[0]);
    for (var i = 0; i <= totalData; i++) {
      console.log("length: " + data.history.length);
      for (var y = 0; y <= totalData; y++) {
        $("#response").append("<b style='position: absolute; margin-top: 20px;'>"
          + data.history[0][y][i].street + ", "
          + data.history[0][y][i + 1].streetNumber + ", "
          + data.history[0][y][i + 2].price + ", "
          + data.history[0][y][i + 3].size + ", "
          + data.history[0][y][i + 4].area + " "
          + "</b><br />");
      }
    }

  };
  xhr.open("post", "http://localhost:3000/botkit/history", true);
  //                               ^ Don't block the rest of the execution.
  //                                 Don't wait until the request finishes to 
  //                                 continue.
  xhr.send();

  function reloadXHR() {
    $("#response b").remove();
    // setInterval(function () {
    xhr.open("post", "http://localhost:3000/botkit/history", true);
    xhr.send();
    // }, 5000);
  }

}