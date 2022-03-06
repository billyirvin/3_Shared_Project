<?php
    session_start();
    include_once 'conn.php';
    $sql1 = "SELECT ID FROM users WHERE username='$_SESSION[user]'";
    $result = $conn->query($sql1);
    while($row = mysql_fetch_array($result)) 
    { 
        $_SESSION['ID'] = $row['ID'];
        echo $row['ID']; 
    }
    mysqli_close($conn);
?>