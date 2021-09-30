<?php 
    $koneksi = mysqli_connect("localhost","root","","panti_yatim");
 
    if (mysqli_connect_errno()){
        echo "Koneksi database gagal : " . mysqli_connect_error();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Donatur</title>
</head>
<body>
    <div style="background-color: yellow">
    <div style="background-color: yellow" height="1000px">

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

        <h2>Data Donatur</h2>
    <nav>
            <a href="tambah_donatur.php">[+] Tambah Donatur Baru</a>
    </nav>
    <br>
    <table border="1">
    <thead>
        <tr>
            <th>Id Donatur</th>
            <th>Nama Donatur</th>
            <th>Nominal</th>
            <th>No Hp</th>
            <th>Keterangan</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sql = "SELECT * FROM donatur";
        $query = mysqli_query($koneksi,$sql);

        while($donatur = mysqli_fetch_array($query)){
            echo "<tr>";
            echo "<td>" .$donatur['id_donatur']. "</td>";
            echo "<td>" .$donatur['nama_donatur']. "</td>";
            echo "<td>" .$donatur['nominal']. "</td>";
            echo "<td>" .$donatur['no_hp']. "</td>";
            echo "<td>" .$donatur['keterangan']. "</td>";
            echo "</tr>";
        }
        ?>
    </tbody>
    </table>
    <p>Total : <?php echo mysqli_num_rows($query) ?></p> 
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
    </div>
    </div>
    </body>
</html>