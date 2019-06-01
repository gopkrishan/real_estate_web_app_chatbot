<?php
require 'header.php';

$areaResult = filter_input(INPUT_GET, 'area');
$lowPriceResult = filter_input(INPUT_GET, 'lp');
$highPriceResult = filter_input(INPUT_GET, 'hp');
$numberOfRooms = filter_input(INPUT_GET, 'nr');

if ( (!empty($areaResult) && (!empty($lowPriceResult) && (!empty($highPriceResult) && (!empty($numberOfRooms) ))))){

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "kleinbotdb";

// Create connection
$conn = new mysqli($host, $dbusername, $dbpassword, $dbname);

if (mysqli_connect_error()) {
    die('Connect Error (' . mysqli_connect_errno() . ') '
        . mysqli_connect_error());
} else {
    $sql = 'SELECT STREET, STREET_NUMBER, PRICE, SIZE, AREA, NUMBER_OF_ROOMS FROM PROPERTIES JOIN RENT ON PROPERTIES.ID = RENT.PROPERTY_ID 
        WHERE AREA = ("' . $areaResult . '") AND PRICE BETWEEN (' . $lowPriceResult . ' ) AND ( ' . $highPriceResult . ' ) AND NUMBER_OF_ROOMS >= ( ' . $numberOfRooms . ' )';


    // $result = mysqli_query($con,"SELECT `note` FROM `glogin_users` WHERE email = '".$email."'");

    ?>
    <!-- Body Begin -->
    <div class="table-title col-xl-6 col-md-10"><h3>Tenant Flow Results</h3></div>

    <div class="result-table-conteiner col-xl-6 col-md-10">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">Street</th>
                    <th scope="col">Street Number</th>
                    <th scope="col">Price</th>
                    <th scope="col">Size</th>
                    <th scope="col">Area</th>
                    <th scope="col">Number Of Rooms</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($conn->query($sql)) {

                    $result = $conn->query($sql);
                    while ($row = $result->fetch_array()) {
                        echo "<tr><td>" . $row['STREET'] . "</td>";
                        echo "<td class='number-result'>" . $row['STREET_NUMBER'] . "</td>";
                        echo "<td class='number-result'>" . $row['PRICE'] . "€</td>";
                        echo "<td class='number-result'>" . $row['SIZE'] . "m<sup>2</sup></td>";
                        echo "<td>" . $row['AREA'] . "</td>";
                        echo "<td class='number-result'>" . $row['NUMBER_OF_ROOMS'] . "</td></tr>";
                    }
                } else {
                    echo "Error: " . $sql . "
        " . $conn->error;
                }
                $conn->close();
            }
        }else{
            ?>
        </tbody>
    </table>
</div>

<?php
echo "no results yet";            
}
?>


<?php require 'footer.php'; ?>