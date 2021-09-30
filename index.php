<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Index</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<style>
    .body{
        height: 1000px;
    }
</style>
<body>
    <br>
<div style="background-color: yellow;" align="center">
    <div class="container">
        <left >
        <img src="pyi.png" width="200px" height="80px" align="left"><font size="30"><center><b>Form Login</b><img src="pyi.png" width="200px" height="80px" align="right"></center> </font>
        </left>
        </div> 
            <hr>
      <form method="POST" action="login.php" class="body">
        <div class="form-group"><br><br>
          <label for="exampleInputEmail1">Username :</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-user"></i></div>
              </div>
              <input type="text" class="form-control" placeholder="Masukkan Username" name="username" required>
            </div>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Password :</label>
            <div class="input-group">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fas fa-unlock-alt"></i></div>
              </div>
              <input type="password" class="form-control" placeholder="Masukkan Password" name="password" required>
          </div>
        </div>
        <button type="submit" name="submit" class="btn btn-primary">LOGIN</button>
        <button type="reset" name="reset" class="btn btn-danger">RESET</button><br><br>

        <?php 
        if(isset($_GET['pesan'])){
            if($_GET['pesan'] == "gagal"){
                echo "<b>Login gagal! username dan password salah!</b>";
            }else{
            }
        }
    ?>

      </form>
    </div>
</div>
</body>
</html>