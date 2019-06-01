<?php

$propertyID = $_GET['pid'];

    $conn = mysqli_connect('localhost', 'root', '', 'kleinbotdb');
        
    if(!$conn)
    {
        echo 'Database Error: ' . mysqli_connect_error() ;
        exit;
    }

    $sql = "SELECT PRICE, PROPERTY_DESCRIPTION FROM SELL WHERE PROPERTY_ID = '$propertyID' UNION SELECT  PRICE, PROPERTY_DESCRIPTION FROM RENT WHERE PROPERTY_ID = '$propertyID'";

    $result = mysqli_query($conn, $sql);

    //Initialize array variable
    $dbdata = array();
    
    while ($row = $result->fetch_assoc())
    { 
        $dbdata[] = $row;
    }
    echo json_encode($dbdata);
    
    //Print array in JSON format

?>