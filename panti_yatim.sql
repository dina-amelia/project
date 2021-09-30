-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 30 Sep 2021 pada 13.06
-- Versi server: 5.7.33
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panti_yatim`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_anak_panti`
--

CREATE TABLE `data_anak_panti` (
  `no_induk` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `umur` varchar(20) DEFAULT NULL,
  `tahun_masuk_panti` varchar(30) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `tingkat_pendidikan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_anak_panti`
--

INSERT INTO `data_anak_panti` (`no_induk`, `nama`, `jenis_kelamin`, `umur`, `tahun_masuk_panti`, `kategori`, `tingkat_pendidikan`) VALUES
(101120, 'Ami', 'Perempuan', '9 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 3'),
(101121, 'Icha', 'Perempuan', '9 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 3'),
(101122, 'Kalista', 'Perempuan', '11 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 5'),
(101123, 'Sabrina', 'Perempuan', '12 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 5'),
(101124, 'Ljantika', 'Perempuan', '12 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 6'),
(101125, 'Rifa', 'Perempuan', '12 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 6'),
(101126, 'Ainun', 'Perempuan', '12 Tahun', '2021-03-20', 'Anak Asuh', 'SD Kelas 6'),
(101127, 'Sarah', 'Perempuan', '14 Tahun', '2021-03-20', 'Anak Asuh', 'SMP Kelas 2'),
(101128, 'zahra', 'Perempuan', '14 Tahun', '2021-03-20', 'Anak Asuh', 'SMP Kelas 2'),
(101129, 'Riska', 'Perempuan', '18 Tahun', '2021-03-20', 'Anak Asuh', 'SMA Kelas 3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `donatur`
--

CREATE TABLE `donatur` (
  `id_donatur` int(11) DEFAULT NULL,
  `nama_donatur` varchar(50) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `donatur`
--

INSERT INTO `donatur` (`id_donatur`, `nama_donatur`, `nominal`, `no_hp`, `keterangan`) VALUES
(1, 'Dina', 200000, '89561735366', 'semoga bermanfaat'),
(2, 'Salsa', 100000, '087654321567', 'Untuk sekolah ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id_kegiatan` int(11) NOT NULL,
  `judul_kegiatan` varchar(50) DEFAULT NULL,
  `isi_kegiatan` varchar(255) DEFAULT NULL,
  `gambar_kegiatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id_kegiatan`, `judul_kegiatan`, `isi_kegiatan`, `gambar_kegiatan`) VALUES
(1, 'Sholat Idul Fitri', 'Sholat berjamaah', 'k1.png'),
(2, 'Mengaji', 'Melakukan Btq setiap hari', 'k2.png'),
(3, 'Piket', 'Membersihkan area lingkungan sekitar panti', 'k3.png'),
(4, 'Hafalan', 'Hafalan juz amma', 'k4.png'),
(5, 'Daring', 'Mengerjakan tugas sekolah secara daring', 'k5.png'),
(6, 'Murojaah', 'Murojaah hafalan Al-Qur\'an', 'k6.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_donasi`
--

CREATE TABLE `konfirmasi_donasi` (
  `id_donatur` int(11) NOT NULL,
  `nama_donatur` varchar(50) DEFAULT NULL,
  `bank_pengirim` varchar(30) DEFAULT NULL,
  `bank_tujuan` varchar(30) DEFAULT NULL,
  `bukti_pengiriman` varchar(50) DEFAULT NULL,
  `tanggal_transfer` date DEFAULT NULL,
  `jam_transfer` varchar(10) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `nominal` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_keuangan`
--

CREATE TABLE `laporan_keuangan` (
  `id_laporan` int(11) NOT NULL,
  `id_pengeluaran` int(11) DEFAULT NULL,
  `id_donatur` int(11) DEFAULT NULL,
  `donasi` int(11) DEFAULT NULL,
  `pemasukan` varchar(45) DEFAULT NULL,
  `pengeluaran` varchar(45) DEFAULT NULL,
  `saldo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('dinaamel@gmail.com', '12345'),
('sila', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengelola`
--

CREATE TABLE `pengelola` (
  `id_pengelola` int(11) NOT NULL,
  `id_kegiatan` int(11) DEFAULT NULL,
  `id_pengeluaran` int(11) DEFAULT NULL,
  `id_galeri` int(11) DEFAULT NULL,
  `id_donasi` int(11) DEFAULT NULL,
  `konfirmasi_donasi` varchar(50) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telepon` varchar(15) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `no_induk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `keperluan` varchar(45) DEFAULT NULL,
  `jumlah_pengeluaran` varchar(45) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_anak_panti`
--
ALTER TABLE `data_anak_panti`
  ADD PRIMARY KEY (`no_induk`);

--
-- Indeks untuk tabel `donatur`
--
ALTER TABLE `donatur`
  ADD KEY `id_donatur` (`id_donatur`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indeks untuk tabel `konfirmasi_donasi`
--
ALTER TABLE `konfirmasi_donasi`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indeks untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_pengeluaran` (`id_pengeluaran`),
  ADD KEY `id_donatur` (`id_donatur`);

--
-- Indeks untuk tabel `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`id_pengelola`),
  ADD KEY `id_pengeluaran` (`id_pengeluaran`),
  ADD KEY `id_galeri` (`id_galeri`),
  ADD KEY `no_induk` (`no_induk`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indeks untuk tabel `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_anak_panti`
--
ALTER TABLE `data_anak_panti`
  MODIFY `no_induk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101130;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `donatur`
--
ALTER TABLE `donatur`
  ADD CONSTRAINT `donatur_ibfk_1` FOREIGN KEY (`id_donatur`) REFERENCES `konfirmasi_donasi` (`id_donatur`);

--
-- Ketidakleluasaan untuk tabel `laporan_keuangan`
--
ALTER TABLE `laporan_keuangan`
  ADD CONSTRAINT `laporan_keuangan_ibfk_1` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `laporan_keuangan_ibfk_2` FOREIGN KEY (`id_donatur`) REFERENCES `konfirmasi_donasi` (`id_donatur`);

--
-- Ketidakleluasaan untuk tabel `pengelola`
--
ALTER TABLE `pengelola`
  ADD CONSTRAINT `pengelola_ibfk_1` FOREIGN KEY (`id_pengeluaran`) REFERENCES `pengeluaran` (`id_pengeluaran`),
  ADD CONSTRAINT `pengelola_ibfk_2` FOREIGN KEY (`id_galeri`) REFERENCES `galeri` (`id_galeri`),
  ADD CONSTRAINT `pengelola_ibfk_3` FOREIGN KEY (`no_induk`) REFERENCES `data_anak_panti` (`no_induk`),
  ADD CONSTRAINT `pengelola_ibfk_4` FOREIGN KEY (`id_kegiatan`) REFERENCES `kegiatan` (`id_kegiatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
