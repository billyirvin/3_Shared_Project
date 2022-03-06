<html>
<style>
table.mytable-marg{
	border-collapse: collapse;
}
table.mytable-marg td, table.mytable-marg th{
  border: 1px solid #ccc;
    background-color:white;
}
.mytable-marg{
	display: flex;
    justify-content: center;
}
div.solid {border-color: blue; border-style: solid; width: 400px; height: auto; padding:25px;background-color:white}
div.center{position: static;top: 50%;left: 50%;}
</style>
<body style="background-color:skyblue">
<div class=center>
<div align=center >
<p><b>This is your antigen test</b></p>
<table style="width:50%" class="mytable-marg">
  <tr>
      <th >Name</th>
      <th >Phone number</th>
      <th >Email</th>
  </tr>
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
    $encryption_iv = random_bytes(16);
    $biniv = bin2hex($encryption_iv);
    $encryption_key = "crypto";
    $user = $_SESSION['login_username'];
    $loginid = $_SESSION['login_ID'];
    $sql = "SELECT image FROM users WHERE ID = '$loginid'";
    $sql3 = "SELECT IV FROM users WHERE ID ='$loginid'";
    $res3 = $conn->query($sql3);
    $row3=mysqli_fetch_assoc($res3);
    $sql1 = "SELECT ID FROM users WHERE username='$user'";
    $res1 = $conn->query($sql1);
    $res = $conn->query($sql);
    $row=mysqli_fetch_assoc($res);
    $newciphertext = $row['image'];
    $iv1 = hex2bin($row3['IV']);
    $img = openssl_decrypt($newciphertext, $ciphering, $encryption_key, $options, $iv1);
    echo '<tr><img src="data:image/jpeg;base64,'.base64_encode($img).'" height="300" width="300"/></tr>';
    echo '<p><b>These are your close contacts</b></p>';
    while($row1 = $res1->fetch_assoc()) 
    {
        $id = $row1['ID'];
        $sql2 ="SELECT * FROM contacts WHERE ID='$id'";
        $res2 = $conn->query($sql2);
        while($row2=$res2->fetch_assoc())
        {
            echo '
                    <tr>
                        <td>'.openssl_decrypt($row2['Name'], $ciphering, $encryption_key, $options, hex2bin($row2['IV'])).'</td>
                        <td>'.openssl_decrypt($row2['Number'], $ciphering, $encryption_key, $options, hex2bin($row2['IV'])).'</td>
                        <td>'.openssl_decrypt($row2['Email'], $ciphering, $encryption_key, $options, hex2bin($row2['IV'])).'</td>
                        </tr>
                    ';
            
        }
    }
?>
</table>
    <br>
    <form action="insert.php" method="post" enctype="multipart/form-data">
    <div class="inputbox">
    <label for="Name">Name:&emsp;&emsp;</label>
    <input type="text" name="Name" id="Name" size="5" required/>
    </div>
    <br>
    <div class="inputbox">
    <label for="Number">Phone:&emsp;&emsp;</label>
    <input type="text" name="Number" id="Number" size="5" required/>
    </div>
    <br>
    <div class="inputbox">
    <label for="Email">Email:&emsp;&emsp;</label>
    <input type="text" name="Email" id="Email" size="5" required/>
    </div>
    <br>
    <p>Submit close contact</p>
    <input type=submit>
    </form>
<a href="logout.php"><button>Logout</button></a>
</div>
</div>
</body>
</html>