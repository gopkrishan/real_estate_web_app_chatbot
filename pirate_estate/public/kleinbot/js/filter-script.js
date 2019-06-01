$("body").on("click", ".show-results", function () {
    // var imageID = $(this).parent('.cd-item').attr('id');
    // Initialize filter input values
    var rooms = $('#rooms').attr('value');
    $('#icon_boxes').empty();

    updateSliders();

    updatePropertyTitle();

    // TODO: Show message on proper time
    // function noResultMessage()
    if ($("#main-conteiner li").length < 1) {
        $("#no-properties-message").empty();
    } else {
        $("#no-properties-message").empty();
    }
});

function getFilterResults(rooms, minPrice, maxPrice, minSize, maxSize, area, flowSwitch) {
    // alert(rooms + minPrice + maxPrice + minSize + maxSize + area);
    var imageID = $(this).parent('.cd-item').attr('id');
    $.ajax({
        url: 'http://localhost/form/filter_results.php?rooms=' + rooms + '&minPrice=' + minPrice + '&maxPrice=' + maxPrice + '&minSize=' + minSize + '&maxSize=' + maxSize + '&area=' + area + '&flow=' + flowSwitch,
        success: function (response) {

            // parent.$("#cd-items-content-title .area-title").text("Properties from: \"" + data.history[0][0][4].area + "\"");
            // parent.$("#cd-items-content-title .area-count").text("(" + totalData + ")");

            // $('#slider-conteiner').empty();

            // Remove previous results and no results message
            $("#main-conteiner").empty();
            // $("#no-properties-message").empty();

            console.log(response);
            var ajaxResult = JSON.parse(response);
            console.log(ajaxResult.length);
            $('#cd-items-content-title .area-count').empty();
            $("#cd-items-content-title .area-count").text("(" + ajaxResult.length + ")");

            for (var i = 0; i < ajaxResult.length; i++) {
                console.log(ajaxResult[i].AREA);
                console.log(ajaxResult[i].PRICE);
                console.log(ajaxResult[i].IMAGE_NAME);
                $("#main-conteiner").append(

                    "<li class='cd-item' id='" + ajaxResult[i].ID + "'>"
                    + "<img src=http://localhost/form/upload/" + ajaxResult[i].IMAGE_NAME + " alt='Item Preview'>"
                    + "<a href='#0' class='cd-trigger'><span>Quick View</span></a>"
                    + "<div class='property-info'><span class='property-info-price'>" + ajaxResult[i].PRICE.toLocaleString() + "</span>"
                    + "<span class='property-info-price-sign'>€</span>"
                    + "<span class='property-info-size'>" + ajaxResult[i].SIZE + "m<sup>2</sup></span></div>"
                    + "<div class='property-info-area'><i class='fas fa-map-marker-alt'></i>" + ajaxResult[i].STREET + " " + ajaxResult[i].STREET_NUMBER + ", " + ajaxResult[i].AREA + "</div>"
                    + "</li>"
                );
            }
        }
    });
}

// Show/Hide Filters
// $("body").on("click", "#filterButton", function () {

//     if ($('#filters').css('display') == 'none') {
//         $('#filterBox').addClass('display-filters');
//         $('#filterBox').removeClass('hide-filters');
//         $('.filter-button i').addClass('fa-minus');
//         $('.filter-button i').removeClass('fa-plus');
//         $('#filters').toggle();
//     } else {
//         $('#filterBox').removeClass('display-filters');
//         $('#filterBox').addClass('hide-filters');
//         $('.filter-button i').removeClass('fa-minus');
//         $('.filter-button i').addClass('fa-plus');
//         $('#filters').toggle();
//     }

// });

function updateRoomsNum(val, id) {
    document.getElementById(id).value = val;
}
//Not in use
function updateMinPrice(val, id) {
}
function updateMaxPrice(val, id) {
}
function updateMinSize(val, id) {
}
function updateMaxSize(val, id) {
}

function updateSliders(updateValue) {
    var roomSlider = $('#roomSlider').val();
    var minPrice = $('#minPrice').val();
    var maxPrice = $('#maxPrice').val();
    var minSize = $('#minSize').val();
    var maxSize = $('#maxSize').val();
    var areaDropdown = $('#locality-dropdown').val();


    if (areaDropdown == "All Areas") {
        areaDropdown = "%";
    }
    // var flowSwitch = $('.switch-slider span').val();

    // alert(flowSwitch);

    // Show error message if area is empty
    // if ($('#first-option:selected').val() == "Choose Area") {
    //     $('<div class="filter-empty-message">Please choose area</div>').insertAfter($('#locality-dropdown'));
    //     $('#locality-dropdown').css('border-color', '#a94442');
    // } else {
    //     $('.filter-empty-message').empty();
    //     $('#locality-dropdown').css('border-color', '#a9a9a9');
    // }

    // function setFlowFlag()
    if ($('#input-switch').hasClass('isCheck')) {
        flowSwitch = "SELL";
    } else if ($('#input-switch').hasClass('isNotCheck')) {
        flowSwitch = "RENT";
    }

    // Send results
    getFilterResults(roomSlider, minPrice, maxPrice, minSize, maxSize, areaDropdown, flowSwitch);
}

function updatePropertyTitle() {
    $("#cd-items-content-title .area-title").text("Properties located in: \"" + $("#locality-dropdown option:selected").text() + "\"");
    
}



