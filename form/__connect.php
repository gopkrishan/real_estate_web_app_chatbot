<?php
$FirstName = filter_input(INPUT_POST, 'Name');
$LastName = filter_input(INPUT_POST, 'LastName');
$Phone = filter_input(INPUT_POST, 'Phone');
$Email = filter_input(INPUT_POST, 'Email');
$City = filter_input(INPUT_POST, 'City');
$Area = filter_input(INPUT_POST, 'Area');
$Address = filter_input(INPUT_POST, 'Address');
$addressNumber = filter_input(INPUT_POST, 'AddressNumber');
$Size = filter_input(INPUT_POST, 'Size');
$sellDescription = filter_input(INPUT_POST, 'sellDescription');
$rentDescription = filter_input(INPUT_POST, 'rentDescription');
$sellPrice = filter_input(INPUT_POST, 'sellPrice');
$rentPrice = filter_input(INPUT_POST, 'rentPrice');
$Rooms = filter_input(INPUT_POST, 'Rooms');
// $image = filter_input(INPUT_POST, 'file_img');
$imageThumb = $_FILES["file_img"]["name"][0];

// echo '<pre>'; print_r($image); echo '</pre>';


// var_dump($image);

// exit();



if ((!empty($Area) && !empty($FirstName) && !empty($LastName) && !empty($Phone) && !empty($Email) && !empty($Area) &&  !empty($Address)  && !empty($Size) && !empty($Rooms)) && ((!empty($sellDescription) && !empty($sellPrice)) || (!empty($rentDescription) && !empty($rentPrice)))
) {
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

        $sql = "INSERT INTO users (FIRST_NAME, LAST_NAME, PHONE_NUMBER, EMAIL) values ('$FirstName','$LastName','$Phone', '$Email');";  // needs ; (semicolon) 
        $sql .= "INSERT INTO properties (USER_ID, CITY, AREA, STREET, STREET_NUMBER, SIZE, NUMBER_OF_ROOMS, IMAGE_NAME) values (LAST_INSERT_ID(), '$City','$Area', '$Address','$addressNumber','$Size', '$Rooms', '$imageThumb');";

        $sql .= " SELECT LAST_INSERT_ID() INTO @lastPropertiesID;";



        // if(isset($_POST['btn_submit']))
        // {
        //     for($i = 0; $i < count($_FILES['file_img']['name']); $i++)
        //     {
        //         $filetmp = $_FILES["file_img"]["tmp_name"][$i];
        //         $filename = $_FILES["file_img"]["name"][$i];
        //         $filetype = $_FILES["file_img"]["type"][$i];
        //         $filepath = "upload/".$filename;

        //     move_uploaded_file($filetmp, $filepath);

        //     // $sql = "INSERT INTO upload_img (img_name,img_path,img_type) VALUES ('$filename','$filepath','$filetype')";
        //     $sql .= "INSERT INTO images (PROPERTY_ID, IMAGE_NAME) values (@lastPropertiesID, '$filename');";
        //     // $result = mysql_query($sql);

        //     }
        // }

        if (isset($_POST['btn_upload'])) {
            for ($i = 0; $i < count($_FILES["file_img"]["name"]); ++$i) {
                $filetmp = $_FILES["file_img"]["tmp_name"][$i];
                $filename = $_FILES["file_img"]["name"][$i];
                $filetype = $_FILES["file_img"]["type"][$i];
                $filepath = "upload/" . $filename;

                move_uploaded_file($filetmp, $filepath);

                $sql .= "INSERT INTO images (PROPERTY_ID, IMAGE_NAME) VALUES (@lastPropertiesID, '$filename');";
            }

        }
        // exit();  // Debugging purpose

        if ((!empty($rentDescription) && !empty($rentPrice))) {
            $sql .= "INSERT INTO rent (PROPERTY_ID, PRICE, PROPERTY_DESCRIPTION) values (@lastPropertiesID, '$rentPrice', '$rentDescription');";
        }
        if ((!empty($sellDescription) && !empty($sellPrice))) {
            $sql .= "INSERT INTO sell (PROPERTY_ID, PRICE, PROPERTY_DESCRIPTION) values (@lastPropertiesID,'$sellPrice', '$sellDescription')";
        }

        if (!$conn->multi_query($sql)) {
            echo "Multi query failed: (" . $conn->errno . ") " . $conn->error;
        }
    }

    header('Location: index.html');
} else {
    echo "All fields are required";
    die();
}
