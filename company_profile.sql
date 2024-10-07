-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2024 at 03:50 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aktivitas`
--

CREATE TABLE `tb_aktivitas` (
  `id_aktivitas` int UNSIGNED NOT NULL,
  `nama_aktivitas_in` varchar(200) NOT NULL,
  `nama_aktivitas_en` varchar(200) NOT NULL,
  `foto_aktivitas` varchar(100) NOT NULL,
  `deskripsi_aktivitas_in` text,
  `deskripsi_aktivitas_en` text,
  `slug_id` varchar(100) NOT NULL,
  `slug_en` varchar(100) NOT NULL,
  `meta_title_id` varchar(100) DEFAULT NULL,
  `meta_description_id` varchar(100) DEFAULT NULL,
  `meta_title_en` varchar(100) DEFAULT NULL,
  `meta_description_en` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tb_aktivitas`
--

INSERT INTO `tb_aktivitas` (`id_aktivitas`, `nama_aktivitas_in`, `nama_aktivitas_en`, `foto_aktivitas`, `deskripsi_aktivitas_in`, `deskripsi_aktivitas_en`, `slug_id`, `slug_en`, `meta_title_id`, `meta_description_id`, `meta_title_en`, `meta_description_en`) VALUES
(11, 'Telkomsel', 'Telkomsel', 'Telkomsel_Telkomsel_18092024102431.jpeg', '<p>PT Telekomunikasi Selular, diperdagangkan sebagai Telkomsel, adalah perusahaan telekomunikasi Indonesia yang didirikan pada tahun 1995. Kepemilikannya dibagi antara Telkom Indonesia dan Singtel, yang berfungsi sebagai cabang layanan konsumen Telkom mulai 1 Juli 2023 dengan pengambilalihan manajemen atas IndiHome.</p>', '<p>PT Telekomunikasi Selular, trading as Telkomsel, is an Indonesian telecommunications company founded in 1995. Its ownership is divided between Telkom Indonesia and Singtel, which serves as Telkom\'s consumer services arm starting 1 July 2023 by its management takeover of IndiHome.</p>', 'telkomsel', 'telkomsel', 'Telkomsel: Perusahaan Telekomunikasi Indonesia Terkemuka', 'Telkomsel adalah perusahaan telekomunikasi terbesar di Indonesia yang berdiri sejak 1995. Telkomsel ', 'Telkomsel: Leading Indonesian Telecommunications Company', 'Telkomsel, founded in 1995, is the largest telecommunications company in Indonesia. Owned by Telkom '),
(12, 'Indosat', 'Indosat', 'Indosat_Indosat_18092024102948.jpg', '<p>PT Indosat Tbk, diperdagangkan dengan nama Indosat Ooredoo Hutchison, disingkat IOH, adalah penyedia telekomunikasi Indonesia yang dimiliki oleh Ooredoo Hutchison Asia, perusahaan patungan antara Ooredoo dan Hutchison Asia Telecom Group sejak tahun 2022.</p>', '<p>PT Indosat Tbk, trading as Indosat Ooredoo Hutchison, abbreviated as IOH, is an Indonesian telecommunications provider which is owned by Ooredoo Hutchison Asia, a joint venture between Ooredoo and Hutchison Asia Telecom Group since 2022.&nbsp;</p>', 'indosat', 'indosat', 'Indosat Ooredoo Hutchison: Penyedia Telekomunikasi Global di Indonesia', 'Indosat Ooredoo Hutchison (IOH) adalah penyedia telekomunikasi Indonesia yang dimiliki oleh Ooredoo ', 'Indosat Ooredoo Hutchison: Global Telecommunications Provider in Indonesia', 'Indosat Ooredoo Hutchison (IOH) is an Indonesian telecommunications provider owned by Ooredoo and Hu'),
(13, 'XL Axiata', 'XL Axiata', 'XL Axiata_XL Axiata_18092024103155.png', '<p>PT XL Axiata Tbk, adalah operator layanan telekomunikasi seluler yang berbasis di Indonesia yang berkantor pusat di Jakarta. Ini adalah perusahaan telekomunikasi seluler terbesar ketiga di Indonesia. Cakupan operator mencakup Jawa, Bali, dan Lombok serta kota-kota utama di dan sekitar Sumatera, Kalimantan, dan Sulawesi.</p>', '<p>PT XL Axiata Tbk, is an Indonesia-based mobile telecommunications services operator headquartered at Jakarta. It is the third largest mobile telecommunications company in Indonesia. The operator\'s coverage includes Java, Bali, and Lombok as well as the principal cities in and around Sumatra, Kalimantan and Sulawesi.</p>', 'xl-axiata', 'xl-axiata', 'XL Axiata: Operator Telekomunikasi Seluler Terbesar Ketiga di Indonesia', 'XL Axiata adalah operator telekomunikasi seluler terbesar ketiga di Indonesia dengan cakupan wilayah', 'XL Axiata: Third Largest Mobile Telecommunications Operator in Indonesia', 'XL Axiata is the third largest mobile telecommunications operator in Indonesia, covering Java, Bali,');

