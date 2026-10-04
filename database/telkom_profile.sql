CREATE DATABASE IF NOT EXISTS telkom_profile
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE telkom_profile;

CREATE TABLE IF NOT EXISTS program_studi (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(120) NOT NULL,
  jenjang VARCHAR(20) NOT NULL,
  deskripsi TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS berita (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  judul VARCHAR(180) NOT NULL,
  ringkasan VARCHAR(300) NOT NULL,
  isi TEXT NOT NULL,
  tanggal_publish DATE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS pesan (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100) NOT NULL,
  email VARCHAR(120) NOT NULL,
  pesan TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO program_studi (nama, jenjang, deskripsi) VALUES
('S1 Sistem Informasi', 'S1', 'Mempelajari integrasi proses bisnis, data, manusia, dan teknologi informasi.'),
('S1 Teknik Informatika', 'S1', 'Mempelajari pengembangan perangkat lunak, komputasi, dan kecerdasan buatan.'),
('S1 Rekayasa Perangkat Lunak', 'S1', 'Berfokus pada rekayasa dan pengembangan perangkat lunak skala industri.'),
('S1 Sains Data', 'S1', 'Mempelajari analisis data, statistik, dan machine learning.'),
('S1 Bisnis Digital', 'S1', 'Mempelajari strategi bisnis berbasis teknologi dan data digital.'),
('S1 Desain Komunikasi Visual', 'S1', 'Mempelajari desain grafis, komunikasi visual, dan multimedia.'),
('D3 Teknik Telekomunikasi', 'D3', 'Program vokasi yang berfokus pada teknologi jaringan dan telekomunikasi.'),
('S1 Teknik Telekomunikasi', 'S1', 'Mempelajari jaringan, komunikasi digital, dan teknologi telekomunikasi.'),
('S1 Teknik Elektro', 'S1', 'Mempelajari sistem kelistrikan, elektronika, dan kendali otomatis.'),
('S1 Teknik Biomedis', 'S1', 'Mempelajari penerapan teknologi pada bidang kesehatan.');

INSERT INTO berita (judul, ringkasan, isi, tanggal_publish) VALUES 
('Workshop Git untuk Mahasiswa', 'Mahasiswa mempraktikkan version control melalui proyek web terpadu.', 'Kegiatan workshop membahas repository lokal, staging, commit, branch, merge, remote, push, pull, dan kolaborasi dasar melalui GitHub.', '2026-09-20'),
('Praktikum Web Dinamis', 'Pembelajaran mengintegrasikan PHP native dan basis data.', 'Mahasiswa membangun halaman program studi, berita, dan kontak berbasis PHP native serta MySQL/MariaDB.', '2026-09-18'),
('Simulasi Kolaborasi Developer', 'Mahasiswa mempraktikkan branch dan penyelesaian conflict.', 'Simulasi dilakukan dengan dua folder kerja yang mewakili dua perangkat agar alur push dan pull lebih mudah dipahami.', '2026-09-15');