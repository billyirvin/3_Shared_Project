<?php
    session_start();
    include_once 'conn.php'; 
    $ciphering = "AES-128-CTR";
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options   = 0;
    $encryption_iv = random_bytes(16);
    $biniv =bin2hex($encryption_iv);
    $encryption_key = "crypto";
    $submit = $_POST['submit'];
    $hashedName = openssl_encrypt($_POST['Name'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedNumber = openssl_encrypt($_POST['Number'], $ciphering, $encryption_key, $options, $encryption_iv);
    $hashedEmail = openssl_encrypt($_POST['Email'], $ciphering, $encryption_key, $options, $encryption_iv);
    $sql = "SELECT ID FROM users WHERE username='$_SESSION[user]'";
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc()) 
    { 
        if($submit)
        {
        $id = $row['ID'];
        $sql1 = "INSERT INTO contacts (ID,Name,Number,Email,IV) VALUES ('$id','$hashedName','$hashedNumber','$hashedEmail','$biniv')";
            if (mysqli_query($conn, $sql1)) 
            {
                echo "<script>location.href = 'CloseContact.html';</script>";
                echo "New record created successfully";
            } 
            else 
            {
                echo "Error: " . $sql1 . "<br>" . mysqli_error($conn);
            }
        }
    }
    
    mysqli_close($conn);
?>