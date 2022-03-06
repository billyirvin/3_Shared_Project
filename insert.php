<?php
    session_start();
    include_once 'conn.php'; 
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_iv = random_bytes(16);
    $biniv = bin2hex($encryption_iv);
    $encryption_key = "crypto";
    $loginid = $_SESSION['login_ID'];
    $Name = openssl_encrypt($_POST['Name'], $ciphering, $encryption_key, $options, $encryption_iv);
    $Number = openssl_encrypt($_POST['Number'],$ciphering, $encryption_key, $options, $encryption_iv);
    $Email = openssl_encrypt($_POST['Email'], $ciphering, $encryption_key, $options, $encryption_iv);
    $sql4 = "INSERT INTO contacts (ID,Name,Number,Email,IV) VALUES ('$loginid','$Name','$Number','$Email','$biniv')";
    if(mysqli_query($conn, $sql4)) 
    {
     echo "<script>location.href = 'info.php';</script>";
    } 
    else 
    {
        echo $sql;
    }
    mysqli_close($conn);
?>