let dropdown = $('#locality-dropdown');

dropdown.empty();

dropdown.append('<option id="first-option" selected="true">All Areas</option>');
dropdown.prop('selectedIndex', 0);

const url1 = 'http://localhost/form/areasList.json';

// Populate dropdown with list of provinces
$.getJSON(url1, function (data) {
    $.each(data, function (key, entry) {
        dropdown.append($('<option value="' + entry.name + '"></option>').attr('value', entry.abbreviation).text(entry.name));
    })
});


function getVals() {
    // Get slider values
    var parent = this.parentNode;
    var slides = parent.getElementsByTagName("input");
    var slide1 = parseFloat(slides[0].value);
    var slide2 = parseFloat(slides[1].value);
    // Neither slider will clip the other, so make sure we determine which is larger
    if (slide1 > slide2) { var tmp = slide2; slide2 = slide1; slide1 = tmp; }

    var displayElement = parent.getElementsByClassName("rangeValues")[0];
    displayElement.innerHTML = slide1.toLocaleString() + " - " + slide2.toLocaleString();
}

window.onload = function () {
    // Initialize Sliders
    var sliderSections = document.getElementsByClassName("range-slider");
    for (var x = 0; x < sliderSections.length; x++) {
        var sliders = sliderSections[x].getElementsByTagName("input");
        for (var y = 0; y < sliders.length; y++) {
            if (sliders[y].type === "range") {
                sliders[y].oninput = getVals;
                // Manually trigger event first time to display values
                sliders[y].oninput();
            }
        }
    }
}


/* Flow Switch UI */

function createBuySlider() {
    console.log("buy ok");
    // $('.min-slider-rent-flow').empty();
    // $('.max-slider-rent-flow').empty();

    $('.min-slider-rent-flow').css({ "display": "none" });
    $('.max-slider-rent-flow').css({ "display": "none" });

    $('.min-slider-buy-flow').css({ "display": "block" });
    $('.max-slider-buy-flow').css({ "display": "block" });

    // $('#price-range-slider').append('<input value="0" min="0" max="500000" step="1000" type="range" class="slider roomSlider min-slider-buy-flow"'
    // + 'id="minPrice" name="minPrice" onclick="updateMinPrice(this.value, name);">');

    // $('#price-range-slider').append('<input value="500000" min="0" max="500000" step="1000" type="range" class="slider roomSlider max-slider-buy-flow"'
    // + 'id="maxPrice" name="maxPrice" onclick="updateMaxPrice(this.value, name);">');

}

function createRentSlider() {
    console.log("rent ok");
    // $('.min-slider-buy-flow').empty();
    // $('.max-slider-buy-flow').empty();

    $('.min-slider-buy-flow').css({ "display": "none" });
    $('.max-slider-buy-flow').css({ "display": "none" });

    $('.min-slider-rent-flow').css({ "display": "block" });
    $('.max-slider-rent-flow').css({ "display": "block" });

    // $('#price-range-slider').append('<input value="0" min="0" max="5000" step="50" type="range" class="slider roomSlider max-slider-rent-flow"'
    // + 'id="minPrice" name="minPrice" onclick="updateMinPrice(this.value, name);">');

    // $('#price-range-slider').append('<input value="5000" min="0" max="5000" step="50" type="range" class="slider roomSlider min-slider-rent-flow"'
    // + 'id="maxPrice" name="maxPrice" onclick="updateMaxPrice(this.value, name);">');
}

var flowFilterSwitch;

$("body").on("click", "#input-switch", function () {

    if ($('#input-switch').hasClass("isCheck")) {
        // Buy Flow

        $('#input-switch').removeClass('isCheck');
        $('#input-switch').addClass('isNotCheck');

        $('#buy-label').css({ 'font-weight': '400', "color": "#adadad" });
        $('#rent-label').css({ 'font-weight': '600', "color": "#fff" });

        flowFilterSwitch = "RENT";
        // createRentSlider();
        showFlow(flowFilterSwitch);

        $("#minPrice").attr({
            "max": 5000,
            "min": 0,
            "step": 50
        });

        $("#maxPrice").attr({
            "max": 5000,
            "min": 0,
            "step": 50
        });

        $("#price-range").text("0 - 5,000");

        // Initialize section input
        $("#minPrice").val("0");
        $("#maxPrice").val("5000");


        // $("#minPrice").remove();
        // $("#maxPrice").remove();


    } else if ($('#input-switch').hasClass("isNotCheck")) {
        // Rent Flow

        $('#input-switch').removeClass('isNotCheck');
        $('#input-switch').addClass('isCheck');

        $('#rent-label').css({ 'font-weight': '400', "color": "#adadad" });
        $('#buy-label').css({ 'font-weight': '600', "color": "#fff" });
        flowFilterSwitch = "SELL";
        // createBuySlider();
        showFlow(flowFilterSwitch);

        $("#minPrice").attr({
            "max": 500000,
            "min": 0,
            "step": 1000
        });

        $("#maxPrice").attr({
            "max": 500000,
            "min": 0,
            "step": 1000
        });

        // Initialize section input
        $("#minPrice").val("0");
        $("#maxPrice").val("500000");

        $("#price-range").text("0 - 500,000");



    }

    function showFlow(flowFilterSwitch) {
        console.log(flowFilterSwitch);
    }
});

/* End Flow Switch UI */