<?php
    session_start();
    include_once 'conn.php'; 
    if(!isset($_SESSION['login_ID']))
    {
    header('location:login.html');
    }
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_key = "crypto";
    $Password = $_POST['Password'];
    $sql = 'SELECT username,password,IV FROM users';
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc()) 
    { 
        $iv = hex2bin($row['IV']);
        $hashedUsername = openssl_encrypt($_POST['Username'], $ciphering, $encryption_key, $options, $iv);
        if($hashedUsername == $row['username'] && password_verify($Password,$row['password']))
        {
            $_SESSION['login_username'] = $hashedUsername;
            $sql1 = "SELECT ID FROM users WHERE username='$hashedUsername'";
            $result1 = $conn->query($sql1);
            $row1=mysqli_fetch_assoc($result1);
            $_SESSION['login_ID'] = $row1['ID'];
            echo "<script>location.href = 'info.php';</script>"; 
        }
        else
        {
            echo "<script>location.href = 'login.html';</script>";
        }
    }
    mysqli_close($conn);
?>