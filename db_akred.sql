-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jun 2021 pada 09.46
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akred`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_akred_prodi`
--

CREATE TABLE `tbl_akred_prodi` (
  `id_akred_prodi` int(5) NOT NULL,
  `nama_prodi` varchar(40) NOT NULL,
  `jenis_program` varchar(40) NOT NULL,
  `peringkat_akred` int(10) NOT NULL,
  `nomor_sk_ban` varchar(40) NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `nama_unit_pengelola` varchar(50) NOT NULL,
  `nama_perti` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `kota_kab` varchar(40) NOT NULL,
  `kode_post` int(10) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `website` varchar(50) NOT NULL,
  `id_thajaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_akred_prodi`
--

INSERT INTO `tbl_akred_prodi` (`id_akred_prodi`, `nama_prodi`, `jenis_program`, `peringkat_akred`, `nomor_sk_ban`, `tgl_kadaluarsa`, `nama_unit_pengelola`, `nama_perti`, `alamat`, `kota_kab`, `kode_post`, `telp`, `email`, `website`, `id_thajaran`) VALUES
(1, '', '', 0, '', '0000-00-00', '', '', 'Perumahan Uniga Kavling 13, -', 'Malang', 65144, '081936858544', 'baktiarmahardika08@gmail.com', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen_tdk_tetap`
--

CREATE TABLE `tbl_dosen_tdk_tetap` (
  `id_dosen_tdk_tetap` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `nidn` varchar(255) DEFAULT NULL,
  `pend_pasca_sarjana` varchar(255) DEFAULT NULL,
  `bid_keahlian` varchar(255) DEFAULT NULL,
  `jab_akademik` varchar(255) DEFAULT NULL,
  `sertif_pendidik` varchar(255) DEFAULT NULL,
  `sertif_komp` varchar(255) DEFAULT NULL,
  `matkul_ps_akred` varchar(255) DEFAULT NULL,
  `kesesuaian_bid_matkul` varchar(255) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_dosen_tdk_tetap`
--

INSERT INTO `tbl_dosen_tdk_tetap` (`id_dosen_tdk_tetap`, `nama_dosen`, `nidn`, `pend_pasca_sarjana`, `bid_keahlian`, `jab_akademik`, `sertif_pendidik`, `sertif_komp`, `matkul_ps_akred`, `kesesuaian_bid_matkul`, `id_akred_prodi`) VALUES
(1, 'Dosen Tidak Tetap', '1', '1', '1', '1', '1', '1', '1', '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen_tetap`
--

CREATE TABLE `tbl_dosen_tetap` (
  `id_dosen` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `nidn` varchar(25) DEFAULT NULL,
  `bidang_keahlian` varchar(50) DEFAULT NULL,
  `kesesuaian_KIPS` int(5) DEFAULT NULL,
  `jab_akademik` varchar(255) DEFAULT NULL,
  `sertif_pendidik` varchar(255) DEFAULT NULL,
  `sertif_kompetensi` varchar(255) DEFAULT NULL,
  `matkul_yang_diampu` varchar(255) DEFAULT NULL,
  `kesesuaian_matkul` int(5) DEFAULT NULL,
  `matkul_PS_lain` varchar(255) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_dosen_tetap`
--

INSERT INTO `tbl_dosen_tetap` (`id_dosen`, `nama_dosen`, `nidn`, `bidang_keahlian`, `kesesuaian_KIPS`, `jab_akademik`, `sertif_pendidik`, `sertif_kompetensi`, `matkul_yang_diampu`, `kesesuaian_matkul`, `matkul_PS_lain`, `id_akred_prodi`) VALUES
(1, 'Dosen Tetap', '1', '1', 1, '1', '1', '1', '1', 1, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dospem_ta`
--

CREATE TABLE `tbl_dospem_ta` (
  `id_dospem_ta` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `ts2_ps_akred` int(5) DEFAULT NULL,
  `ts1_ps_akred` int(5) DEFAULT NULL,
  `ts_ps_akred` int(5) DEFAULT NULL,
  `ts2_lain_pt` int(5) DEFAULT NULL,
  `ts1_lain_pt` int(5) DEFAULT NULL,
  `ts_lain_pt` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_dospem_ta`
--

INSERT INTO `tbl_dospem_ta` (`id_dospem_ta`, `nama_dosen`, `ts2_ps_akred`, `ts1_ps_akred`, `ts_ps_akred`, `ts2_lain_pt`, `ts1_lain_pt`, `ts_lain_pt`, `id_akred_prodi`) VALUES
(1, 'Dosen Pembimbing TA', 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ewmp_dosen_pti`
--

CREATE TABLE `tbl_ewmp_dosen_pti` (
  `id_ewmp_dosen_pti` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `dtps` varchar(255) DEFAULT NULL,
  `ps_akred` varchar(255) DEFAULT NULL,
  `ps_lain_dalam_pt` varchar(255) DEFAULT NULL,
  `ps_lain_luar_pt` varchar(255) DEFAULT NULL,
  `penelitian` varchar(255) DEFAULT NULL,
  `pkm` varchar(255) DEFAULT NULL,
  `tugas_tambahan` varchar(255) DEFAULT NULL,
  `jml_sks` int(255) DEFAULT NULL,
  `avg_per_smt` varchar(255) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_ewmp_dosen_pti`
--

INSERT INTO `tbl_ewmp_dosen_pti` (`id_ewmp_dosen_pti`, `nama_dosen`, `dtps`, `ps_akred`, `ps_lain_dalam_pt`, `ps_lain_luar_pt`, `penelitian`, `pkm`, `tugas_tambahan`, `jml_sks`, `avg_per_smt`, `id_akred_prodi`) VALUES
(1, 'EWMP Dosen Tetap', '1', '1', '1', '1', '1', '1', '1', 1, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_integrasi_pkm`
--

CREATE TABLE `tbl_integrasi_pkm` (
  `id_integrasi_pkm` int(5) NOT NULL,
  `judul_penelitian` varchar(255) DEFAULT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `matkul` varchar(255) DEFAULT NULL,
  `bentuk_integrasi` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_integrasi_pkm`
--

INSERT INTO `tbl_integrasi_pkm` (`id_integrasi_pkm`, `judul_penelitian`, `nama_dosen`, `matkul`, `bentuk_integrasi`, `tahun`, `id_akred_prodi`) VALUES
(1, 'Judul Penelitian', 'Nama dosen', 'Matkul', 'Bentuk Integrasi', 2021, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ipk`
--

CREATE TABLE `tbl_ipk` (
  `id_ipk` int(5) NOT NULL,
  `tahun_lulus` varchar(25) DEFAULT NULL,
  `jml_lulusan` int(15) DEFAULT NULL,
  `ipk_min` varchar(10) DEFAULT NULL,
  `ipk_max` varchar(10) DEFAULT NULL,
  `avg_ipk` varchar(10) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_ipk`
--

INSERT INTO `tbl_ipk` (`id_ipk`, `tahun_lulus`, `jml_lulusan`, `ipk_min`, `ipk_max`, `avg_ipk`, `id_akred_prodi`) VALUES
(1, 'Tahun lulus', 100, '100', '100', '100', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jab_akademik`
--

CREATE TABLE `tbl_jab_akademik` (
  `id_jab_akademik` int(5) NOT NULL,
  `jab_akademik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_jab_akademik`
--

INSERT INTO `tbl_jab_akademik` (`id_jab_akademik`, `jab_akademik`) VALUES
(1, 'Tenaga Pengajar'),
(2, 'Asisten Ahli'),
(3, 'Lektor'),
(4, 'Lektor Kepala'),
(5, 'Guru Besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepuasan_lulusan`
--

CREATE TABLE `tbl_kepuasan_lulusan` (
  `id_kepuasan_lulusan` int(5) NOT NULL,
  `tahun_lulus` varchar(10) DEFAULT NULL,
  `jml_lulusan` int(10) DEFAULT NULL,
  `jml_tanggapan` int(10) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepuasan_mhs`
--

CREATE TABLE `tbl_kepuasan_mhs` (
  `id_kepuasan_mhs` int(5) NOT NULL,
  `aspek` text DEFAULT NULL,
  `prosen_sb` varchar(5) DEFAULT NULL,
  `prosen_b` varchar(5) DEFAULT NULL,
  `prosen_c` varchar(5) DEFAULT NULL,
  `prosen_k` varchar(5) DEFAULT NULL,
  `tindak_lanjut_upps` text DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kepuasan_mhs`
--

INSERT INTO `tbl_kepuasan_mhs` (`id_kepuasan_mhs`, `aspek`, `prosen_sb`, `prosen_b`, `prosen_c`, `prosen_k`, `tindak_lanjut_upps`, `id_akred_prodi`) VALUES
(1, 'Aspek', 'SB', 'Baik', 'Cukup', 'Kuran', 'Tindak Lanjut UPPS', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kepuasan_pengguna_lulusan`
--

CREATE TABLE `tbl_kepuasan_pengguna_lulusan` (
  `id_kepuasan_pengguna_lulusan` int(5) NOT NULL,
  `jenis_kemampuan` varchar(50) DEFAULT NULL,
  `prosen_sb` varchar(10) DEFAULT NULL,
  `prosen_b` varchar(10) DEFAULT NULL,
  `prosen_c` varchar(10) DEFAULT NULL,
  `prosen_k` varchar(10) DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kerjasama_pendidikan`
--

CREATE TABLE `tbl_kerjasama_pendidikan` (
  `id_kerj_pend` int(5) NOT NULL,
  `lembaga_mitra` varchar(25) NOT NULL,
  `tingkat` int(5) NOT NULL,
  `judul_keg_kerjasama` text NOT NULL,
  `manfaat` text NOT NULL,
  `waktu_durasi` varchar(40) NOT NULL,
  `bukti_kerjasama` varchar(50) NOT NULL,
  `tahun_berakhir` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kerjasama_pendidikan`
--

INSERT INTO `tbl_kerjasama_pendidikan` (`id_kerj_pend`, `lembaga_mitra`, `tingkat`, `judul_keg_kerjasama`, `manfaat`, `waktu_durasi`, `bukti_kerjasama`, `tahun_berakhir`, `timestamp`, `id_akred_prodi`) VALUES
(1, 'Tbl Pendidikan', 1, 'kegiatan', 'manfaat', 'waktu', 'bukti', 1, '2021-06-26 06:41:02', 1),
(2, 'lembaga mitra', 2, '2', '', '2', '22', 2, '2021-04-15 02:55:42', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kerjasama_penelitian`
--

CREATE TABLE `tbl_kerjasama_penelitian` (
  `id_kerj_pen` int(5) NOT NULL,
  `lembaga_mitra` varchar(25) NOT NULL,
  `tingkat` int(5) NOT NULL,
  `judul_keg_kerjasama` text NOT NULL,
  `manfaat` varchar(255) NOT NULL,
  `waktu_durasi` varchar(40) NOT NULL,
  `bukti_kerjasama` varchar(50) NOT NULL,
  `tahun_berakhir` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kerjasama_penelitian`
--

INSERT INTO `tbl_kerjasama_penelitian` (`id_kerj_pen`, `lembaga_mitra`, `tingkat`, `judul_keg_kerjasama`, `manfaat`, `waktu_durasi`, `bukti_kerjasama`, `tahun_berakhir`, `timestamp`, `id_akred_prodi`) VALUES
(1, 'lembaga mitra', 3, '1', '', '1', '1', 1, '2021-04-15 02:56:03', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kerjasama_peng_masy`
--

CREATE TABLE `tbl_kerjasama_peng_masy` (
  `id_kerj_peng` int(5) NOT NULL,
  `lembaga_mitra` varchar(25) NOT NULL,
  `tingkat` int(5) NOT NULL,
  `judul_keg_kerjasama` text NOT NULL,
  `manfaat` varchar(255) NOT NULL,
  `waktu_durasi` varchar(40) NOT NULL,
  `bukti_kerjasama` varchar(50) NOT NULL,
  `tahun_berakhir` int(5) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kerjasama_peng_masy`
--

INSERT INTO `tbl_kerjasama_peng_masy` (`id_kerj_peng`, `lembaga_mitra`, `tingkat`, `judul_keg_kerjasama`, `manfaat`, `waktu_durasi`, `bukti_kerjasama`, `tahun_berakhir`, `timestamp`, `id_akred_prodi`) VALUES
(1, 'lembaga', 2, '2', '2', '2 ', '2', 2, '2021-04-15 02:56:19', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kesesuaian_bidang_kerja`
--

CREATE TABLE `tbl_kesesuaian_bidang_kerja` (
  `id_bidang_kerja_lulusan` int(5) NOT NULL,
  `tahun_lulus` varchar(10) DEFAULT NULL,
  `jml_lulusan` int(10) DEFAULT NULL,
  `jml_lulusan_terlacak` int(10) DEFAULT NULL,
  `jml_kesesuaian_rendah` int(10) DEFAULT NULL,
  `jml_kesesuaian_sedang` int(10) DEFAULT NULL,
  `jml_kesesuaian_tinggi` int(10) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kesesuaian_bidang_kerja`
--

INSERT INTO `tbl_kesesuaian_bidang_kerja` (`id_bidang_kerja_lulusan`, `tahun_lulus`, `jml_lulusan`, `jml_lulusan_terlacak`, `jml_kesesuaian_rendah`, `jml_kesesuaian_sedang`, `jml_kesesuaian_tinggi`, `id_akred_prodi`) VALUES
(1, '2021', 100, 98, 67, 21, 2, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ki_dtps_sitasi`
--

CREATE TABLE `tbl_ki_dtps_sitasi` (
  `id_ki_dtps_sitasi` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `judul_artikel` varchar(255) DEFAULT NULL,
  `jumlah_sitasi` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_ki_dtps_sitasi`
--

INSERT INTO `tbl_ki_dtps_sitasi` (`id_ki_dtps_sitasi`, `nama_dosen`, `judul_artikel`, `jumlah_sitasi`, `id_akred_prodi`) VALUES
(1, 'Karya Ilmiah DTPS', '1', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(5) NOT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `kode_matkul` varchar(15) DEFAULT NULL,
  `nama_matkul` varchar(255) NOT NULL,
  `matkul_kompetensi` varchar(50) DEFAULT NULL,
  `sks_kuliah` varchar(255) DEFAULT NULL,
  `sks_seminar` varchar(255) DEFAULT NULL,
  `sks_praktikum` varchar(255) DEFAULT NULL,
  `konversi_kredit` varchar(255) DEFAULT NULL,
  `capem_sikap` varchar(15) DEFAULT NULL,
  `capem_pengetahuan` varchar(15) DEFAULT NULL,
  `capem_keterampilan_umum` varchar(15) DEFAULT NULL,
  `capem_keterampilan_khusus` varchar(15) DEFAULT NULL,
  `dok_renc_pembelajaran` varchar(255) DEFAULT NULL,
  `unit_penyelenggara` varchar(255) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `semester`, `kode_matkul`, `nama_matkul`, `matkul_kompetensi`, `sks_kuliah`, `sks_seminar`, `sks_praktikum`, `konversi_kredit`, `capem_sikap`, `capem_pengetahuan`, `capem_keterampilan_umum`, `capem_keterampilan_khusus`, `dok_renc_pembelajaran`, `unit_penyelenggara`, `id_akred_prodi`) VALUES
(1, 'semester', 'kode matkul', 'Kurikulum, Capaian Pembelajaran, dan Rencana Pembelajaran', 'matkul kompetensi', 'sks kuliah', 'sks seminar', 'sks praktikum', 'konversi kredit', 'capem sikap', 'capem pengetahu', 'capem keterampi', 'capem keterampi', 'dok renc pembelajaran', 'unit penyelenggara', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhs_asing`
--

CREATE TABLE `tbl_mhs_asing` (
  `id_mhs_asing` int(5) NOT NULL,
  `prodi` varchar(50) DEFAULT NULL,
  `ts2_mhs_aktif` int(5) DEFAULT NULL,
  `ts1_mhs_aktif` int(5) DEFAULT NULL,
  `ts_mhs_aktif` int(5) DEFAULT NULL,
  `ts2_mhs_ft` int(5) DEFAULT NULL,
  `ts1_mhs_ft` int(5) DEFAULT NULL,
  `ts_mhs_ft` int(5) DEFAULT NULL,
  `ts2_mhs_pt` int(5) DEFAULT NULL,
  `ts1_mhs_pt` int(5) DEFAULT NULL,
  `ts_mhs_pt` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_mhs_asing`
--

INSERT INTO `tbl_mhs_asing` (`id_mhs_asing`, `prodi`, `ts2_mhs_aktif`, `ts1_mhs_aktif`, `ts_mhs_aktif`, `ts2_mhs_ft`, `ts1_mhs_ft`, `ts_mhs_ft`, `ts2_mhs_pt`, `ts1_mhs_pt`, `ts_mhs_pt`, `id_akred_prodi`) VALUES
(1, 'MHS Asing', 1, 2, 1, 2, 12, 12, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penggunaan_dana`
--

CREATE TABLE `tbl_penggunaan_dana` (
  `id_penggunaan_dana` int(5) NOT NULL,
  `jenis_penggunaan` varchar(255) DEFAULT NULL,
  `ts2_unit_pengelola_prodi` int(25) DEFAULT NULL,
  `ts1_unit_pengelola_prodi` int(25) DEFAULT NULL,
  `ts_unit_pengelola_prodi` int(25) DEFAULT NULL,
  `avg_unit_pengelola_prodi` varchar(255) DEFAULT NULL,
  `ts2_prodi` int(25) DEFAULT NULL,
  `ts1_prodi` int(25) DEFAULT NULL,
  `ts_prodi` int(25) DEFAULT NULL,
  `avg_prodi` varchar(255) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_penggunaan_dana`
--

INSERT INTO `tbl_penggunaan_dana` (`id_penggunaan_dana`, `jenis_penggunaan`, `ts2_unit_pengelola_prodi`, `ts1_unit_pengelola_prodi`, `ts_unit_pengelola_prodi`, `avg_unit_pengelola_prodi`, `ts2_prodi`, `ts1_prodi`, `ts_prodi`, `avg_prodi`, `id_akred_prodi`) VALUES
(1, 'Penggunaan Dana', 2, 1, 1, '1', 2, 1, 1, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_dtps`
--

CREATE TABLE `tbl_pen_dtps` (
  `id_pen_dtps` int(5) NOT NULL,
  `sumber_biaya` varchar(255) DEFAULT NULL,
  `jml_ts2` int(5) DEFAULT NULL,
  `jml_ts1` int(5) DEFAULT NULL,
  `jml_ts` int(5) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pen_dtps`
--

INSERT INTO `tbl_pen_dtps` (`id_pen_dtps`, `sumber_biaya`, `jml_ts2`, `jml_ts1`, `jml_ts`, `jumlah`, `id_akred_prodi`) VALUES
(1, 'Penelitian DTPS', 2, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_dtps_mhs`
--

CREATE TABLE `tbl_pen_dtps_mhs` (
  `id_pen_dtps_mhs` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `tema_pen` varchar(255) DEFAULT NULL,
  `nama_mhs` varchar(255) DEFAULT NULL,
  `judul_keg` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pen_dtps_mhs`
--

INSERT INTO `tbl_pen_dtps_mhs` (`id_pen_dtps_mhs`, `nama_dosen`, `tema_pen`, `nama_mhs`, `judul_keg`, `tahun`, `id_akred_prodi`) VALUES
(1, 'Nama Dosen', 'Tema penelitian ', 'Nama Mahasiswa', 'Judul Kegiatan', 2021, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_dtps_hakcipta`
--

CREATE TABLE `tbl_pen_pkm_dtps_hakcipta` (
  `id_pen_pkm_dtps_hakcipta` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_dtps_isbn`
--

CREATE TABLE `tbl_pen_pkm_dtps_isbn` (
  `id_pen_pkm_dtps_isbn` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pen_pkm_dtps_isbn`
--

INSERT INTO `tbl_pen_pkm_dtps_isbn` (`id_pen_pkm_dtps_isbn`, `luaran_pen_pkm`, `tahun`, `keterangan`, `id_akred_prodi`) VALUES
(1, 'Book Chapter', 2021, 'Keterangan', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_dtps_paten`
--

CREATE TABLE `tbl_pen_pkm_dtps_paten` (
  `id_pen_pkm_dtps_paten` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_dtps_teknocepat`
--

CREATE TABLE `tbl_pen_pkm_dtps_teknocepat` (
  `id_pen_pkm_dtps_teknocepat` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pen_pkm_dtps_teknocepat`
--

INSERT INTO `tbl_pen_pkm_dtps_teknocepat` (`id_pen_pkm_dtps_teknocepat`, `luaran_pen_pkm`, `tahun`, `keterangan`, `id_akred_prodi`) VALUES
(1, 'Tekno Cepat', 1, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_mhs_hakcipta`
--

CREATE TABLE `tbl_pen_pkm_mhs_hakcipta` (
  `id_pen_pkm_mhs_hakcipta` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_mhs_isbn`
--

CREATE TABLE `tbl_pen_pkm_mhs_isbn` (
  `id_pen_pkm_mhs_isbn` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_mhs_paten`
--

CREATE TABLE `tbl_pen_pkm_mhs_paten` (
  `id_pen_pkm_mhs_paten` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pen_pkm_mhs_paten`
--

INSERT INTO `tbl_pen_pkm_mhs_paten` (`id_pen_pkm_mhs_paten`, `luaran_pen_pkm`, `tahun`, `keterangan`, `id_akred_prodi`) VALUES
(1, 'HKI Paten', 1, '1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pen_pkm_mhs_teknocepat`
--

CREATE TABLE `tbl_pen_pkm_mhs_teknocepat` (
  `id_pen_pkm_mhs_teknocepat` int(5) NOT NULL,
  `luaran_pen_pkm` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pkm_dtps`
--

CREATE TABLE `tbl_pkm_dtps` (
  `id_pkm_dtps` int(5) NOT NULL,
  `sumber_biaya` varchar(255) DEFAULT NULL,
  `jml_ts2` int(5) DEFAULT NULL,
  `jml_ts1` int(5) DEFAULT NULL,
  `jml_ts` int(5) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pkm_dtps`
--

INSERT INTO `tbl_pkm_dtps` (`id_pkm_dtps`, `sumber_biaya`, `jml_ts2`, `jml_ts1`, `jml_ts`, `jumlah`, `id_akred_prodi`) VALUES
(1, 'PKM DTPS', 2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pkm_dtps_mhs`
--

CREATE TABLE `tbl_pkm_dtps_mhs` (
  `id_pen_dtps_mhs` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `tema_pkm` varchar(255) DEFAULT NULL,
  `nama_mhs` varchar(255) DEFAULT NULL,
  `judul_keg` varchar(255) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pkm_dtps_mhs`
--

INSERT INTO `tbl_pkm_dtps_mhs` (`id_pen_dtps_mhs`, `nama_dosen`, `tema_pkm`, `nama_mhs`, `judul_keg`, `tahun`, `id_akred_prodi`) VALUES
(1, 'Nama Dosen', 'Tema PKM', 'Nama Mahasiswa', 'Judul Kegiatan', 2021, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pres_akademik`
--

CREATE TABLE `tbl_pres_akademik` (
  `id_pres_akademik` int(5) NOT NULL,
  `nama_keg` varchar(255) DEFAULT NULL,
  `waktu_perolehan` int(5) DEFAULT NULL,
  `id_tingkat` int(5) DEFAULT NULL,
  `pres_dicapai` varchar(100) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pres_akademik`
--

INSERT INTO `tbl_pres_akademik` (`id_pres_akademik`, `nama_keg`, `waktu_perolehan`, `id_tingkat`, `pres_dicapai`, `id_akred_prodi`) VALUES
(0, 'Nama Kegiatan', 1, 1, 'Prestasi yang Dicapai', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pres_non_akademik`
--

CREATE TABLE `tbl_pres_non_akademik` (
  `id_pres_akademik` int(5) NOT NULL,
  `nama_keg` varchar(255) DEFAULT NULL,
  `waktu_perolehan` int(5) DEFAULT NULL,
  `id_tingkat` int(5) DEFAULT NULL,
  `pres_dicapai` varchar(100) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_pres_non_akademik`
--

INSERT INTO `tbl_pres_non_akademik` (`id_pres_akademik`, `nama_keg`, `waktu_perolehan`, `id_tingkat`, `pres_dicapai`, `id_akred_prodi`) VALUES
(1, 'Nama Kegiatan Non Akademik', 2021, 2, 'Prestasi yang dicapai', 1),
(2, 'Nama Kegiatan', 2021, 1, 'Prestasi yang Dicapai', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_publikasi_ilmiah_mhs`
--

CREATE TABLE `tbl_publikasi_ilmiah_mhs` (
  `id_publikasi_ilmiah_mhs` int(5) NOT NULL,
  `jenis_publikasi` varchar(50) DEFAULT NULL,
  `ts2_jml_judul` int(10) DEFAULT NULL,
  `ts1_jml_judul` int(10) DEFAULT NULL,
  `ts_jml_judul` int(10) DEFAULT NULL,
  `jumlah` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_publ_dtps`
--

CREATE TABLE `tbl_publ_dtps` (
  `id_publ_dtps` int(5) NOT NULL,
  `jenis_publikasi` varchar(255) DEFAULT NULL,
  `jml_ts2` int(5) DEFAULT NULL,
  `jml_ts1` int(5) DEFAULT NULL,
  `jml_ts` int(5) DEFAULT NULL,
  `jumlah` int(8) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_publ_dtps`
--

INSERT INTO `tbl_publ_dtps` (`id_publ_dtps`, `jenis_publikasi`, `jml_ts2`, `jml_ts1`, `jml_ts`, `jumlah`, `id_akred_prodi`) VALUES
(1, 'Publikasi Ilmiah DTPS', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rekognisi_dtps`
--

CREATE TABLE `tbl_rekognisi_dtps` (
  `id_rekognisi_dtps` int(5) NOT NULL,
  `nama_dosen` varchar(255) DEFAULT NULL,
  `bid_keahlian` varchar(255) DEFAULT NULL,
  `rekognisi_bukti` varchar(255) DEFAULT NULL,
  `id_tingkat` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_rekognisi_dtps`
--

INSERT INTO `tbl_rekognisi_dtps` (`id_rekognisi_dtps`, `nama_dosen`, `bid_keahlian`, `rekognisi_bukti`, `id_tingkat`, `tahun`, `id_akred_prodi`) VALUES
(1, 'Rekognisi DTPS', '1', '1', 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_seleksi_maba`
--

CREATE TABLE `tbl_seleksi_maba` (
  `id_seleksi_maba` int(5) NOT NULL,
  `id_thajaran` int(5) DEFAULT NULL,
  `daya_tampung` int(5) DEFAULT NULL,
  `cama_pendaftar` int(5) DEFAULT NULL,
  `cama_lolos` int(5) DEFAULT NULL,
  `maba_reg` int(5) DEFAULT NULL,
  `maba_transfer` int(5) DEFAULT NULL,
  `mhs_reg` int(5) DEFAULT NULL,
  `mhs_transfer` int(5) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_seleksi_maba`
--

INSERT INTO `tbl_seleksi_maba` (`id_seleksi_maba`, `id_thajaran`, `daya_tampung`, `cama_pendaftar`, `cama_lolos`, `maba_reg`, `maba_transfer`, `mhs_reg`, `mhs_transfer`, `id_akred_prodi`) VALUES
(1, 1, 3, 3, 3, 3, 3, 3, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tempat_kerja_lulusan`
--

CREATE TABLE `tbl_tempat_kerja_lulusan` (
  `id_tempat_kerja_lulusan` int(5) NOT NULL,
  `tahun_lulus` varchar(10) DEFAULT NULL,
  `jml_lulusan` int(10) DEFAULT NULL,
  `jml_lulusan_terlacak` int(10) DEFAULT NULL,
  `jml_kerja_lokal` int(10) DEFAULT NULL,
  `jml_kerja_nasional` int(10) DEFAULT NULL,
  `jml_kerja_internasional` int(10) DEFAULT NULL,
  `id_akred_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_tempat_kerja_lulusan`
--

INSERT INTO `tbl_tempat_kerja_lulusan` (`id_tempat_kerja_lulusan`, `tahun_lulus`, `jml_lulusan`, `jml_lulusan_terlacak`, `jml_kerja_lokal`, `jml_kerja_nasional`, `jml_kerja_internasional`, `id_akred_prodi`) VALUES
(1, '2021', 100, 61, 21, 2, 3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_thajaran`
--

CREATE TABLE `tbl_thajaran` (
  `id_thajaran` int(5) NOT NULL,
  `th_ajaran` varchar(25) NOT NULL,
  `datestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_thajaran`
--

INSERT INTO `tbl_thajaran` (`id_thajaran`, `th_ajaran`, `datestamp`) VALUES
(1, 'TS', '2021-04-15 02:43:53'),
(2, 'TS-1', '2021-04-15 02:43:53'),
(3, 'TS-2', '2021-04-15 02:43:53'),
(4, 'TS-3', '2021-04-15 02:43:53'),
(5, 'TS-4', '2021-04-15 02:43:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tingkat_kerjasama`
--

CREATE TABLE `tbl_tingkat_kerjasama` (
  `id_tingk_kerjasama` int(5) NOT NULL,
  `tingkat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_tingkat_kerjasama`
--

INSERT INTO `tbl_tingkat_kerjasama` (`id_tingk_kerjasama`, `tingkat`) VALUES
(1, 'Internasional'),
(2, 'Nasional'),
(3, 'Wilayah / Lokal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(5) NOT NULL,
  `user` varchar(25) NOT NULL,
  `pass` varchar(25) NOT NULL,
  `level` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `user`, `pass`, `level`) VALUES
(1, 'admin', 'min', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_akred_prodi`
--
ALTER TABLE `tbl_akred_prodi`
  ADD PRIMARY KEY (`id_akred_prodi`) USING BTREE;

--
-- Indeks untuk tabel `tbl_dosen_tdk_tetap`
--
ALTER TABLE `tbl_dosen_tdk_tetap`
  ADD PRIMARY KEY (`id_dosen_tdk_tetap`) USING BTREE;

--
-- Indeks untuk tabel `tbl_dosen_tetap`
--
ALTER TABLE `tbl_dosen_tetap`
  ADD PRIMARY KEY (`id_dosen`) USING BTREE;

--
-- Indeks untuk tabel `tbl_dospem_ta`
--
ALTER TABLE `tbl_dospem_ta`
  ADD PRIMARY KEY (`id_dospem_ta`) USING BTREE;

--
-- Indeks untuk tabel `tbl_ewmp_dosen_pti`
--
ALTER TABLE `tbl_ewmp_dosen_pti`
  ADD PRIMARY KEY (`id_ewmp_dosen_pti`) USING BTREE;

--
-- Indeks untuk tabel `tbl_integrasi_pkm`
--
ALTER TABLE `tbl_integrasi_pkm`
  ADD PRIMARY KEY (`id_integrasi_pkm`) USING BTREE;

--
-- Indeks untuk tabel `tbl_ipk`
--
ALTER TABLE `tbl_ipk`
  ADD PRIMARY KEY (`id_ipk`) USING BTREE;

--
-- Indeks untuk tabel `tbl_jab_akademik`
--
ALTER TABLE `tbl_jab_akademik`
  ADD PRIMARY KEY (`id_jab_akademik`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kepuasan_lulusan`
--
ALTER TABLE `tbl_kepuasan_lulusan`
  ADD PRIMARY KEY (`id_kepuasan_lulusan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kepuasan_mhs`
--
ALTER TABLE `tbl_kepuasan_mhs`
  ADD PRIMARY KEY (`id_kepuasan_mhs`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kepuasan_pengguna_lulusan`
--
ALTER TABLE `tbl_kepuasan_pengguna_lulusan`
  ADD PRIMARY KEY (`id_kepuasan_pengguna_lulusan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kerjasama_pendidikan`
--
ALTER TABLE `tbl_kerjasama_pendidikan`
  ADD PRIMARY KEY (`id_kerj_pend`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kerjasama_penelitian`
--
ALTER TABLE `tbl_kerjasama_penelitian`
  ADD PRIMARY KEY (`id_kerj_pen`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kerjasama_peng_masy`
--
ALTER TABLE `tbl_kerjasama_peng_masy`
  ADD PRIMARY KEY (`id_kerj_peng`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kesesuaian_bidang_kerja`
--
ALTER TABLE `tbl_kesesuaian_bidang_kerja`
  ADD PRIMARY KEY (`id_bidang_kerja_lulusan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_ki_dtps_sitasi`
--
ALTER TABLE `tbl_ki_dtps_sitasi`
  ADD PRIMARY KEY (`id_ki_dtps_sitasi`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`) USING BTREE;

--
-- Indeks untuk tabel `tbl_mhs_asing`
--
ALTER TABLE `tbl_mhs_asing`
  ADD PRIMARY KEY (`id_mhs_asing`) USING BTREE;

--
-- Indeks untuk tabel `tbl_penggunaan_dana`
--
ALTER TABLE `tbl_penggunaan_dana`
  ADD PRIMARY KEY (`id_penggunaan_dana`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_dtps`
--
ALTER TABLE `tbl_pen_dtps`
  ADD PRIMARY KEY (`id_pen_dtps`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_dtps_mhs`
--
ALTER TABLE `tbl_pen_dtps_mhs`
  ADD PRIMARY KEY (`id_pen_dtps_mhs`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_dtps_hakcipta`
--
ALTER TABLE `tbl_pen_pkm_dtps_hakcipta`
  ADD PRIMARY KEY (`id_pen_pkm_dtps_hakcipta`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_dtps_isbn`
--
ALTER TABLE `tbl_pen_pkm_dtps_isbn`
  ADD PRIMARY KEY (`id_pen_pkm_dtps_isbn`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_dtps_paten`
--
ALTER TABLE `tbl_pen_pkm_dtps_paten`
  ADD PRIMARY KEY (`id_pen_pkm_dtps_paten`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_dtps_teknocepat`
--
ALTER TABLE `tbl_pen_pkm_dtps_teknocepat`
  ADD PRIMARY KEY (`id_pen_pkm_dtps_teknocepat`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_mhs_hakcipta`
--
ALTER TABLE `tbl_pen_pkm_mhs_hakcipta`
  ADD PRIMARY KEY (`id_pen_pkm_mhs_hakcipta`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_mhs_isbn`
--
ALTER TABLE `tbl_pen_pkm_mhs_isbn`
  ADD PRIMARY KEY (`id_pen_pkm_mhs_isbn`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_mhs_paten`
--
ALTER TABLE `tbl_pen_pkm_mhs_paten`
  ADD PRIMARY KEY (`id_pen_pkm_mhs_paten`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pen_pkm_mhs_teknocepat`
--
ALTER TABLE `tbl_pen_pkm_mhs_teknocepat`
  ADD PRIMARY KEY (`id_pen_pkm_mhs_teknocepat`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pkm_dtps`
--
ALTER TABLE `tbl_pkm_dtps`
  ADD PRIMARY KEY (`id_pkm_dtps`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pkm_dtps_mhs`
--
ALTER TABLE `tbl_pkm_dtps_mhs`
  ADD PRIMARY KEY (`id_pen_dtps_mhs`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pres_akademik`
--
ALTER TABLE `tbl_pres_akademik`
  ADD PRIMARY KEY (`id_pres_akademik`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pres_non_akademik`
--
ALTER TABLE `tbl_pres_non_akademik`
  ADD PRIMARY KEY (`id_pres_akademik`) USING BTREE;

--
-- Indeks untuk tabel `tbl_publikasi_ilmiah_mhs`
--
ALTER TABLE `tbl_publikasi_ilmiah_mhs`
  ADD PRIMARY KEY (`id_publikasi_ilmiah_mhs`) USING BTREE;

--
-- Indeks untuk tabel `tbl_publ_dtps`
--
ALTER TABLE `tbl_publ_dtps`
  ADD PRIMARY KEY (`id_publ_dtps`) USING BTREE;

--
-- Indeks untuk tabel `tbl_rekognisi_dtps`
--
ALTER TABLE `tbl_rekognisi_dtps`
  ADD PRIMARY KEY (`id_rekognisi_dtps`) USING BTREE;

--
-- Indeks untuk tabel `tbl_seleksi_maba`
--
ALTER TABLE `tbl_seleksi_maba`
  ADD PRIMARY KEY (`id_seleksi_maba`) USING BTREE;

--
-- Indeks untuk tabel `tbl_tempat_kerja_lulusan`
--
ALTER TABLE `tbl_tempat_kerja_lulusan`
  ADD PRIMARY KEY (`id_tempat_kerja_lulusan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_thajaran`
--
ALTER TABLE `tbl_thajaran`
  ADD PRIMARY KEY (`id_thajaran`) USING BTREE;

--
-- Indeks untuk tabel `tbl_tingkat_kerjasama`
--
ALTER TABLE `tbl_tingkat_kerjasama`
  ADD PRIMARY KEY (`id_tingk_kerjasama`) USING BTREE;

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_akred_prodi`
--
ALTER TABLE `tbl_akred_prodi`
  MODIFY `id_akred_prodi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen_tdk_tetap`
--
ALTER TABLE `tbl_dosen_tdk_tetap`
  MODIFY `id_dosen_tdk_tetap` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_dosen_tetap`
--
ALTER TABLE `tbl_dosen_tetap`
  MODIFY `id_dosen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_dospem_ta`
--
ALTER TABLE `tbl_dospem_ta`
  MODIFY `id_dospem_ta` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ewmp_dosen_pti`
--
ALTER TABLE `tbl_ewmp_dosen_pti`
  MODIFY `id_ewmp_dosen_pti` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_integrasi_pkm`
--
ALTER TABLE `tbl_integrasi_pkm`
  MODIFY `id_integrasi_pkm` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ipk`
--
ALTER TABLE `tbl_ipk`
  MODIFY `id_ipk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_jab_akademik`
--
ALTER TABLE `tbl_jab_akademik`
  MODIFY `id_jab_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_kepuasan_lulusan`
--
ALTER TABLE `tbl_kepuasan_lulusan`
  MODIFY `id_kepuasan_lulusan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kepuasan_mhs`
--
ALTER TABLE `tbl_kepuasan_mhs`
  MODIFY `id_kepuasan_mhs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kepuasan_pengguna_lulusan`
--
ALTER TABLE `tbl_kepuasan_pengguna_lulusan`
  MODIFY `id_kepuasan_pengguna_lulusan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kerjasama_pendidikan`
--
ALTER TABLE `tbl_kerjasama_pendidikan`
  MODIFY `id_kerj_pend` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_kerjasama_penelitian`
--
ALTER TABLE `tbl_kerjasama_penelitian`
  MODIFY `id_kerj_pen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kerjasama_peng_masy`
--
ALTER TABLE `tbl_kerjasama_peng_masy`
  MODIFY `id_kerj_peng` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kesesuaian_bidang_kerja`
--
ALTER TABLE `tbl_kesesuaian_bidang_kerja`
  MODIFY `id_bidang_kerja_lulusan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_ki_dtps_sitasi`
--
ALTER TABLE `tbl_ki_dtps_sitasi`
  MODIFY `id_ki_dtps_sitasi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  MODIFY `id_kurikulum` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_mhs_asing`
--
ALTER TABLE `tbl_mhs_asing`
  MODIFY `id_mhs_asing` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_penggunaan_dana`
--
ALTER TABLE `tbl_penggunaan_dana`
  MODIFY `id_penggunaan_dana` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_dtps`
--
ALTER TABLE `tbl_pen_dtps`
  MODIFY `id_pen_dtps` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_dtps_mhs`
--
ALTER TABLE `tbl_pen_dtps_mhs`
  MODIFY `id_pen_dtps_mhs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_dtps_hakcipta`
--
ALTER TABLE `tbl_pen_pkm_dtps_hakcipta`
  MODIFY `id_pen_pkm_dtps_hakcipta` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_dtps_isbn`
--
ALTER TABLE `tbl_pen_pkm_dtps_isbn`
  MODIFY `id_pen_pkm_dtps_isbn` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_dtps_paten`
--
ALTER TABLE `tbl_pen_pkm_dtps_paten`
  MODIFY `id_pen_pkm_dtps_paten` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_dtps_teknocepat`
--
ALTER TABLE `tbl_pen_pkm_dtps_teknocepat`
  MODIFY `id_pen_pkm_dtps_teknocepat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_mhs_hakcipta`
--
ALTER TABLE `tbl_pen_pkm_mhs_hakcipta`
  MODIFY `id_pen_pkm_mhs_hakcipta` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_mhs_isbn`
--
ALTER TABLE `tbl_pen_pkm_mhs_isbn`
  MODIFY `id_pen_pkm_mhs_isbn` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_mhs_paten`
--
ALTER TABLE `tbl_pen_pkm_mhs_paten`
  MODIFY `id_pen_pkm_mhs_paten` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pen_pkm_mhs_teknocepat`
--
ALTER TABLE `tbl_pen_pkm_mhs_teknocepat`
  MODIFY `id_pen_pkm_mhs_teknocepat` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pkm_dtps`
--
ALTER TABLE `tbl_pkm_dtps`
  MODIFY `id_pkm_dtps` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pkm_dtps_mhs`
--
ALTER TABLE `tbl_pkm_dtps_mhs`
  MODIFY `id_pen_dtps_mhs` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pres_non_akademik`
--
ALTER TABLE `tbl_pres_non_akademik`
  MODIFY `id_pres_akademik` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_publikasi_ilmiah_mhs`
--
ALTER TABLE `tbl_publikasi_ilmiah_mhs`
  MODIFY `id_publikasi_ilmiah_mhs` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_publ_dtps`
--
ALTER TABLE `tbl_publ_dtps`
  MODIFY `id_publ_dtps` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_rekognisi_dtps`
--
ALTER TABLE `tbl_rekognisi_dtps`
  MODIFY `id_rekognisi_dtps` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_seleksi_maba`
--
ALTER TABLE `tbl_seleksi_maba`
  MODIFY `id_seleksi_maba` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_tempat_kerja_lulusan`
--
ALTER TABLE `tbl_tempat_kerja_lulusan`
  MODIFY `id_tempat_kerja_lulusan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_thajaran`
--
ALTER TABLE `tbl_thajaran`
  MODIFY `id_thajaran` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_tingkat_kerjasama`
--
ALTER TABLE `tbl_tingkat_kerjasama`
  MODIFY `id_tingk_kerjasama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
