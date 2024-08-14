-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 14, 2024 lúc 05:08 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `somedia`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activities`
--

CREATE TABLE `activities` (
  `actID` bigint(20) UNSIGNED NOT NULL,
  `actName` varchar(255) NOT NULL,
  `actImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activities`
--

INSERT INTO `activities` (`actID`, `actName`, `actImg`) VALUES
(1, 'Teambuilding 2024', 'http://127.0.0.1:8000/storage/activities/picnic2024.jpg'),
(2, 'So Media 6th Birthday', 'http://127.0.0.1:8000/storage/activities/birthday.jpg'),
(3, 'So Media 7th Birthday', 'http://127.0.0.1:8000/storage/activities/birthday2024.jpg'),
(4, 'TVC 2023 - The Growth', 'http://127.0.0.1:8000/storage/activities/tvc.jpg'),
(5, 'Profile Shooting', 'http://127.0.0.1:8000/storage/activities/profile.jpg'),
(6, 'Welcome D23 PTIT', 'http://127.0.0.1:8000/storage/activities/welcomed23.jpg'),
(7, 'Welcome D22 PTIT - The P-chain', 'http://127.0.0.1:8000/storage/activities/pchain.jpg'),
(8, 'Welcome D23 PTIT - Break the Shell 2023', 'http://127.0.0.1:8000/storage/activities/break2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `annual`
--

CREATE TABLE `annual` (
  `annualID` bigint(20) UNSIGNED NOT NULL,
  `annualName` varchar(255) NOT NULL,
  `annualTime` varchar(255) NOT NULL,
  `annualImg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `annual`
--

