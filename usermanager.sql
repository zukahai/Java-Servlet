-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 28, 2022 lúc 10:37 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `usermanager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id`, `username`, `url`, `datetime`) VALUES
(1, 'UserName0001', '4vfjgldz3ll6jelyuzka6lrfwik5v06w1p26kg1cadpnzbcs6l81g7qk6v9zum0vrmi4hox1ogjdpvne.png', 'Wed Jun 29 03:30:57 ICT 2022'),
(2, 'UserName0001', '2y8yjmlpy2miwa9xct2pwxxsevvbzrdy7tyti12mo7s3iybd9fyckoa0d2cunsd5c9emdd6jtftl613t.png', 'Wed Jun 29 03:32:39 ICT 2022'),
(3, 'UserName0001', 'q6zxqcmhr8cc32hha27tiwkaw27pyatl7jjjdp58beg6bjrrehpxq770j2w3haphxzntozfgfw0i774j.png', 'Wed Jun 29 03:32:52 ICT 2022'),
(4, 'UserName0001', 'qbqza18q0kc49khgb66jlqaizppylvj8ribx3jveyjah4by7w07iod12smypx0ciojgi14084u999nra.png', 'Wed Jun 29 03:33:18 ICT 2022'),
(5, 'UserName0001', 'hefwv13y4spx174js6jo5pnh6jjplhl0rgjqp1f7d34fg97gu14bj0ei3m73934g0rys6vehswh2r2k5.png', 'Wed Jun 29 03:36:23 ICT 2022'),
(6, 'UserName0001', 'pzpmyt7b98eqslbkhr65ljmzfbbxnhvi4lzvndd17o6vgtgqitdxdbtrp4xtdod0sgvzflz506v57aym.png', 'Wed Jun 29 03:36:44 ICT 2022'),
(7, 'UserName0001', 'gsa4d5xqvf7rue4m4f1szou5jrcj15m9rh802wknh7telgae6q7zmyw66ai4ppz5rs0jcgz2w6ca5i1t.png', 'Wed Jun 29 03:36:59 ICT 2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `age` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `password`, `fullname`, `age`) VALUES
('UserName0001', 'Password0001', 'Phan &#272;&#7913;c H&#7843;i', 48),
('UserName0002', 'Password0002', 'Fullname0002', 46),
('UserName0003', 'Password0003', 'Fullname0003', 17),
('UserName0004', 'Password0004', 'Fullname0004', 35),
('UserName0005', 'Password0005', 'Fullname0005', 64),
('UserName0006', 'Password0006', 'Fullname0006', 45),
('UserName0007', 'Password0007', 'Fullname0007', 54),
('UserName0008', 'Password0008', 'Fullname0008', 45),
('UserName0009', 'Password0009', 'Fullname0009', 43),
('UserName0010', 'Password0010', 'Fullname0010', 28),
('UserName0011', 'Password0011', 'Fullname0011', 69),
('UserName0012', 'Password0012', 'Fullname0012', 66),
('UserName0013', 'Password0013', 'Fullname0013', 64),
('UserName0014', 'Password0014', 'Fullname0014', 30),
('UserName0015', 'Password0015', 'Fullname0015', 59),
('UserName0016', 'Password0016', 'Fullname0016', 24),
('UserName0017', 'Password0017', 'Fullname0017', 27),
('UserName0018', 'Password0018', 'Fullname0018', 13),
('UserName0019', 'Password0019', 'Fullname0019', 26),
('UserName0020', 'Password0020', 'Fullname0020', 69),
('UserName0021', 'Password0021', 'Fullname0021', 42),
('UserName0022', 'Password0022', 'Fullname0022', 36),
('UserName0023', 'Password0023', 'Fullname0023', 61),
('UserName0024', 'Password0024', 'Fullname0024', 27),
('UserName0025', 'Password0025', 'Fullname0025', 39),
('UserName0026', 'Password0026', 'Fullname0026', 22),
('UserName0027', 'Password0027', 'Fullname0027', 14),
('UserName0028', 'Password0028', 'Fullname0028', 13),
('UserName0029', 'Password0029', 'Fullname0029', 62),
('UserName0030', 'Password0030', 'Fullname0030', 25),
('UserName0031', 'Password0031', 'Fullname0031', 65),
('UserName0032', 'Password0032', 'Fullname0032', 45),
('UserName0033', 'Password0033', 'Fullname0033', 62),
('UserName0034', 'Password0034', 'Fullname0034', 23),
('UserName0035', 'Password0035', 'Fullname0035', 22),
('UserName0036', 'Password0036', 'Fullname0036', 40),
('UserName0037', 'Password0037', 'Fullname0037', 45),
('UserName0038', 'Password0038', 'Fullname0038', 58),
('UserName0039', 'Password0039', 'Fullname0039', 24),
('UserName0040', 'Password0040', 'Fullname0040', 27),
('UserName0041', 'Password0041', 'Fullname0041', 59),
('UserName0042', 'Password0042', 'Fullname0042', 66),
('UserName0043', 'Password0043', 'Fullname0043', 38),
('UserName0044', 'Password0044', 'Fullname0044', 17),
('UserName0045', 'Password0045', 'Fullname0045', 63),
('UserName0046', 'Password0046', 'Fullname0046', 18),
('UserName0047', 'Password0047', 'Fullname0047', 47),
('UserName0048', 'Password0048', 'Fullname0048', 53),
('UserName0049', 'Password0049', 'Fullname0049', 36),
('UserName0050', 'Password0050', 'Fullname0050', 36),
('UserName0051', 'Password0051', 'Fullname0051', 12),
('UserName0052', 'Password0052', 'Fullname0052', 10),
('UserName0053', 'Password0053', 'Fullname0053', 17),
('UserName0054', 'Password0054', 'Fullname0054', 52),
('UserName0055', 'Password0055', 'Fullname0055', 14),
('UserName0056', 'Password0056', 'Fullname0056', 15),
('UserName0057', 'Password0057', 'Fullname0057', 33),
('UserName0058', 'Password0058', 'Fullname0058', 24),
('UserName0059', 'Password0059', 'Fullname0059', 32),
('UserName0060', 'Password0060', 'Fullname0060', 16),
('UserName0061', 'Password0061', 'Fullname0061', 35),
('UserName0062', 'Password0062', 'Fullname0062', 36),
('UserName0063', 'Password0063', 'Fullname0063', 15),
('UserName0064', 'Password0064', 'Fullname0064', 67),
('UserName0065', 'Password0065', 'Fullname0065', 64),
('UserName0066', 'Password0066', 'Fullname0066', 23),
('UserName0067', 'Password0067', 'Fullname0067', 46),
('UserName0068', 'Password0068', 'Fullname0068', 59),
('UserName0069', 'Password0069', 'Fullname0069', 67),
('UserName0070', 'Password0070', 'Fullname0070', 24),
('UserName0071', 'Password0071', 'Fullname0071', 41),
('UserName0072', 'Password0072', 'Fullname0072', 43),
('UserName0073', 'Password0073', 'Fullname0073', 67),
('UserName0074', 'Password0074', 'Fullname0074', 17),
('UserName0075', 'Password0075', 'Fullname0075', 22),
('UserName0076', 'Password0076', 'Fullname0076', 67),
('UserName0077', 'Password0077', 'Fullname0077', 31),
('UserName0078', 'Password0078', 'Fullname0078', 31),
('UserName0079', 'Password0079', 'Fullname0079', 12),
('UserName0080', 'Password0080', 'Fullname0080', 41),
('UserName0081', 'Password0081', 'Fullname0081', 11),
('UserName0082', 'Password0082', 'Fullname0082', 46),
('UserName0083', 'Password0083', 'Fullname0083', 68),
('UserName0084', 'Password0084', 'Fullname0084', 41),
('UserName0085', 'Password0085', 'Fullname0085', 42),
('UserName0086', 'Password0086', 'Fullname0086', 51),
('UserName0087', 'Password0087', 'Fullname0087', 19),
('UserName0088', 'Password0088', 'Fullname0088', 14),
('UserName0089', 'Password0089', 'Fullname0089', 48),
('UserName0090', 'Password0090', 'Fullname0090', 58),
('UserName0091', 'Password0091', 'Fullname0091', 28),
('UserName0092', 'Password0092', 'Fullname0092', 34),
('UserName0093', 'Password0093', 'Fullname0093', 67),
('UserName0094', 'Password0094', 'Fullname0094', 48),
('UserName0095', 'Password0095', 'Fullname0095', 50),
('UserName0096', 'Password0096', 'Fullname0096', 43),
('UserName0097', 'Password0097', 'Fullname0097', 49),
('UserName0098', 'Password0098', 'Fullname0098', 34),
('UserName0099', 'Password0099', 'Fullname0099', 50),
('UserName0100', 'Password0100', 'Fullname0100', 49),
('UserName0101', 'Password0101', 'Fullname0101', 29),
('UserName0102', 'Password0102', 'Fullname0102', 42),
('UserName0103', 'Password0103', 'Fullname0103', 53),
('UserName0104', 'Password0104', 'Fullname0104', 38),
('UserName0105', 'Password0105', 'Fullname0105', 53),
('UserName0106', 'Password0106', 'Fullname0106', 37),
('UserName0107', 'Password0107', 'Fullname0107', 54),
('UserName0108', 'Password0108', 'Fullname0108', 51),
('UserName0109', 'Password0109', 'Fullname0109', 64),
('UserName0110', 'Password0110', 'Fullname0110', 29),
('UserName0111', 'Password0111', 'Fullname0111', 57),
('UserName0112', 'Password0112', 'Fullname0112', 56),
('UserName0113', 'Password0113', 'Fullname0113', 55),
('UserName0114', 'Password0114', 'Fullname0114', 43),
('UserName0115', 'Password0115', 'Fullname0115', 22),
('UserName0116', 'Password0116', 'Fullname0116', 22),
('UserName0117', 'Password0117', 'Fullname0117', 64),
('UserName0118', 'Password0118', 'Fullname0118', 59),
('UserName0119', 'Password0119', 'Fullname0119', 54),
('UserName0120', 'Password0120', 'Fullname0120', 27),
('UserName0121', 'Password0121', 'Fullname0121', 54),
('UserName0122', 'Password0122', 'Fullname0122', 54),
('UserName0123', 'Password0123', 'Fullname0123', 68);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
