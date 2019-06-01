<?php
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
    ?>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
    </head>

    <body>

        <form action="uploadTest.php" method="post" enctype="multipart/form-data">
            <input type="file" name="file_img[]" multiple />
            <input type="submit" name="btn_upload" value="Upload">
        </form>

        <?php
        if (isset($_POST['btn_upload'])) {
            for ($i = 0; $i < count($_FILES['file_img']['name']); $i++) {
                $filetmp = $_FILES["file_img"]["tmp_name"][$i];
                $filename = $_FILES["file_img"]["name"][$i];
                $filetype = $_FILES["file_img"]["type"][$i];
                $filepath = "upload/" . $filename;

                move_uploaded_file($filetmp, $filepath);
                echo $filename;
                $sql = "INSERT INTO images (PROPERTY_ID, IMAGE_NAME) VALUES ('$i','$filename')";
                // $result = mysql_query($sql);
                mysqli_query($conn, $sql);
            }
        }

        if (!$conn->multi_query($sql)) {
            echo "Multi query failed: (" . $conn->errno . ") " . $conn->error;
        }
        
    }
    exit();
    header('Location: index.html');
    ?>

</body>

</html>