INSERT INTO `annual` (`annualID`, `annualName`, `annualTime`, `annualImg`) VALUES
(1, 'Recruit members', 'September', 'http://127.0.0.1:8000/storage/annual/september.png'),
(2, 'School events', 'November', 'http://127.0.0.1:8000/storage/annual/october.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_12_022832_create_traditional_table', 1),
(5, '2024_08_12_023733_create_projects_table', 2),
(6, '2024_08_12_024027_create_activities_table', 2),
(7, '2024_08_12_070259_create_personal_access_tokens_table', 3),
(8, '2024_08_13_093547_create_annual_table', 4),
(9, '2024_08_14_022814_create_prizes_table', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `prizes`
--

CREATE TABLE `prizes` (
  `prizeID` bigint(20) UNSIGNED NOT NULL,
  `prizeName` varchar(255) NOT NULL,
  `prizeLocation` varchar(255) NOT NULL,
  `prizeTime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `prizes`
--

INSERT INTO `prizes` (`prizeID`, `prizeName`, `prizeLocation`, `prizeTime`) VALUES
(1, 'First prize of the contest \'Nét đẹp trường P\'', 'PTIT', '2022'),
(2, 'Club has excellent achievements in union activities and youth movements', 'PTIT', '2022-2023'),
(3, 'Third prize of the contest \'Đồng phục PTIT\'', 'PTIT', '2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `projectID` bigint(20) UNSIGNED NOT NULL,
  `projectName` varchar(255) NOT NULL,
  `projectLink` varchar(255) NOT NULL,
  `projectImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`projectID`, `projectName`, `projectLink`, `projectImg`) VALUES
(1, 'TEDxHANU 2023', 'https://www.facebook.com/tedxhanu/videos/1365086274436809', 'http://127.0.0.1:8000/storage/projects/tedxhanu.jpg'),
(2, 'Profile Shooting 2023', 'https://www.facebook.com/somedia.vn.2016/videos/198116229592288/', 'http://127.0.0.1:8000/storage/projects/profileshooting.png'),
(3, 'DONG PHUC PTIT 2023', 'https://www.facebook.com/somedia.vn.2016/videos/305607272023242', 'http://127.0.0.1:8000/storage/projects/dongphucptit.png'),
(4, 'So Media TVC 2023 - The Growth', 'https://www.youtube.com/watch?v=ZrfJXRTsrEo', 'http://127.0.0.1:8000/storage/projects/tvc.jpg'),
(5, 'KACHOUFUUGETSU HANU', 'https://www.facebook.com/100063582549627/videos/1459914988185464', 'http://127.0.0.1:8000/storage/projects/kachofugetsu.jpg'),
(6, 'MV Ngay dau tien PTIT Version', 'https://www.youtube.com/watch?v=y7Y7VtKb9rY', 'http://127.0.0.1:8000/storage/projects/ngaydautienptit.png'),
(7, 'BREAK THE SHELL', 'https://www.facebook.com/share/v/cuTCEFhncdc92YCf/', 'http://127.0.0.1:8000/storage/projects/breaktheshell.jpg'),
(8, 'THE P-CHAIN 2022', 'https://www.facebook.com/somedia.vn.2016/videos/941481530159388', 'http://127.0.0.1:8000/storage/projects/pchain.png'),
(9, 'AGRIUP 2023 - NEU', 'https://www.facebook.com/agriup.NEU/videos/2103583136647621', 'http://127.0.0.1:8000/storage/projects/agriup.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1dQJxgZGgeqU4x5dVM9LOFok0u2vvoSmrWX0A5bW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMzM2YUlrVXo4cmZOSHE5YWVNY0lWZTZhWHJZQm9Dc1E2eGJqanpVbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9DTVMvcHJpemVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1723603721);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traditional`
--

CREATE TABLE `traditional` (
  `tradiID` bigint(20) UNSIGNED NOT NULL,
  `tradiName` varchar(255) NOT NULL,
  `tradiGen` varchar(255) DEFAULT NULL,
  `tradiDetail` varchar(255) DEFAULT NULL,
  `tradiImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `traditional`
--

INSERT INTO `traditional` (`tradiID`, `tradiName`, `tradiGen`, `tradiDetail`, `tradiImg`) VALUES
(1, 'Vu Cong Tuyen', 'Founder', 'Founder, President 2017-2020', 'http://127.0.0.1:8000/storage/humans/anhtuyen.jpg'),
(2, 'Duong Quang Chau', 'Co-founder', NULL, 'http://127.0.0.1:8000/storage/humans/anhchau.jpg'),
(3, 'Bui Quang Minh', 'Co-founder', NULL, 'http://127.0.0.1:8000/storage/humans/anhminh.jpg'),
(4, 'Le Thi Tra My', 'Gen 1', 'Vice President 2018-2019 and 2019-2020', 'http://127.0.0.1:8000/storage/humans/tramy.jpg'),
(7, 'Nguyen The Loc', 'Gen 1', 'Vice President 2018-2019 and 2019-2020', 'http://127.0.0.1:8000/storage/humans/theloc.jpg'),
(8, 'Nguyen The Thuan', 'Gen 1', 'Vice President 2018-2019 and 2019-2020', 'http://127.0.0.1:8000/storage/humans/thethuan.jpg'),
(9, 'Nguyen Dang Khoa', 'Gen 3', 'President for the 2020-2021 and 2021-2022 terms.', 'http://127.0.0.1:8000/storage/humans/anhkhoa.jpg'),
(10, 'Nguyen Nhu Quynh', 'Gen 3', 'Vice president for the 2020-2021 and 2021-2022 terms.', 'http://127.0.0.1:8000/storage/humans/nhuquynh.jpg'),
(11, 'Bui Thi Thu Phuong', 'Gen 3', 'Head of Internal Affairs Department for the 2020-2021 term and Vice President for the 2021-2022 term.', 'http://127.0.0.1:8000/storage/humans/thuphuong.jpg'),
(12, 'Dao Thi Bich Van', 'Gen 3', 'Head of External Affairs Department for the 2020-2021 term.', 'http://127.0.0.1:8000/storage/humans/bichvan.jpg'),
(13, 'Nguyen Van Hieu', 'Gen 3', 'Head of Design Department for the 2020-2021 term.', 'http://127.0.0.1:8000/storage/humans/vanhieu.jpg'),
(14, 'Ha Manh Hoang', 'Gen 3', 'Head of Media Department for the 2021-2022 term.', 'http://127.0.0.1:8000/storage/humans/hamanhhoang.jpg'),
(15, 'Pham Khac Hoai Nam', 'Gen 4', 'The club president for the 2022-2023 term, Head of Head of Communications Department for the 2021-2022 term.', 'http://127.0.0.1:8000/storage/humans/anhnam.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`actID`);

--
-- Chỉ mục cho bảng `annual`
--
ALTER TABLE `annual`
  ADD PRIMARY KEY (`annualID`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`prizeID`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `traditional`
--
ALTER TABLE `traditional`
  ADD PRIMARY KEY (`tradiID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activities`
--
ALTER TABLE `activities`
  MODIFY `actID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `annual`
--
ALTER TABLE `annual`
  MODIFY `annualID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `prizes`
--
ALTER TABLE `prizes`
  MODIFY `prizeID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `traditional`
--
ALTER TABLE `traditional`
  MODIFY `tradiID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