-- --------------------------------------------------------

--
-- Table structure for table `tb_artikel`
--

CREATE TABLE `tb_artikel` (
  `id_artikel` int UNSIGNED NOT NULL,
  `judul_artikel` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `slug_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto_artikel` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi_artikel` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `judul_artikel_en` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi_artikel_en` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `slug_en` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_title_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_description_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_title_en` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_description_en` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_artikel`
--

INSERT INTO `tb_artikel` (`id_artikel`, `judul_artikel`, `slug_id`, `foto_artikel`, `deskripsi_artikel`, `created_at`, `judul_artikel_en`, `deskripsi_artikel_en`, `slug_en`, `meta_title_id`, `meta_description_id`, `meta_title_en`, `meta_description_en`) VALUES
(15, 'Materi Pelatihan Indonesia', 'materi-pelatihan-indonesia', '1726889146_20808f6e99970efc8dd7.jpg', '<p>Indonesia</p>', '2024-09-21 10:19:26', 'Course exercise english', '<p>ini inggris yes</p>', 'course-exercise-english', 'Materi Pelatihan Indonesia: Panduan Belajar Lengkap', 'Dapatkan materi pelatihan terbaik di Indonesia untuk berbagai bidang. Panduan ini mencakup latihan d', 'Course Exercise: Comprehensive Learning Guide', 'Access the best course materials for various fields in Indonesia. This guide includes exercises and '),
(16, 'Sertifikasi Junior Programmer Untuk Mahasiswa Magang di Elecomp Indonesia', 'sertifikasi-junior-programmer-untuk-mahasiswa-magang-di-elecomp-indonesia', 'Sertifikasi-Junior-Programmer-Untuk-Mahasiswa-Magang-di-Elecomp-Indonesia_23092024043333.jpg', '<p>indo</p>', '2024-09-23 11:33:33', 'Junior Programmer Certification for Internship Students at Elecomp Indonesia', '<p>english</p>', 'junior-programmer-certification-for-internship-students-at-elecomp-indonesia', 'Sertifikasi Junior Programmer untuk Mahasiswa Magang di Elecomp Indonesia', 'Program sertifikasi Junior Programmer di Elecomp Indonesia dirancang khusus untuk mahasiswa magang. ', 'Junior Programmer Certification for Internship Students at Elecomp Indonesia', 'The Junior Programmer certification program at Elecomp Indonesia is designed for internship students');

-- --------------------------------------------------------

--
-- Table structure for table `tb_meta`
--

CREATE TABLE `tb_meta` (
  `id_seo` int UNSIGNED NOT NULL,
  `nama_halaman` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_title_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_description_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_title_en` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `meta_description_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_meta`
--

INSERT INTO `tb_meta` (`id_seo`, `nama_halaman`, `meta_title_id`, `meta_description_id`, `meta_title_en`, `meta_description_en`) VALUES
(1, 'Beranda', 'Beranda | Competen Company Profile', 'Temukan informasi lengkap tentang perusahaan Competent dan layanan unggulan kami di halaman Beranda.', 'Home | Competen Company Profile', 'Discover complete information about Competent Company and our top services on the Home page.'),
(2, 'Tentang Kami', 'Tentang Kami | Competent Company Profile', 'Pelajari lebih lanjut tentang sejarah, visi, misi, dan nilai-nilai perusahaan Competent di halaman T', 'About Us | Competent Company Profile', ' Learn more about the history, vision, mission, and values of Competent Company on the About Us page'),
(3, 'Blog', 'Blog | Competent Company Profile', ' Ikuti artikel dan berita terbaru dari perusahaan Competent di halaman Blog kami.', 'Blog | Competent Company Profile', 'Follow the latest articles and news from Competent Company on our Blog page.'),
(4, 'Materi Pelatihan', 'Materi Pelatihan | Competent Company Profile', 'Jelajahi berbagai materi pelatihan yang disediakan oleh Competent untuk meningkatkan keterampilan pr', 'Training Materials | Competent Company Profile', 'Explore various training materials provided by Competent to enhance your professional skills.'),
(5, 'Klien', 'Klien | Competent Company Profile', 'Lihat daftar klien kami dan studi kasus tentang bagaimana kami telah membantu mereka mencapai kesuks', 'Clients | Competent Company Profile', 'View our client list and case studies on how we have helped them achieve success.'),
(6, 'Kontak', 'Kontak | Competent Company Profile', 'Hubungi tim Competent untuk pertanyaan lebih lanjut atau permintaan layanan di halaman Kontak.', 'Contact | Competent Company Profile', 'Contact the Competent team for further inquiries or service requests on the Contact page.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int UNSIGNED NOT NULL,
  `nama_produk_in` varchar(200) NOT NULL,
  `nama_produk_en` varchar(200) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk_in` text,
  `deskripsi_produk_en` text,
  `slug_id` varchar(100) DEFAULT NULL,
  `slug_en` varchar(100) DEFAULT NULL,
  `meta_title_id` varchar(100) DEFAULT NULL,
  `meta_description_id` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `meta_title_en` varchar(100) DEFAULT NULL,
  `meta_description_en` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_produk_in`, `nama_produk_en`, `foto_produk`, `deskripsi_produk_in`, `deskripsi_produk_en`, `slug_id`, `slug_en`, `meta_title_id`, `meta_description_id`, `meta_title_en`, `meta_description_en`) VALUES
(6, 'Pelatihan Ekspor', 'Export Training', 'Export Training_Pelatihan Ekspor_18092024042250.jpg', '<p data-sourcepos=\"3:1-3:67\"><strong>Pelatihan Ekspor: Panduan Lengkap Sukses Bisnis di Pasar Global</strong></p>\r\n<p data-sourcepos=\"5:1-5:318\">Ingin bisnis Anda go internasional? Pelatihan ini akan mengajarkan Anda semua yang perlu diketahui untuk memulai dan mengembangkan bisnis ekspor yang sukses. Mulai dari pemahaman dasar tentang ekspor, riset pasar, strategi pemasaran, logistik, hingga pembiayaan dan asuransi. Dengan mengikuti pelatihan ini, Anda akan:</p>\r\n<ul data-sourcepos=\"7:1-9:45\">\r\n<li data-sourcepos=\"7:1-7:47\">Memahami proses ekspor secara menyeluruh.</li>\r\n<li data-sourcepos=\"8:1-8:44\">Menemukan pasar ekspor yang potensial.</li>\r\n<li data-sourcepos=\"9:1-9:45\">Membangun strategi pemasaran yang efektif di kancah internasional.</li>\r\n<li data-sourcepos=\"10:1-10:48\">Mengelola logistik pengiriman dengan baik.</li>\r\n<li data-sourcepos=\"11:1-12:0\">Menguasai teknik negosiasi dan manajemen risiko.</li>\r\n</ul>\r\n<p data-sourcepos=\"13:1-13:179\">Dengan kata lain, pelatihan ini akan membekali Anda dengan pengetahuan dan keterampilan yang dibutuhkan untuk bersaing di pasar global dan meningkatkan keuntungan bisnis Anda.</p>', '<p data-sourcepos=\"5:1-5:211\"><strong>Export Training: Your Complete Guide to Global Business Success</strong><br><br>Want to take your business global? This training will teach you everything you need to know to start and grow a successful export business. From the basics of exporting, market research, and marketing strategies to logistics, financing, and insurance, this comprehensive program covers it all. By participating in this training, you will:</p>\r\n<ul data-sourcepos=\"7:1-7:54\">\r\n<li data-sourcepos=\"7:1-7:54\">Gain a thorough understanding of the export process.</li>\r\n<li data-sourcepos=\"8:1-8:36\">Identify potential export markets.</li>\r\n<li data-sourcepos=\"9:1-9:55\">Develop effective international marketing strategies.</li>\r\n<li data-sourcepos=\"10:1-10:31\">Manage logistics efficiently.</li>\r\n<li data-sourcepos=\"11:1-12:0\">Master negotiation and risk management techniques.</li>\r\n</ul>\r\n<p data-sourcepos=\"13:1-13:9\">In short, this training will equip you with the knowledge and skills needed to compete in the global market and increase your business profits.</p>', 'pelatihan-ekspor', 'export-training', 'Pelatihan Ekspor: Panduan Lengkap Sukses Bisnis di Pasar Global', 'Ingin bisnis Anda go internasional? Pelatihan ini mengajarkan cara memulai dan mengembangkan bisnis ', 'Your Complete Guide to Global Business Success', 'Want to take your business global? This training covers everything from market research to logistics'),
(9, 'Pelatihan Negosiasi', 'Negotiation Training', 'Pelatihan-Negosiasi_Negotiation-Training_24092024111509.jpg', '<p><strong>Pelatihan Negoisasi: Kunci Sukses dalam Mencapai Kesepakatan Bisnis</strong></p>\r\n<p>Ingin menguasai seni negosiasi dan mencapai hasil terbaik dalam setiap transaksi bisnis? Pelatihan ini dirancang untuk memberikan Anda pengetahuan dan keterampilan yang dibutuhkan dalam bernegosiasi secara efektif. Dari teknik dasar hingga strategi negosiasi lanjutan, Anda akan mempelajari cara memahami kebutuhan lawan bicara, menyusun argumen yang kuat, dan mencapai kesepakatan yang saling menguntungkan. Dengan mengikuti pelatihan ini, Anda akan:</p>\r\n<ul>\r\n<li>Memahami prinsip dasar negosiasi yang sukses.</li>\r\n<li>Menguasai berbagai teknik negosiasi yang sesuai untuk beragam situasi.</li>\r\n<li>Meningkatkan kemampuan komunikasi dan persuasi.</li>\r\n<li>Mengetahui cara mengatasi konflik dan keberatan saat bernegosiasi.</li>\r\n<li>Mampu membuat kesepakatan yang menguntungkan tanpa merusak hubungan bisnis.</li>\r\n</ul>\r\n<p>Pelatihan ini akan membekali Anda dengan strategi dan keterampilan praktis yang dapat langsung diterapkan dalam berbagai konteks bisnis, memastikan kesuksesan dalam setiap negosiasi yang Anda lakukan.</p>', '<p><strong>Negotiation Training: The Key to Successful Business Agreements</strong></p>\r\n<p>Want to master the art of negotiation and achieve the best outcomes in every business transaction? This training is designed to equip you with the knowledge and skills necessary for effective negotiation. From basic techniques to advanced strategies, you will learn how to understand your counterpart\'s needs, craft compelling arguments, and reach mutually beneficial agreements. By joining this training, you will:</p>\r\n<ul>\r\n<li>Understand the core principles of successful negotiations.</li>\r\n<li>Master various negotiation techniques tailored to different situations.</li>\r\n<li>Enhance your communication and persuasion skills.</li>\r\n<li>Learn how to manage conflicts and objections during negotiations.</li>\r\n<li>Be able to make profitable deals without damaging business relationships.</li>\r\n</ul>\r\n<p>This training will provide you with practical strategies and skills that can be immediately applied in various business contexts, ensuring success in every negotiation you undertake.</p>', 'pelatihan-negosiasi', 'negotiation-training', 'Pelatihan Negosiasi: Kunci Sukses dalam Mencapai Kesepakatan Bisnis', 'Ingin menguasai seni negosiasi? Pelatihan ini akan membekali Anda dengan strategi negosiasi efektif ', 'Negotiation Training: The Key to Successful Business Agreements', 'Master the art of negotiation and achieve the best outcomes in business deals. This training equips '),
(10, 'Pelatihan Pemasaran Digital', 'Digital Marketing Training', 'Pelatihan-Pemasaran-Digital_Digital-Marketing-Training_24092024112031.jpg', '<p><strong>Pelatihan Pemasaran Digital: Strategi Efektif untuk Meningkatkan Bisnis Anda</strong></p>\r\n<p>Ingin menguasai dunia pemasaran digital dan menjangkau lebih banyak pelanggan? Pelatihan ini dirancang untuk memberikan pemahaman mendalam tentang strategi pemasaran digital yang efektif, mulai dari media sosial hingga email marketing, SEO, dan iklan online. Dengan mengikuti pelatihan ini, Anda akan:</p>\r\n<ul>\r\n<li>Memahami dasar-dasar pemasaran digital dan tren terbaru.</li>\r\n<li>Mengembangkan strategi pemasaran yang efektif di berbagai platform digital.</li>\r\n<li>Mengoptimalkan konten agar lebih mudah ditemukan di mesin pencari (SEO).</li>\r\n<li>Mengelola kampanye iklan online dengan hasil yang maksimal.</li>\r\n<li>Menganalisis dan mengukur kinerja kampanye digital Anda.</li>\r\n</ul>\r\n<p>Pelatihan ini akan membekali Anda dengan keterampilan yang dibutuhkan untuk meningkatkan kehadiran online bisnis Anda, menarik lebih banyak pelanggan, dan mendorong pertumbuhan penjualan.</p>', '<p><strong>Digital Marketing Training: Effective Strategies to Grow Your Business</strong></p>\r\n<p>Want to master digital marketing and reach more customers? This training is designed to give you an in-depth understanding of effective digital marketing strategies, from social media to email marketing, SEO, and online advertising. By joining this training, you will:</p>\r\n<ul>\r\n<li>Understand the fundamentals of digital marketing and the latest trends.</li>\r\n<li>Develop effective marketing strategies across various digital platforms.</li>\r\n<li>Optimize content for better visibility in search engines (SEO).</li>\r\n<li>Manage online advertising campaigns for maximum results.</li>\r\n<li>Analyze and measure the performance of your digital campaigns.</li>\r\n</ul>\r\n<p>This training will equip you with the skills needed to enhance your business\'s online presence, attract more customers, and drive sales growth.</p>', 'pelatihan-pemasaran-digital', 'digital-marketing-training', 'Pelatihan Pemasaran Digital: Strategi Efektif untuk Meningkatkan Bisnis Anda', '0Tingkatkan kehadiran online bisnis Anda dengan strategi pemasaran digital yang efektif. Pelajari SE', 'Digital Marketing Training: Effective Strategies to Grow Your Business', 'Enhance your business\'s online presence with effective digital marketing strategies. Learn SEO, onli'),
(11, 'Pelatihan Motivasi Berbagai Bidang', 'Motivation Training for Various Fields', 'Pelatihan-Motivasi-Berbagai-Bidang_Motivation-Training-for-Various-Fields_24092024112305.jpg', '<p><strong>Pelatihan Motivasi Berbagai Bidang: Membangkitkan Semangat dan Produktivitas</strong></p>\r\n<p>Ingin meningkatkan motivasi dan produktivitas di berbagai bidang kehidupan? Pelatihan ini dirancang untuk membantu Anda menemukan inspirasi dan semangat dalam pekerjaan, pendidikan, olahraga, maupun pengembangan diri. Melalui pelatihan ini, Anda akan:</p>\r\n<ul>\r\n<li>Memahami pentingnya motivasi dalam mencapai tujuan.</li>\r\n<li>Mengembangkan mindset positif dan cara berpikir yang produktif.</li>\r\n<li>Mempelajari teknik untuk meningkatkan disiplin dan fokus.</li>\r\n<li>Mengelola stres dan menjaga keseimbangan emosional.</li>\r\n<li>Membangun kepercayaan diri dan semangat yang berkelanjutan.</li>\r\n</ul>\r\n<p>Dengan pelatihan ini, Anda akan dibekali dengan keterampilan untuk tetap termotivasi di berbagai bidang, baik dalam karier, pendidikan, atau kehidupan pribadi, sehingga mampu mencapai kesuksesan yang lebih tinggi.</p>', '<p><strong>Motivation Training for Various Fields: Boosting Enthusiasm and Productivity</strong></p>\r\n<p>Looking to enhance your motivation and productivity in various areas of life? This training is designed to help you find inspiration and drive in work, education, sports, or personal development. Through this training, you will:</p>\r\n<ul>\r\n<li>Understand the importance of motivation in achieving goals.</li>\r\n<li>Develop a positive mindset and productive way of thinking.</li>\r\n<li>Learn techniques to improve discipline and focus.</li>\r\n<li>Manage stress and maintain emotional balance.</li>\r\n<li>Build lasting self-confidence and sustainable enthusiasm.</li>\r\n</ul>\r\n<p>With this training, you will be equipped with the skills to stay motivated in different fields, whether in your career, education, or personal life, enabling you to reach higher levels of success.</p>', 'pelatihan-motivasi-berbagai-bidang', 'motivation-training-for-various-fields', 'Pelatihan Motivasi Berbagai Bidang: Membangkitkan Semangat dan Produktivitas', 'Temukan semangat baru di berbagai bidang kehidupan dengan pelatihan motivasi ini. Pelajari teknik un', 'Motivation Training for Various Fields: Boosting Enthusiasm and Productivity', 'Boost your motivation and productivity across different areas of life. This training teaches techniq');

-- --------------------------------------------------------

--
-- Table structure for table `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `logo_perusahaan` varchar(100) NOT NULL,
  `deskripsi_perusahaan_in` text,
  `deskripsi_perusahaan_en` text,
  `deskripsi_kontak_in` text,
  `deskripsi_kontak_en` text,
  `link_maps` text,
  `link_whatsapp` text,
  `favicon_website` varchar(100) NOT NULL,
  `title_website` varchar(100) NOT NULL,
  `foto_utama` varchar(100) NOT NULL,
  `alamat` text,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `teks_footer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `username`, `password`, `nama_perusahaan`, `logo_perusahaan`, `deskripsi_perusahaan_in`, `deskripsi_perusahaan_en`, `deskripsi_kontak_in`, `deskripsi_kontak_en`, `link_maps`, `link_whatsapp`, `favicon_website`, `title_website`, `foto_utama`, `alamat`, `no_hp`, `email`, `teks_footer`) VALUES
