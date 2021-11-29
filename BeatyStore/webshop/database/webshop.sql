-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 28, 2020 lúc 08:01 PM
-- Phiên bản máy phục vụ: 5.7.31
-- Phiên bản PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `created`) VALUES
(1, 'Goo', 'admin@gmail.com', '12345', 0, 2147483647),
(2, 'Mod đz', 'mod@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 2147483647);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `catalog`
--

DROP TABLE IF EXISTS `catalog`;
CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `description`, `parent_id`, `sort_order`, `created`) VALUES
(1, 'Mới', '', 0, 1, '2017-04-22 05:35:21'),
(2, 'Bán chạy', '', 0, 2, '2017-04-22 05:35:48'),
(3, 'Khuyến mại', '', 0, 3, '2017-04-22 05:35:59'),
(4, 'Tin tức', '', 0, 4, '2017-04-22 05:36:13'),
(5, 'Giỏ hàng', '', 0, 6, '2017-04-22 05:36:49'),
(6, 'Liên hệ', '', 0, 5, '2017-04-22 05:37:02'),
(7, 'Chăm sóc da', '', 1, 1, '2017-04-22 05:37:23'),
(8, 'Trang điểm', '', 1, 2, '2017-04-22 05:37:36'),
(9, 'Chăm sóc cá nhân', '', 1, 3, '2017-04-22 05:37:50'),
(10, 'Sửa rửa mặt', '', 7, 1, '2017-04-22 09:08:19'),
(11, 'Kem và sữa dưỡng da', '', 7, 2, '2017-04-22 09:08:36'),
(12, 'Chống nắng', '', 7, 3, '2017-04-22 09:09:01'),
(13, 'Xịt khoáng', '', 7, 4, '2017-04-22 09:09:14'),
(14, 'Tẩy tế bào chết', '', 7, 5, '2017-04-22 09:09:31'),
(15, 'Mắt', '', 8, 1, '2017-04-22 09:09:46'),
(16, 'Mặt', '', 8, 2, '2017-04-22 09:10:10'),
(17, 'Môi', '', 8, 3, '2017-04-22 09:23:39'),
(18, 'Phụ kiện trang điểm', '', 8, 4, '2017-04-22 09:23:57'),
(19, 'Chăm sóc tóc', '', 9, 1, '2017-04-22 09:25:55'),
(20, 'Vệ sinh phụ nữ', '', 9, 2, '2017-04-22 09:26:21'),
(21, 'Chăm sóc cơ thể', '', 9, 4, '2017-04-22 09:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(100) NOT NULL DEFAULT '0',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `transaction_id`, `product_id`, `qty`, `amount`, `status`) VALUES
(1, 3, 12, 1, '360000.00', 0),
(3, 4, 7, 1, '350000.00', 0),
(12, 9, 4, 1, '200000.00', 0),
(13, 10, 17, 1, '450000.00', 0),
(6, 5, 23, 1, '370000.00', 0),
(7, 6, 28, 1, '169000.00', 0),
(8, 6, 25, 1, '300000.00', 0),
(11, 8, 10, 1, '69000.00', 0),
(10, 7, 11, 1, '70000.00', 0),
(14, 11, 25, 1, '300000.00', 0),
(15, 12, 28, 1, '169000.00', 0),
(16, 13, 29, 1, '214000.00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `discount` int(11) DEFAULT '0',
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `buyed` int(255) NOT NULL,
  `rate_total` int(255) NOT NULL DEFAULT '4',
  `rate_count` int(255) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `content`, `price`, `discount`, `image_link`, `image_list`, `view`, `buyed`, `rate_total`, `rate_count`, `created`) VALUES
(1, 16, 'Che khuyết điểm Maybelline Fit Me 25 Medium', '<p><a href=\"https://www.sendo.vn/ao-so-mi-nu.htm\">&Aacute;Che khuyết điểm Maybelline Fit Me</a>&nbsp;Thành phần: \"AQUA / WATER, CI 77891 / TITANIUM DIOXIDE, CYCLOPENTASILOXANE, HYDROGENATED POLYISOBUTENE, SORBITAN ISOSTEARATE, GLYCERIN, PROPYLENE GLYCOL, CI 77491, CI 77492, CI 77499 / IRON OXIDES, TITANIUM DIOXIDE, OZOKERITE, PHENOXYETHANOL, MAGNESIUM SULFATE,..</p>\r\n\r\n<p><strong>Công dụng: Kem che khuyết điểm da năng FIT ME công thức không dầu, không hương liệu. Chất kem dạng lỏng mỏng mịn độ bám tốt giúp che phủ hoàn hảo trên da. Đầu cọ dạng mút dễ tán đều, độ che phủ hoàn hảo che được các loại khuyết điểm khác nhau (mụn, nám, tàn nhang, thâm, mẩn đỏ...). Phù hợp cho cả làn da dầu và làn da có mụn</p>\r\n\r\n<p><strong>Hướng dẫn sử dụng: Chấm kem lên khuyết điểm cần che, sau đó tán đều. Dùng phấn phủ lên để giữ lại lớp che khuyết điểm.</p>\r\n\r\n<p><strong>Xuất xứ: Trung Quốc</p>\r\n\r\n<p><strong>Maybelline New York là nhãn hiệu trang điểm được yêu thích số 1 tại Mỹ có sản xuất tại nhiều nhà máy trên toàn thế giới như Trung Quốc, Mỹ, Indonesia… Dù được sản xuất ở đâu, các sản phẩm đều tuân theo quy trình kiểm soát chất lượng nghiêm ngặt và đồng đều của Maybelline Toàn Cầu. Các sản phẩm chính hãng đều có tem nhãn tiếng Việt phía sau và nhập khẩu trực tiếp từ Công ty TNHH L’Oreal Việt Nam nên các bạn hoàn toàn yên tâm về chất lượng sản phẩm nhé.</p>\r\n\r\n\r\n', '158000.00', 16000, 'chekhuyetdiem.jpg', '[\"chekhuyetdiem.jpg\"]', 25, 1, 14, 3, 1493983674),
(2, 16, 'Huxley Phấn Nước Cover 2 Sand 12G', '', '990000.00', 0, 'phannuoc.jpg', '[\"phannuoc.jpg\"]', 3, 1, 4, 1, 1493983674),
(3, 16, 'Kem Lót Lâu Phai Chống Nắng Revlon Spf 40Pa+++', '<p>Kem Lót Lâu Phai Chống Nắng &nbsp;&nbsp;Kem Lót Chuyên Nghiệp Hoàn Hảo PhotoReady Perfecting cho làn da hoàn hảo toàn diện và ăn ảnh. Với công thức đặc biệt giúp căng da lấp đầy,che phủ lỗ chân lông và các nếp nhăn mang lại làn da tươi mới trẻ trung và thoải mái. Ngoài ra còn có chỉ số chống nắng SPF 15.</p>\r\n<p>HDSD:\r\nThoa đều sản phẩm lên da, trước bước kem nền cho da mềm mại và đều màu.</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '369000.00', 37000, 'kemlot.jpg', '[\"kemlot.jpg\"]', 43, 4, 11, 3, 1493983674),
(4, 18, 'Cọ Che Khuyết Điểm - Vacosi', '<p>Cọ Che Khuyết Điểm - Vacosi&nbsp;&nbsp; Cọ che khuyết điểm với đầu cọ tinh xảo và lông cọ mềm mịn bó chặt, giúp lớp kem mỏng nhẹ tự nhiên, không để lại vệt khi dùng.</p>\r\n\r\n<p>Hình dạng như chiếc cọ đánh nền mini, giúp lấy lượng kem vừa đủ. Dùng để che những vết sẹo trung bình, vùng da bị mụn nhiều hoặc vùng da dưới mắt.\r\nCó thể dùng để tán highlight kem vùng dưới mắt, xương chân mày.</p>\r\n\r\n<p><a href=\"guardian.com.vn/products/dau-tay-trang-sach-sau-senka-all-clear-oil-230ml\">Cọ Che Khuyết Điểm - Vacosi </a>&nbsp;với c&aacute;c th&ocirc;ng tin như sau:</p>\r\n\r\n<p>+ Mẫu m&atilde;: như h&igrave;nh;</p>\r\n\r\n<p>+ Xuất xứ: Hàn Quốc</p>\r\n\r\n<p>+ Cách dùng: Dùng để che những vết sẹo trung bình, vùng da bị mụn nhiều hoặc vùng da dưới mắt. Có thể dùng để tán highlight kem vùng dưới mắt, xương chân mày</p>\r\n\r\n<p>+ Thành phần: Lông nhân tạo, thép mạ Inox, Nhựa tổng hợp</p>\r\n\r\n<p>+ Kích thước: 22.5 x 4.5 x 1</p>\r\n', '50000.00', 7000, 'Cochekhuyetdiem.jpg', '[\"Cochekhuyetdiem.jpg\"]', 20, 7, 18, 4, 1493983674),
(12, 17, 'Son lì L\'oreal Color Riche Matte ', '<p>Thành phần: DIMETHICONE, BIS-DIGLYCERYL POLYACYLADIPATE-2, HYDROGENATED POLYISOBUTENE, PHENYL TRIMETHICONE, TRIDECYL TRIMELLITATE, CI 45410 / RED 28 LAKE, OZOKERITE, HYDROGENATED JOJOBA OIL, DIMETHICONE CROSSPOLYMER,...<br />\r\nCông dụng: Son lì mịn môi Color Riche Matte L\'oreal Paris </p>\r\n\r\n<p>+ Hướng dẫn sử dụng: Thoa trực tiếp lên môi</p>\r\n\r\n<p>+ Xuất xứ: CHINA<br />\r\n+  L’Oréal Paris là nhãn hiệu mỹ phẩm hàng đầu tại Châu Âu được sản xuất tại nhiều nhà máy trên toàn thế giới như Trung Quốc, Mỹ, Indonesia… Dù được sản xuất ở đâu, các sản phẩm đều tuân theo quy trình kiểm soát chất lượng nghiêm ngặt và đồng đều của L’Oréal Toàn Cầu. Các sản phẩm chính hãng đều có tem nhãn tiếng Việt phía sau và nhập khẩu trực tiếp từ công ty TNHH L’Oreal Việt Nam nên các bạn hoàn toàn yên tâm về chất lượng sản phẩm.<br /></p>\r\n', '238000.00', 24000, 'loreal.jpg', '[\"loreal.jpg\"]', 28, 3, 9, 2, 0),
(13, 17, 'Son lì Baby Bright Cotton Matte Lipstick', '<p><em>* Son môi dạng lì giúp trang điểm và tạo màu cho môi, ,giúp đôi môi tươi sáng, không gây khô môi.</p>\r\n\r\n<p>*&nbsp;<em>Thành Phần : Cetyl Ethylhexanoate,Ethylhexyl Palmitate,Silica,Ci 15985,,Polyethylene,Ci 77491,Vinyl Dimethicone/Methicone Silsesquioxane ,Crosspolymer,Ci 15850,Microcrystalline Wax,..</p>\r\n\r\n<p>*&nbsp;<em>Mở nắp, xoay thân son để lấy son ra tồi thoa đều khắp môi. ,Đóng chặt nắp sau khi sử dụng.</p>\r\n<p>*&nbsp;<em>Xuất Xứ Thái Lan .\r\nShelf- life : 3 năm.</p>\r\n', '129000.00', 26000, 'sonlibaby.jpg', '[\"sonlibaby.jpg\"]', 6, 1, 4, 1, 1493983674),
(6, 18, 'Cọ đánh môi cán trung RB8', '<p>&acute;Cọ đánh môi cán trung RB8&iacute;Dùng đánh son môi, cho đôi môi bạn mềm mại, quyến rũ, tự nhiên.</p>\r\n\r\n<p> Cách dùng: Chấm một lớp son mỏng và đánh đều lên bờ môi. Bảo quản trong bao hoặc hộp nơi khô thoáng, sạch sẽ</p>\r\n<p>Thành phần: Đầu cọ: lông ngựa non; thân & nắp: aluminum</p>\r\n', '25000.00', 3000, 'Codanhmoi.jpg', '[\"Codanhmoi.jpg\"]', 3, 1, 4, 1, 1493983674),
(7, 17, 'Himalaya Son Dưỡng Môi Chiết Xuất Dâu Tây', '<p> Son Dưỡng Môi d&agrave;</p>\r\n\r\n<p>C&aacute;c th&ocirc;ng tin như sau:</p>\r\n\r\n<p>+ Son dưỡng ẩm môi chiết xuất từ dâu tây tự nhiên làm mềm mịn, bóng hồng môi, bảo vệ môi khỏi tác động có hại từ môi trường</p>\r\n\r\n<p>+Thành phần chính: Chiết xuất dâu tây, Ricinus Communis Seed Oil, Castor oil.</p>\r\n\r\n<p>+ Hướng dẫn sử dụng: Thoa một lớp son dâu tây mỏng lên môi. Nên sử dụng cả ngày để nâng cao hiệu quả dưỡng ẩm, sáng bóng và mịn môi</p>\r\n\r\n<p>+ Bảo quản ở nơi khô ráo, thoáng mát, không tiếp xúc với ánh nắng mặt trời</p>\r\n\r\n<p>+ NSX: Trước hai (02) năm dựa trên HSD</p>\r\n<p>+ Sản xuất tại: Ấn Độ</p>\r\n<p>+ Nhà SX: The Himalaya Drug Company</p>', '69000.00', 0, 'sonduong.jpg', '[\"sonduong.jpg\"]', 21, 6, 13, 3, 1493983674),
(9, 15, 'Mascara Cho Mi Dày Và Dài Cực Đại Revlon So Fierce Mascara', '<p>►\"New So Fierce!™ Mascara cho mi dày và dài cực đại, giúp mắt to tròn, quyến rũ với làn mi cong! Độc đáo với 5 Không: không vón cục, không lem, không rơi, nhẹ như không, không trôi lên đến 24h cho làn mi cong tơi, dày và cực dài.<br />\r\n►Công thức vượt trội với dầu cám gạo giàu vitamin E giúp bảo vệ làn mi cho mi cực dày và mượt mà.   ►Cọ chải mi thiết kế độc đáo với 252 lớp giúp chạm từng sợi mi, phủ mi từ gốc đến ngọn, đem đến hiệu quả cực đại. <br />\r\n►Bạn hãy thử ngay bởi vì: 98% người dùng cho biết giúp mi cực dài (*) 96% người dùng cho biết yêu thích sản phẩm ngay lần sử dụng đầu tiên (*) (*) Nghiên cứu với 50 người dùng tham gia<br />\r\n► Hướng dẫn sử dụng: - Bấm mi trước khi chuốt mascara. - Chuốt từ trong ra ngoài theo hình ziczac. - Dùng với Chì kẻ mày 3 đầu tự nhiên Brow Creator và Kẻ mắt lâu trôi không thấm nước So Fierce Vinyl Eyeliner cho đôi mắt thần thái khí chất. Chỉ dùng ngoài da<br />\r\n►Áo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!<br />\r\n►Tránh tiếp xúc với mắt. Ngưng sử dụng khi có dấu hiệu dị ứng Tránh tiếp xúc trực tiếp với ánh sáng mặt trời</p>\r\n', '360000.00', 0, 'mascara.jpg', '[\"mascara.jpg\"]', 3, 1, 4, 1, 1493983674),
(11, 15, 'Bút Lông Kẻ Viền Mắt Revlon Liquid Eye Pen', '<p>Revlon Liquid Eye Pen với đầu bút mảnh, màu lên mượt và mịn, dễ điều khiển để vẽ các đường liner chuẩn xác, kể cả những bạn mới tập kẻ mắt.\r\nThêm vào đó, với công nghệ chống thấm nước SoftFlex độc quyền của Revlon giúp Revlon Liquid Eye Pen giữ màu lâu đến 16h.</p>\r\n\r\n<p>Công dụng:\r\nViền mắt, giúp mắt sâu và to hơn</p>\r\n\r\n\r\n', '260000.00', 26000, 'butlongkemat.jpg', '[\"butlongkemat.jpg\"]', 36, 3, 5, 1, 1493983674),
(10, 15, 'Bút sáp mắt và kẻ mắt 2in1 Browit Eyemazing Shadow', '<p>- Bút sáp mắt mềm mịn ánh ngọc trai, lâu trôi, chống nước, ,chống mồ hôi, bút kẻ mắt màu nâu đậm, dễ kẻ, nét sắc cho đôi mắt đẹp.<br />\r\n- TThành Phần : Eyeshadow: Cyclopentasiloxane,Trimethylsiloxysilicate,Mica,,Synthetic <br />\r\n- Dùng đầu sáp thoa đều lên bầu mắt. Dùng đầu bút kẻ vẽ theo đường ,mi mắt, tạo độ dày của đường kẻ và hình dạng đuôi mắt như mong muốn.<br />\r\n- Xuất Xứ Thái Lan .<br />\r\n- Shelf- life : 3 năm</p>\r\n', '199000.00', 20000, 'butsapmat.jpg', '[\"butsapmat.jpg\"]', 9, 2, 4, 1, 1493983674),
(14, 17, 'Son Kem Dạng Bóng Miracle Apo Lip Lacquer Cam Tươi Fresh Orange ', '<p>Bạn là người cá tính, thích thể hiện bản thân, thích theo những trào lưu trang điểm mới nhất và chắc hẳn là bạn không thể bỏ qua dạng son mới này!&nbsp;</p>\r\n\r\n<p>Công thức đặc chế với độ bền màu cao nhưng cực giàu dưỡng chất, giữ bờ môi luôn ẩm mượt.</p>\r\n\r\n<p>CÔNG DỤNG:\r\nSon dạng kem mịn, lướt êm và phủ đều trên môi, cho sắc màu hoàn hảo.</p>\r\n\r\n<p>THÀNH PHẦN:\r\nOlea Europaea (Olive) Fruit Oil&nbsp;</p>\r\n<p>Xuất xứ: Việt Nam;\r\nHSD: 3 năm từ ngày sản xuất</p>', '110000.00', 17000, 'sonkembong.jpg', '[\"sonkembong.jpg\"]', 4, 2, 4, 1, 1493983674),
(15, 17, 'Son kem chuẩn lì giữ màu 16h Maybelline Super', '<p>Chất liệu ren&nbsp;<a href=\"https://www.sendo.vn/cao-cap.htm\">cao cấp</a>&nbsp;cho 1 bạn 1 phong c&aacute;ch sang chảnh thu đ&ocirc;ng năm nay ,với c&aacute;c m&agrave;u diệu ,nồng nằng quyến rũ kh&ocirc;ng thể n&agrave;o kh&ocirc;ng cuốn h&uacute;t đươc tất cả &aacute;nh nh&igrave;n xung quanh h&ograve;a quyện v&agrave;o dạng x&ograve;e cổ điển&nbsp;<a href=\"https://www.sendo.vn/phoi-ren.htm\">Son kem </a>&nbsp;chuẩn lì.<br />\r\nSon Kem Chuẩn Lì Giữ Màu 16h Maybelline Super Stay Matte Ink - Phiên Bản City 5ml lâu trôi với độ giữ màu 16 tiếng, không lem, không trôi, không gây khô môi.&nbsp;<br />\r\n Hãy chọn cho mình tông màu yêu thích và trải nghiệm với dòng son mới.&nbsp;<br />\r\nHƯỚNG DẪN SỬ DỤNG\r\n- Dưỡng môi bằng son dưỡng cho môi mềm và dễ lên màu.\r\n- Dùng đầu cọ lấy son và tô lên môi chỉ với 1 lớp.\r\n- Để son khô trong khoảng 1 phút.\r\n- Dùng tẩy trang mắt môi Maybelline thấm vào bông tẩy trang, giữ khoảng 10s và lau sạch.&nbsp;<br />\r\nHSD: 3 năm kể từ ngày sản xuất ghi trên bao bì,\r\nXuất xứ thương hiệu: Mỹ,\r\nNơi sản xuất: Trung Quốc,\r\nThành phần: In trên bao bì,\r\nHướng dẫn bảo quản: Nơi thoáng mát, tránh ánh nắng trực tiếp.</p>\r\n', '208000.00', 21000, 'sonkem.jpg', '[\"sonkem.jpg\"]', 5, 1, 4, 1, 1493983674),
(16, 19, 'Dầu Gội Bưởi Milaganics ', '<p><strong><a href=\"http://aothun24h.vn/san-pham/170/Ao-gia-dinh.html\" target=\"_blank\">&Aacute;Dầu Gội Bưởi Milaganics </a>&nbsp;ngăn ngừa rụng tóc, kích thích mọc tóc với tinh dầu Vỏ Bưởi Dầu Gội Bưởi với sự kết hợp độc đáo giữa tinh dầu vỏ bưởi - vốn nổi tiếng với công dụng giảm rụng tóc, hỗ trợ mọc tóc - các hoạt chất thiên nhiên, Keratin, Biotin cùng công nghệ sản xuất khoa học. </p>\r\n\r\n<p>-Công dụng - Làm sạch da đầu - Kích thích mọc tóc - Giảm và ngăn ngừa tình trạng rụng tóc - Dưỡng tóc mềm mượt, chắc khỏe Cam kết chất lượng - Không chứa cồn - Không Paraben - Không Sulfate - Không Silicon.</p>\r\n\r\n<p>-Cách sử dụng - Thấm ướt tóc, bôi một lượng sản phẩm khoảng 5ml lên tóc - tương đương với 2 lần bơm. - Massage và gội nhẹ nhàng từ 3 – 5 phút sau đó xả sạch lại bằng nước sạch. - Kết hợp sử dụng với Dầu xả và Serum Bưởi Milaganics để phát huy tối đa hiệu quả mọc tóc và duy trì mái tóc khỏe đẹp nhất. - Tần suất sử dụng: Đối với tóc còn yếu, rụng nhiều cần sự thích nghi khi thay đổi sản phẩm mới thì nên dùng 3 lần/ tuần, tóc rụng ít thì có thể dùng mỗi ngày. - Thời gian để thấy được hiệu quả sử dụng: Khoảng 2 tuần sau sử dụng sẽ thấy tóc bóng mượt. Khoảng 5 - 6 tuần sẽ thấy tóc con xuất hiện và tóc cũ mọc dài hơn. Tuy nhiên, thời gian có thể kéo dài hơn tùy cơ địa và tình trạng tóc mỗi người.</p>\r\n\r\n<p>-Lưu ý khi sử dụng - Không để sản phẩm dính vào mắt. - Rửa lại bằng nước sạch và để yên cho mắt về trạng thái bình thường nếu sản phẩm không may dính vào mắt. - Để xa tầm tay trẻ em. Cách bảo quản Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp. Thương hiệu Milaganics Sản xuất tại Việt Nam Hạn sử dụng: 02 năm kể từ ngày sản xuất</p>\r\n', '139000.00', 14000, 'daugoibuoi.jpg', '[\"daugoibuoi.jpg\"]', 6, 3, 13, 3, 1493983674),
(17, 19, 'Dầu gôi bảo vệ tóc nhuộm LOREAL ELSEVE', '<p><strong>Th&ocirc;ng tin về sản phẩm:</strong></p>\r\n\r\n<p>-Thành phần: AQUA / WATER, SODIUM LAURETH SULFATE, DIMETHICONE, COCO-BETAINE, GLYCOL DISTEARATE, SODIUM CHLORIDE, GUAR HYDROXYPROPYLTRIMONIUM CHLORIDE, COCAMIDE MIPA, TOCOPHEROL, ...</p>\r\n\r\n<p>-Công dụng: Dầu gội bảo vệ màu tóc nhuộm</p>\r\n\r\n<p>-Hướng dẫn sử dụng: Thoa trực tiếp lên tóc,masage xả lại với nước sạch</p>\r\n\r\n<p>-Xuất xứ: INDONESIA</p>\r\n\r\n<p>-*L’Oréal Paris là nhãn hiệu mỹ phẩm hàng đầu tại Châu Âu được sản xuất tại nhiều nhà máy trên toàn thế giới như Trung Quốc, Mỹ, Indonesia… Dù được sản xuất ở đâu, các sản phẩm đều tuân theo quy trình kiểm soát chất lượng nghiêm ngặt và đồng đều của L’Oréal Toàn Cầu. Các sản phẩm chính hãng đều có tem nhãn tiếng Việt phía sau và nhập khẩu trực tiếp từ công ty TNHH L’Oreal Việt Nam nên các bạn hoàn toàn yên tâm về chất lượng sản phẩm nhé.</p>\r\n', '98000.00', 10000, 'daugoi.jpg', '[\"daugoi.jpg\"]', 37, 1, 14, 4, 1493983674),
(18, 20, 'Dung dịch vệ sinh phụ nữ Lactacyd ngày dài tươi mát ', '<p><strong>Chiết xuất Lá Trầu Không và Hoa Hồng giúp bảo vệ, ngăn mùi ở vùng nhạy cảm cho nàng tự tin, thoải mái và tươi tắn suốt 24 giờ.\r\nĐã từ lâu, phụ nữ Việt Nam đã dùng Lá trầu như một loại thảo dược để làm sạch vùng nhạy cảm vì Lá Trầu được biết đến là loại thảo dược có tính làm sạch, kháng khuẩn. Lá Trầu nay đã có trong Lactacyd Ngày Dài Tươi Mát.</strong></p>\r\n\r\n<p>Bảo vệ, ngăn mùi ở vùng nhạy cảm cho nàng tự tin, thoải mái và tươi tắn suốt 24 giờ.</p>\r\n\r\n<p><strong>Vẫn kế thừa các đặc tính nổi trội của dòng sản phẩm Lactacyd với Lactoserum chiết xuất từ sữa và Acid Lactic, Lactacyd Ngày Dài Tươi Mát mang đến cho vùng nhạy cảm sự mềm mại và tươi mát.</strong></p>\r\n\r\n<p>Công thức dịu nhẹ, được chứng nhận da liễu chuyên dành cho sử dụng hằng ngày!</p>\r\n<p>Cách sử dụng:\r\nChỉ dùng ngoài da như dung dịch rửa. Lấy một lượng dung dịch vừa đủ và rửa lại bằng nước sạc\r\n</p>\r\n<p>Xuất xứ: Việt Nam.\r\nHSD: 2 năm kể từ ngày sản xuất.\r\n\r\n', '42000.00', 4000, 'ddvesinh.jpg', '[\"ddvesinh.jpg\"]', 2, 1, 5, 1, 0),
(19, 21, 'Kem Dưỡng Da Chân Beauty Formulas ', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM&nbsp;</strong></p>\r\n\r\n<p>- Thành phần: Aqua (Water), Glycerin, Paraffinum Liquidum, Cetearyl Alcohol, .....\r\n</p>\r\n\r\n<p>-Công dụng: Kem dưỡng da chân Beauty Formulas nhập khẩu từ Anh Quốc giúp giữ ẩm, làm mềm da, xóa đi những vết bong tróc, nứt nẻ… đồng thời cung cấp độ ẩm và dưỡng chất cần thiết, nuôi dưỡng da chân mềm mại, mịn màng. Sản phẩm chiết xuất từ các thành phần tự nhiên, không gây kích ứng hay làm tổn thương da.</p>\r\n\r\n<p>- Cách sử dụng: Làm sạch da, nhẹ nhàng massage kem lên bàn chân/p>\r\n\r\n<p>- Lưu ý: Tránh tiếp xúc với mắt, nếu dính vào mắt rửa lại bằng nước sạch. Chỉ sử dụng ngoài da. Tránh xa tầm tay trẻ em\r\n</p>\r\n\r\n<p>- Xuất xứ: UK (Anh Quốc).\r\nSản xuất tại: UK (Anh Quốc).\r\nHSD: 3 năm kể từ NSX</p>\r\n', '85000.00', 5000, 'kemduongda.jpg', '[\"kemduongda.jpg\"]', 3, 1, 4, 1, 1493983674),
(20, 21, 'Kem dưỡng thể bông lúa E100 vitamin E ', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM&nbsp;</strong></p>\r\n\r\n<p>- Vitamin E được biết đến như một chất chống oxy hóa tuyệt vời nhất cho làn da, bảo vệ làn da khỏi các gốc tự do - thủ phạm của nếp nhăn, nám, tàn nhang, da sậm màu, nuôi dưỡng làn da khỏe mạnh từ sâu bên trong. Vì thế Kem dưỡng thể bông lúa E100 được mọi phụ nữ tin dùng bởi tinh chất dưỡng da dịu nhẹ, thẩm thấu nhanh vào da và hoàn toàn không gây kích ứng cho da.\r\n</p>\r\n\r\n<p>-Đặc điểm nổi bật:\r\n- Chứa các thành phần làm đẹp như vitamin E, dầu hạt hướng dương giúp giữ lại lớp dầu tự nhiên trên làn da, bổ sung độ ẩm, chống khô nẻ.\r\n- Chất kem mềm mịn, thấm nhanh và hương thơm dễ chịu đem lại cảm giác thoải mái khi sử dụng.\r\n</p>\r\n\r\n<p>- Công dụng:\r\n- Kem dưỡng thể bông lúa E100 vitamin E cung cấp những vitamin cần thiết cho làn da toàn thân phục hồi và tái tạo đồng thời tăng cường độ ẩm, chống khô nẻ rất tốt.\r\n- Kem có mùi thơm tự nhiên, bôi vào giúp làm dịu da, khiến da mềm ẩm, căng mướt.&nbsp;</p>\r\n\r\n<p>-Thành phần: Steareth 21, Laureth 2, Parsiol 1789, Tio2, complex vitamin B, vitamin C, vitamin E, Glycerin, nước, dầu hạt hướng dương.<br />\r\n&nbsp;</p>\r\n<p>-Hướng dẫn sử dụng: Làm sạch da, thoa 1 lớp mỏng 1-2 lần/ngày lên da, dùng được cả ban ngày lẫn ban đêm.\r\n<br />\r\n&nbsp;</p>\r\n<p>-Hướng dẫn bảo quản: Bảo quản nơi khô, mát, tránh ánh nắng trực tiếp.<br />\r\n&nbsp;</p>\r\n<p>-Xuất xứ: Việt Nam.\r\nHạn sử dụng: 3 năm kể từ ngày sản xuất ghi trên bao bì<br />\r\n&nbsp;</p>\r\n', '41000.00', 0, 'kemduong.jpg', '[\"kemduong.jpg\"]', 33, 1, 4, 1, 1493983674),
(21, 21, 'Lăn khử mùi Dove Go Fresh 40ml', '<p>T&ecirc;n sp:&nbsp;<a href=\"https://ban.sendo.vn/product\">Lăn khử mùi Dove Go Fresh </a><br />\r\n\r\nHương thơm nhẹ nhàng, tươi mát của dưa leo và trà xanh\r\n• 0% cồn để tránh rát ngứa\r\n• Chăm sóc vùng da dưới cánh tay\r\n• Công thức chứa 1/4 hàm lượng kem dưỡng ẩm giúp vùng da dưới cánh tay mềm mịn\r\n• Dễ dàng sử dụng\r\n• Giúp phục hồi vùng da bị tổn thương do sử dụng nhíp nhổ và dao cạo\r\nLăn khử mùi Dove dưa leo và trà xanh với công thức 1/4 hàm lượng kem dưỡng ẩm giúp vùng da dưới cánh tay bạn mềm mịn và trắng hơn chỉ sau 7 ngày. Hương thơm tươi mát, dịu nhé của dưa leo và trà xanh giúp bạn tự tin bắt đầu ngày mới suốt 48H\r\n<br />\r\n\r\nHướng dẫn sử dụng\r\nLăn đều lên vùng da dưới cánh tay mỗi ngày.\r\nTốt nhất sử dụng ngay sau khi tắm. Đợi sản phẩm khô rồi mặc áo.<br />\r\n\r\nLưu ý\r\nKhông dùng cho vùng da trầy xước.\r\nNgưng sử dụng trong trường hợp kích ứng da.<br />\r\nĐể xa tầm tay trẻ em.\r\nTránh tiếp xúc với mắt, nếu sản phẩm dính vào mắt hãy rửa kỹ với nước.&nbsp;\r\n<br />\r\nBảo quản: Bảo quản ở nhiệt độ thường. Tránh ánh nắng trực tiếp\r\n<br />\r\n<br />\r\nHạn sử dụng: 3 năm kể từ ngày sản xuất<br />\r\n<br />\r\n</p>\r\n', '590000.00', 7000, 'lankhumui.jpg', '[\"lankhumui.jpg\"]', 1, 1, 4, 1, 1493983674),
(22, 21, 'Double Rich Sữa Tắm Hoa Lily', '<p>Công dụng: Sữa tắm White Purity với tinh dầu hoa lily kết hợp cùng tinh dầu Jojoba giàu vitamin E cung cấp độ ẩm và giữ ẩm sâu cho da. Dưỡng chất nha đam (aloe vera) sẽ giúp làm dịu da, nuôi dưỡng và phục hồi sự tươi trẻ cho làn da trắng sáng, giúp bạn như đắm mình trong hương hoa lily ngọt ngào, tinh khiết.<br />\r\nChiết xuất dâu tằm trắng (Morus Alba) giảm sự hình thành sắc tố melanin (làm đen da), nâng cao hiệu quả làm trắng da và giữ ẩm.<br />\r\nLàn da sạch, ẩm mịn và đàn hồi<br />\r\nThư giãn nhẹ nhàng cùng hương hoa lily ngọt ngào, tinh khiết.<br />\r\n Phù hợp với mọi loại da.<br />\r\nHDSD: Cho một lượng sữa tắm vừa đủ vào lòng bàn tay hoặc bông tắm, tạo bọt rồi xoa đều nhẹ nhàng trên da, tắm lại với nước sạch.<br />\r\nThành phần: Aqua, Sodium Laureth Sulfate, Lauryl Hydroxysultaine, Sodium Chloride, Citric Acid, Fragrance, Vỏ cây Morus Alba, Lô hội, Tinh dầu Jojoba, Hoa lily,...</p>\r\n', '99000.00', 0, 'suatam.jpg', '[\"suatam.jpg\"]', 1, 1, 4, 1, 1493983674),
(23, 21, 'Eucerin dầu giảm rạn da 125ml', '<p><strong>TH&Ocirc;NG TIN SẢN PHẨM&nbsp;</strong></p>\r\n\r\n<p>- Eucerin Natural Caring Oil được phát triển dành riêng cho nhu cầu chăm sóc đặc biệt của da khô và da nhạy cảm, ngay cả trong thời gian mang thai.</p>\r\n\r\n<p>- Sản phẩm chứa Vitamin E và các loại dầu thực vật nguyên chất, giàu axit Linoleic, giúp tăng cường chức năng hàng rào tự nhiên của da. Dầu nhanh chóng được hấp thụ vào da khi massage.</p>\r\n\r\n<p>- Thường xuyên sử dụng dầu để massage sẽ giúp lưu thông máu, tăng cường độ đàn hồi của da và làm giảm sự xuất hiện của các vết rạn da.&nbsp;</p>\r\n\r\n<p>- Hạn sử dụng xem trên bao bì</p>\r\n\r\n\r\n', '590000.00', 0, 'eucerin.jpg', '[\"eucerin.jpg\"]', 20, 7, 22, 5, 1493983674),
(24, 11, 'Cetaphil sữa dưỡng ẩm 200ml\r\n', '<p>Công dụng, đặc điểm sản phẩm: Không gây nhờn rít, không gây mụn.</p>\r\n\r\n<p>Dạng sữa nhẹ giúp làm ẩm và nuôi dưỡng cho mọi loại da , đặc biệt da nhạy cảm. Tác dụng làm ẩm nhanh và kéo dài. </p>\r\n\r\n<p> Thành phần giúp da ngậm nước và tạo lớp màng ngăn ngừa mất nước qua da. Giúp bảo vệ hàng rào bảo vệ tự nhiên của da. </p>\r\n\r\n<p>Thành phần sản phẩm: Aqua, Glycerin, Hydrogenated Polyisobutene, Cetearyl Alcohol, Ceteareth-20, Macadamia Ternifolia (Refined Macadamia Nut Oil), Dimethicone, Tocopheryl Acetate, Stearoxytrimethylsilane, Stearyl Alcohol, Panthenol, Farnesol, Acrylates/C10-C30 Alkyl Acrylate Crosspolymer, Sodium Hydroxide.</p>\r\n\r\n<p> Hướng dẫn sử dụng: Tắm sạch, lau khô người. Thoa đều Cetaphil Moisturizing Lotion Cho Body and lên khắp vùng cơ thể. Sử dụng hằng ngày, bạn có thể dùng mỗi khi da bị khô. </p>\r\n\r\n<p>Thông tin bảo quản: Bảo quản Nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp HSD: 30 tháng kể từ NSX ghi trên bao bì.</p>\r\n\r\n<p>Xuất xứ:Canada</p>\r\n', '260000.00', 26000, 'Cetaphil.jpg', '[\"Cetaphil.jpg\"]', 37, 1, 9, 2, 1493983674),
(25, 11, 'Cell Fusion C Kem Làm Dịu Da Cho Mọi Loại Da 50ml', '<ul>\r\n	<li><strong><em>Cell Fusion C </em> </strong>Kem dưỡng ẩm ngày và đêm giúp làm dịu vùng da ửng đỏ, hiệu chỉnh tông da một cách tự nhiên</li>\r\n	<li>Kết cấu kem lỏng nhẹ tối ưu hóa khả năng thẩm thấu, tạo cảm giác dịu mát trên da</li>\r\n	<li>Ngăn ngừa khô da và giảm nhăn</li>	\r\n</ul>\r\n<p>Thành Phần: </p>\r\n<p>+Azulenol: thanh phần độc quyền giúp làm dịu, kháng viêm, tăng cường khả năng chống oxy hóa, tái tạo & phục hồi cấu trúc da nhạy cảm </p>\r\n<p>+Phức hợp Phyto: hợp chất chiết xuất từ những thành phần thực vật hữu cơ </p>\r\n<p>+Peptide: là những đoạn axit amin ngắn và khi có liên kết thì những đoạn peptide sẽ kết nối tạo thành collagen hay lớn hơn là protein trong cơ thể.</p>\r\n<p>+ Chiết xuất rau sam: giàu omega 3, khả năng diệt khuẩn</p>\r\n<p>Hướng Dẫn Sử Dụng:Sau bước làm sạch và toner, tinh chất (serum/ ampoule), dùng một lượng vừa đủ vỗ nhẹ lên da và massage theo chiều cấu tạo da</p>\r\n\r\n', '85000.00', 0, 'cellfusion.jpg', '[\"cellfusion.jpg\"]', 3, 1, 9, 2, 1493983674),
(26, 14, 'Bông tẩy tế bào chết hoá học COSRX One Step Original Clear Pad 70 Miếng', '<p><strong>Thông tin chi tiết sản phẩm</strong>:</p>\r\n\r\n<p>Tên sản phẩm : Bông tẩy tế bào chết hoá học COSRX One Step Original Clear Pad </p>\r\n\r\n<p>- Mã sản phẩm : SKU</p>\r\n\r\n<p>- Thành phần chính:\r\n- Salix Alba (Willow) Bark Water: Hỗ trợ làm sạch sâu. Cải thiện cấu trúc bề mặt da.\r\n- Betaine Salicylate (BHA): Loại bỏ tế bào da chết. Kiểm soát bã nhờn và giúp thông thoáng lỗ chân lông.i</p>\r\n\r\n<p>-Công dụng:\r\n- Làm sạch & tẩy tế bào chết nhẹ dịu\r\n- Giúp cân bằng độ pH của da và cải thiện cấu trúc bề mặt da.\r\n- Kiểm soát bã nhờn và khắc phục vấn đề lỗ chân lông. Ngăn ngừa tình trạng mụn hình thành.\r\n</p>\r\n\r\n<p>-Bảo quản: Nơi khô mát, tránh ánh nắng trực tiếp.>\r\n\r\n<p>-Xuất xứ thương hiệu: Hàn Quốc</p>\r\n<p>-Hạn sử dụng: 3 năm từ NSX</p>\r\n', '599000.00', 60000, 'bongtaytebaochet.jpg', '[\"bongtaytebaochet.jpg\"]', 6, 1, 9, 2, 1493983674),
(27, 14, 'Gel Tẩy Tế Bào Chết Keana Baking Soda Moist Peeling 120 g', '<p><a>Gel Tẩy Tế Bào Chết</a> Keana Baking Soda Moist Peeling&nbsp;</p>\r\n\r\n<p>Thành Phần:\r\nWater, Glycerin, Diglycerin, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Triethylhexanoin, Dianthus Longicalyx Seed Extract, Sodium Bicarbonate, Isopropyl Lauroyl Sarcosinate, Sodium Hyaluronate, Ethylhexylglycerin, Cetrimonium Chloride, Ci 16255, Propanediol, Alcohol. &nbsp;</p>\r\n\r\n<p>Cách sử dụng:\r\nGel này được sử dụng sau khi tẩy trang, trước khi rửa mặt\r\nBôi 1 lượng gel vừa đủ (3-5 lần ấn) thoa lên da mặt khi da đã không còn ướt.\r\nMassage nhẹ nhàng đến khi gel tạo thành những vụn mềm thì rửa lại mặt với nước.\r\nSau khi rửa mặt, không cần rửa lại với sữa rửa mặt, có thể dùng thay thế bước rửa mặt.\r\nNên dùng khoảng 2-3 lần/tuần.</p>\r\n<p>Xuất xứ: Nhật Bản</p>\r\n<p>Nhà sản xuất: ISHIZAWA LABORATORIES\r\n4-4-9 Jingumae, Shibuyaku, Tokyo, 150- 0001 Japan</p>\r\n', '540000.00', 54000, 'Geltaytebaochet.jpg', '[\"Geltaytebaochet.jpg\"]', 3, 1, 4, 1, 1493983674),
(28, 13, 'Nước Xịt Khoáng ', '<p>Nước Xịt Khoáng Eau Thermale Avène Thermal Spring Water</p>\r\n\r\n<p>Thành phần: AVENE THERMAL SPRING WATER (AVENE AQUA), NITROGEN.</p>\r\n\r\n<p>Công dụng: Giúp làm dịu và chống kích ứng cho da nhạy cảm, quá nhạy cảm hay da bị kích ứng.</p>\r\n\r\n<p>Sử dụng được trong các trường hợp sau: cháy nắng, khô da do đang điều trị da, đỏ da, hăm tã, các loại kích ứng da, sau cạo râu, sau khi tẩy lông, hoàn thiện bước tẩy trang, sau khi chơi thể thao, dùng vào mùa hè và khi đi du lịch.Cách dùng: Phun sương một lượng vừa đủ lên da. Đợi vài phút, sau đó để khô tự nhiên.</p>\r\n<p>Lưu ý: Tránh để sản phẩm trực tiếp dưới ánh sáng mặt trời. Không tiếp xúc với nhiệt độ trên 50 oC. Không chọc thủng bao bì hoặc đốt sản phẩm. Để xa tầm tay của trẻ em.</p>\r\n<p>Nước sản xuất: Pháp.</p>\r\n<p>Nhà sản xuất: Pierre Fabre Dermo-cosmétique, 45 Place Abel Gance, 92100 Boulogne, Pháp.</p>\r\n<p>HSD: 5 năm kể từ ngày sản xuất\r\n</p>\r\n', '170000.00', 17000, 'nuocxitkhoang.jpg', '[\"nuocxitkhoang.jpg\"]', 17, 1, 18, 4, 1493983674),
(29, 13, 'Uriage Nước Khoáng Chăm Sóc Da 150ml', '<p>CÔNG DỤNG: Dưỡng ẩm, cân bằng da, bổ sung tinh chất khoáng & nguyên tố vi lượng cần thiết cho da.\r\n1 giọt nước với rất nhiều tính năng: Dưỡng ẩm, làm dịu da, giảm viêm, giảm kích ứng, bảo vệ da,…</p>\r\n\r\n<p>THÀNH PHẦN: Aqua, Nitrogen</p>\r\n\r\n<p>HƯỚNG DẪN SỬ DỤNG: Xịt lên vùng da hoặc khu vực cần sử dụng (mắt, mũi…) và để nước khoáng tự thấm vào da, không cần vỗ hoặc lau.</p>\r\n\r\n<p>XUẤT XỨ: PHÁP</p>\r\n', '268000.00', 54000, 'nuockhoang.jpg', '[\"nuockhoang.jpg\"]', 25, 1, 4, 1, 1493983674);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `name`, `image_link`, `link`, `sort_order`, `created`) VALUES
(1, '1', 'slide1.png', 'http://localhost/webshop/product/view/4', 1, '2017-04-25 15:24:43'),
(4, '2', 'slide2.jpg', 'http://localhost/webshop/product/view/18', 4, '2017-04-25 15:36:41'),
(5, '3', 'slide3.jpg', 'http://localhost/webshop/product/view/28', 3, '2017-04-25 15:37:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `payment` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `status`, `user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `message`, `amount`, `payment`, `created`) VALUES
(4, 1, 0, 'An Nhiên', 'annhien@gmail.com', '0166666666', 'Hoàng Mai - Hà Nội', 'Vui lòng trao hàng đến địa chỉ trên...', '350000.00', '', 1493983674),
(3, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'GUi hang den dia chi tren', '360000.00', '', 1493983674),
(5, 1, 0, 'Bình Nguyễn', 'binh@gmail.com', '0987654321', 'Hà Nội ', 'Gửi đến địa chỉ trên', '370000.00', '', 1494083674),
(6, 0, 0, 'Tô Nam', 'tonam@yahoo.com.vn', '098989876', 'Thủy Nguyên - Hải Phòng', 'Ship đến địa chỉ vào sáng ngày 23/5', '469000.00', '', 1494283674),
(7, 1, 5, 'GoO', 'GoO@gmail.com', '01215345336', 'Hải Phòng', 'Ship vào sáng mai.', '70000.00', '', 1494183674),
(8, 0, 0, 'Linh', 'ling@yahoo.com', '098798787', 'hai Phong', 'ship', '69000.00', '', 1494342674),
(9, 1, 0, 'Nhi', 'nhi@test.com', '0987654321', 'Long Biên - Hà Nội', 'Gửi hàng đến địa chỉ trên vào ngày mai', '200000.00', '', 1493983674),
(10, 0, 0, 'VIP User', 'test@gmail.com', '1234567890', 'Hải Phòng', 'Ship free', '450000.00', '', 1493983674),
(11, 0, 0, 'test', 'test@gmail.com', '1234567890', 'Hải Phòng', 'TESE', '300000.00', '', 1494383674),
(12, 0, 6, 'Nguyen An', 'khachhang1@gmail.com', '01201212222', 'Thủy Nguyên - Hải Phòng', 'SHIP TO', '169000.00', '', 1494407353),
(13, 0, 0, '163.nhuy@gmail.com', '283.Giang@gmail.com', '1234', 'asdff', 'ádffgg', '214000.00', '', 1606471134);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `phone`, `address`, `created`) VALUES
(6, 'Nguyen An', 'khachhang1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01201212222', 'Thủy Nguyên - Hải Phòng', 2147483647),
(5, 'User', 'user@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2147483647),
(7, 'TEST@gmail.com', 'TEST@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01215345336', 'Hải Phòng', 2017);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
