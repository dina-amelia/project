<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Donatur Baru</title>
</head>
<body>
<div style="background-color: yellow">
        <div>
        <left >
        <img src="pyi.png" width="200px" height="80px" align="left"><font size="30"><center><b>PANTI YATIM INDONESIA</b><img src="pyi.png" width="200px" height="80px" align="right"></center> </font>
        </left>
        </div><br>

        <div style="background-color: orange"> 
            <a href="beranda.php">BERANDA |</a>
            <a href="pengasuh.php">DATA ANAK ASUH |</a>
            <a href="kegiatan.php">KEGIATAN |</a>
            <a href="gambar.php">GALERI |</a>
            <a href="donatur.php">DONATUR |</a>
            <a href="login.php">KELUAR</a>
        </div>

        <header>
        <h3>Tambah Donatur Baru</h3>
    </header>
    <form action="donatur.php" method="POST">
        <fieldset>
        <tr>
            <td><label for="id">Id Donatur : </label></td>
            <td><input type="text" name="id"/></td>
        </tr>

        <br><br><tr>
            <td><label for="nama">Nama Donatur : </label></td>
            <td><input type="text" name="nama"/></td>
        </tr>


        <p>
            <label for="nominal">Nominal : </label>
            <textarea name="nominal"></textarea>
        </p>

        <p>
            <label for="nohp">No Hp : </label>
            <input type="text" name="nohp">
        </p>

        <p>
            <label for="noHp">Keterangan : </label>
            <input type="text" name="keterangan">
        </p>

        <p>
            <input type="submit" value="Tambah" name="daftar"/>
        </p>
        </fieldset>
    
<?php
    if(isset($_POST['Tambah'])){

        
        $id = $_POST['id'];
        $nama = $_POST['nama'];
        $nominal = $_POST['nominal'];
        $noHp = $_POST['nohp'];
        $keterangan = $_POST['keterangan'];
    
        $sql = "INSERT INTO donatur
        (id_donatur, nama_donatur, nominal, no_hp, keterangan)
        VALUE ('$id',$nama','$nominal','$noHp','$keterangan')";
        $query = mysqli_query($koneksi, $sql);

    }
?>

<p><br><br><br><br><br>
            <tr><b>===| Kontak |===<br>
                Laznas PYI Yatim & Zakat</b>
                <br>Yayasan Panti Yatim Indonesia
                <br> - Call center: 081-2222-44-222
                <br> - Telepon: (022)-5401-334
                <br> - Whatsapp Center: 081-2211-85-555
                <br> - Email: mail@pantiyatim.or.id
                <br> Jalan Kopo Permai III, Cangkuang Kulon, Dayeuhkolot, Bandung, Jawa Barat 40239
            </tr>
        </p>
        <div id="last" style="background-color: orange"><center>Copyright@Dinaamelia</center></div>
        </div>
        </form>
        </div>
</body>
</html>