(1, 'user', 'user', 'Competent Academy', 'Logo_Competent-Academy_17092024033808.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus rhoncus erat sed pulvinar pulvinar. In interdum nulla lacus, a ullamcorper neque eleifend at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eleifend et lorem pulvinar convallis. Nam luctus risus sit amet quam consectetur congue. Nam vel sapien ut justo gravida rutrum rutrum sit amet magna. Phasellus condimentum nulla vitae faucibus tempor. Maecenas suscipit risus sem, nec feugiat felis vehicula eget. Nulla arcu neque, tincidunt nec orci vel, ultrices lacinia felis. Suspendisse aliquam sem scelerisque pulvinar sollicitudin. Suspendisse neque ligula, ornare et enim a, efficitur sollicitudin mauris. Vivamus ac mi ex. Donec vestibulum nibh at libero accumsan, eu consectetur diam maximus. Pellentesque non tellus volutpat, commodo urna id, mattis odio. Aliquam semper fringilla iaculis.</p>\r\n<p>Nulla accumsan consectetur congue. Mauris suscipit est non nisi congue, consequat mattis risus tempor. Integer diam libero, blandit eu consequat in, fringilla commodo purus. Aenean tristique rhoncus dapibus. Nulla hendrerit, urna eget interdum mollis, diam nibh sagittis massa, a porttitor augue lorem a ex. Donec in sollicitudin risus, eu bibendum arcu. Maecenas pharetra nec diam quis tempus. In a maximus odio. Sed bibendum lobortis tellus, vitae porttitor diam tristique et.</p>\r\n<p>Vivamus dolor dui, fermentum sed odio eu, tincidunt iaculis magna. Suspendisse vitae dui nec tellus pretium tristique in feugiat turpis. Cras eget lobortis erat. Nunc mattis posuere justo at iaculis. Phasellus nec sagittis velit. Duis semper porttitor nisi imperdiet molestie. Proin dictum consectetur risus vitae posuere. Vestibulum dignissim odio lectus, vel molestie urna lobortis eu. Cras placerat massa sit amet auctor commodo. Vivamus rutrum rhoncus mauris, vel rutrum libero laoreet vitae. Sed laoreet semper ex sit amet volutpat. In sed blandit felis. Cras porttitor dapibus dui, sit amet tempus arcu vehicula id. Duis non enim lorem.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus rhoncus erat sed pulvinar pulvinar. In interdum nulla lacus, a ullamcorper neque eleifend at. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi eleifend et lorem pulvinar convallis. Nam luctus risus sit amet quam consectetur congue. Nam vel sapien ut justo gravida rutrum rutrum sit amet magna. Phasellus condimentum nulla vitae faucibus tempor. Maecenas suscipit risus sem, nec feugiat felis vehicula eget. Nulla arcu neque, tincidunt nec orci vel, ultrices lacinia felis. Suspendisse aliquam sem scelerisque pulvinar sollicitudin. Suspendisse neque ligula, ornare et enim a, efficitur sollicitudin mauris. Vivamus ac mi ex. Donec vestibulum nibh at libero accumsan, eu consectetur diam maximus. Pellentesque non tellus volutpat, commodo urna id, mattis odio. Aliquam semper fringilla iaculis.</p>\r\n<p>Nulla accumsan consectetur congue. Mauris suscipit est non nisi congue, consequat mattis risus tempor. Integer diam libero, blandit eu consequat in, fringilla commodo purus. Aenean tristique rhoncus dapibus. Nulla hendrerit, urna eget interdum mollis, diam nibh sagittis massa, a porttitor augue lorem a ex. Donec in sollicitudin risus, eu bibendum arcu. Maecenas pharetra nec diam quis tempus. In a maximus odio. Sed bibendum lobortis tellus, vitae porttitor diam tristique et.</p>\r\n<p>Vivamus dolor dui, fermentum sed odio eu, tincidunt iaculis magna. Suspendisse vitae dui nec tellus pretium tristique in feugiat turpis. Cras eget lobortis erat. Nunc mattis posuere justo at iaculis. Phasellus nec sagittis velit. Duis semper porttitor nisi imperdiet molestie. Proin dictum consectetur risus vitae posuere. Vestibulum dignissim odio lectus, vel molestie urna lobortis eu. Cras placerat massa sit amet auctor commodo. Vivamus rutrum rhoncus mauris, vel rutrum libero laoreet vitae. Sed laoreet semper ex sit amet volutpat. In sed blandit felis. Cras porttitor dapibus dui, sit amet tempus arcu vehicula id. Duis non enim lorem.</p>', '<p>Jl. Grand Bulevar, Cisaranten Kidul, Kec. Gedebage, Kota Bandung, Jawa Barat 40295</p>', '<p>Jl. Grand Bulevar, Cisaranten Kidul, District. Gedebage, Bandung City, West Java 40295</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3960.4536867063466!2d107.6984622!3d-6.9556879!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68c3006c3b6711%3A0x2e04c418a392860f!2sCarHab!5e0!3m2!1sid!2sid!4v1721963669489!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://wa.me/+6282131222332', 'Favicon_Competent-Academy_17092024035147.png', 'Lorem ipsum dolor.', '1720592984_c939b01a0638a9f6b019.jpeg', '<p>Kec. Gedebage, Kota Bandung, Jawa Barat</p>', '+62 821 3122 2332', 'competentacademy_id@gmail.com', 'All Rights Reserved. Designed with love by Me');

-- --------------------------------------------------------

--
-- Table structure for table `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int UNSIGNED NOT NULL,
  `file_foto_slider` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `file_foto_slider`) VALUES
(7, 'Marhab_10072024104249.jpeg'),
(8, 'Marhab_10072024104301.jpeg'),
(9, 'Marhab_10072024104312.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  ADD PRIMARY KEY (`id_aktivitas`);

--
-- Indexes for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `tb_meta`
--
ALTER TABLE `tb_meta`
  ADD PRIMARY KEY (`id_seo`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- Indexes for table `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aktivitas`
--
ALTER TABLE `tb_aktivitas`
  MODIFY `id_aktivitas` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_artikel`
--
ALTER TABLE `tb_artikel`
  MODIFY `id_artikel` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_meta`
--
ALTER TABLE `tb_meta`
  MODIFY `id_seo` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
