<?php
    session_start();
    include_once 'conn.php'; 
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_iv = random_bytes(16);
    $biniv = bin2hex($encryption_iv);
    $encryption_key = "crypto";
    $image = file_get_contents($_FILES["image"]["tmp_name"]);
    $encrypted_Image= openssl_encrypt($image, $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedUsername = openssl_encrypt($_POST['Username'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedPassword = password_hash($_POST['Password'],PASSWORD_DEFAULT);
    $hashedName = openssl_encrypt($_POST['name'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedAddress = openssl_encrypt($_POST['Address'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedDOB = openssl_encrypt($_POST['DOB'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedPhone = openssl_encrypt($_POST['phone'], $ciphering, $encryption_key, $options, $encryption_iv);
    $_SESSION['user'] = $hashedUsername;
    $sql = "INSERT INTO users (ID,Username,Password,name,Address,DOB,phone,image,IV) VALUES (NULL,'$hashedUsername','$hashedPassword','$hashedName','$hashedAddress','$hashedDOB','$hashedPhone','\"". addslashes($encrypted_Image)."\"','$biniv')";
    $id = mysqli_insert_id($conn);
    $_SESSION['Image_id'] = $id;
    if(mysqli_query($conn, $sql)) 
    {
     echo "<script>location.href = 'CloseContact.html';</script>";
    } 
    else 
    {
        echo $sql;
    }
    mysqli_close($conn);
?>