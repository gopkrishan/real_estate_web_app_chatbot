<?php

$propertyID = $_GET['pid'];

    $conn = mysqli_connect('localhost', 'root', '', 'kleinbotdb');
        
    if(!$conn)
    {
        echo 'Database Error: ' . mysqli_connect_error() ;
        exit;
    }

    $sql = "SELECT users.FIRST_NAME, users.LAST_NAME, users.PHONE_NUMBER, users.EMAIL from users join properties on properties.USER_ID = users.ID where properties.ID =  '$propertyID'";

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