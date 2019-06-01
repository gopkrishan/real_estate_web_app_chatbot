<?php

$propertyID = $_GET['pid'];

    $conn = mysqli_connect('localhost', 'root', '', 'kleinbotdb');
        
    if(!$conn)
    {
        echo 'Database Error: ' . mysqli_connect_error() ;
        exit;
    }

    $sql = "SELECT IMAGE_NAME FROM images WHERE PROPERTY_ID='$propertyID'";

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