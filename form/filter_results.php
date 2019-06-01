<?php

$numberOfRooms = $_GET['rooms'];
$minPrice = $_GET['minPrice'];
$maxPrice = $_GET['maxPrice'];
$minSize = $_GET['minSize'];
$maxSize = $_GET['maxSize'];
$area = $_GET['area'];
$flow = $_GET['flow'];

    $conn = mysqli_connect('localhost', 'root', '', 'kleinbotdb');
        
    if(!$conn)
    {
        echo 'Database Error: ' . mysqli_connect_error() ;
        exit;
    }

    // $sql = "SELECT IMAGE_NAME FROM images WHERE PROPERTY_ID='$propertyID'";
    $sql = 'SELECT PROPERTIES.ID, STREET, STREET_NUMBER, PRICE, SIZE, AREA, NUMBER_OF_ROOMS, PROPERTIES.IMAGE_NAME FROM PROPERTIES JOIN '.$flow.' ON PROPERTIES.ID = '.$flow.'.PROPERTY_ID 
    WHERE AREA LIKE ("' . $area . '") AND PRICE BETWEEN (' . $minPrice . ' ) AND ( ' . $maxPrice . ' ) AND NUMBER_OF_ROOMS >= ( ' . $numberOfRooms . ' ) 
    AND SIZE BETWEEN (' . $minSize . ' ) AND ( ' . $maxSize . ' )';


    $result = mysqli_query($conn, $sql);

    //Initialize array variable
    $dbdata = array();
    
    while ($row = $result->fetch_assoc())
    { 
        $dbdata[] = $row;
    }
    
    //Print array in JSON format
    echo json_encode($dbdata);

?>