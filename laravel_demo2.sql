-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 09:54 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idTinTuc` int(10) UNSIGNED NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `idUser`, `idTinTuc`, `NoiDung`, `created_at`, `updated_at`) VALUES
(112, 16, 1028, 'fff', '2019-12-15 07:31:53', '2019-12-15 07:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE `loaitin` (
  `id` int(10) UNSIGNED NOT NULL,
  `idTheLoai` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`id`, `idTheLoai`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Giáo Dục', 'Giao-Duc', NULL, NULL),
(2, 1, 'Nhịp Điệu Trẻ', 'Nhip-Dieu-Tre', NULL, NULL),
(3, 1, 'Du Lịch', 'Du-Lich', NULL, NULL),
(4, 1, 'Du Học', 'Du-Hoc', NULL, NULL),
(5, 2, 'Cuộc Sống Đó Đây', 'Cuoc-Song-Do-Day', NULL, NULL),
(23, 5, 'Chân Dung', 'Chan-Dung', NULL, NULL),
(24, 5, 'Ảnh', 'Anh-TT', NULL, NULL),
(25, 6, 'Hình Sự', 'Hinh-Su', NULL, NULL),
(28, 5, 'bóng đá', 'bong-da', '2019-10-29 13:42:01', '2019-10-29 13:42:01'),
(29, 2, 'Quân Sự', 'quan-su', '2019-11-16 17:09:15', '2019-11-16 17:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_09_021546_Tao_TheLoai', 2),
('2016_06_09_021610_Tao_LoaiTin', 3),
('2016_06_09_021813_Tao_TinTuc', 4),
('2016_06_09_022526_Tao_Slide', 5),
('2016_06_09_022904_Tao_Comment', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `Ten`, `Hinh`, `NoiDung`, `link`, `created_at`, `updated_at`) VALUES
(6, '...', 'GpYo_ban.jpg', '<p>...</p>', 'google.com', '2019-10-19 13:42:32', '2019-10-19 13:42:32'),
(7, 'aaaa', 'sOHI_download.jpg', '<p>aaaaa</p>', 'google.com', '2019-12-16 08:29:21', '2019-12-16 08:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `Ten`, `TenKhongDau`, `created_at`, `updated_at`) VALUES
(1, 'Xã Hội', 'Xa-Hoi', NULL, NULL),
(2, 'Thế Giới', 'The-Gioi', NULL, NULL),
(3, 'Kinh Doanh', 'Kinh-Doanh', NULL, NULL),
(4, 'Văn Hoá', 'Van-Hoa', NULL, NULL),
(5, 'Thể Thao', 'The-Thao', NULL, NULL),
(6, 'Pháp Luật', 'Phap-Luat', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `TinNong` int(11) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKhongDau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiBat` int(11) NOT NULL DEFAULT 0,
  `SoLuotXem` int(11) NOT NULL DEFAULT 0,
  `idLoaiTin` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`TinNong`, `id`, `TieuDe`, `TieuDeKhongDau`, `TomTat`, `NoiDung`, `Hinh`, `NoiBat`, `SoLuotXem`, `idLoaiTin`, `created_at`, `updated_at`) VALUES
(1, 1025, 'Từ tiếng kêu cứu ở gò mả lúc rạng sáng, dân tóm gọn “yêu râu xanh”', 'tu-tieng-keu-cuu-o-go-ma-luc-rang-sang-dan-tom-gon-yeu-rau-xanh-', 'Trong đêm vắng, người phụ nữ đang trên đường đi nhổ lông vịt thuê thì bị một nam thanh niên dùng hung khí ép vào gò mả để “tâm sự”.', '<p>Chiều 31/10, UBND xã Long Bình (huyện Gò Công Tây, tỉnh Tiền Giang) xác nhận, nghi phạm khống chế người phụ nữ ở khu gò mả trên địa bàn đang bị công an tạm giữ để phục vụ công tác điều tra.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Từ tiếng kêu cứu ở gò mả lúc rạng sáng, dân tóm gọn “yêu râu xanh” - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-10-31/1572521575-230-tu-tieng-keu-cuu-o-go-ma-luc-rang-sang-dan-tom-gon-yeu-rau-xanh-go-ma-1572521392-width660height564.jpg\" style=\"border:0px; font-size:12px; max-width:660px\" /></p>\r\n\r\n<p style=\"text-align:center\">Lực lượng công an khám nghiệm hiện trường</p>\r\n\r\n<p>Theo thông tin ban đầu, vào rạng sáng cùng ngày, một người phụ nữ 32 tuổi ngụ tại ấp Hòa Phú (xã Long Bình) rời khỏi nhà để đi nhổ lông vịt thuê. Khi người phụ nữ đi đến khu gò mả vắng vẻ (cách nhà không xa) thì bị một nam thanh niên chặn đường, dùng hung khí uy hiếp đưa vào khu vực gò mả nhằm thực hiện hành vi&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/lam-dung-tinh-duc-c46e4257.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"hiếp dâm\">hiếp dâm</a>. Tuy nhiên, khi chưa thực hiện được hành vi đồi bại thì bị người phụ nữ chống trả, hô hoán.</p>\r\n\r\n<p>Nghe tiếng kêu thất thanh trong đêm, người dân đã chạy đến ứng cứu và khống chế đối tượng để giao cơ quan công an. Tại hiện trường, lực lượng chức năng thu giữ 1 con dao tự chế dài khoảng 1 mét.</p>\r\n\r\n<p>Bước đầu, nghi phạm khai nhận tên Nguyễn Minh Quân (ngụ huyện Gò Công Tây). Quân cho biết đã theo dõi giờ giấc sinh hoạt của người phụ nữ trước khi ra tay.</p>\r\n\r\n<p>Hiện nguyên nhân vụ việc đang tiếp tục được điều tra làm rõ.</p>', '7Jtv_1572521575-230-tu-tieng-keu-cuu-o-go-ma-luc-rang-sang-dan-tom-gon-yeu-rau-xanh-go-ma-1572521392-width660height564.jpg', 1, 0, 25, '2019-10-31 13:52:50', '2019-10-31 13:52:50'),
(1, 1027, 'Chủ tịch công ty chém người ở chung cư Land Mark 81 do mâu thuẫn làm ăn', 'chu-tich-cong-ty-chem-nguoi-o-chung-cu-land-mark-81-do-mau-thuan-lam-an', '<p>Bước đầu, tại cơ quan điều tra, chủ tịch một công ty thừa nhận dùng hung chí chém người thương tích do mâu thuẫn làm ăn.</p>', '<p>Chiều 31-10, Công an quận Bình Thạnh, TP HCM cho biết đang tạm giữ hình sự Nguyễn Hoàng Phi Đạt (29 tuổi, ngụ quận Tân Phú) để điều tra về hành vi cố ý gây thương tích. Sau khi bị bắt, công an xác định Đạt dương tính với ma tuý.</p>\r\n\r\n<p><img alt=\"Chủ tịch công ty chém người ở chung cư Land Mark 81 do mâu thuẫn làm ăn - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-10-31/1572515155-78eadc3c0ab0e9dc4d4c7d5a699700e3.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align:center\">Cảnh sát bao vây đối tượng tại toà nhà Lan Mark 81 (quận Bình Thạnh)</p>\r\n\r\n<p>Theo điều tra bước đầu, Đạt là chủ tịch Công ty Hoàng Gia có trụ sở tại tòa nhà Land Mark 81 (phường 22, quận Bình Thạnh). Khoảng 14 giờ 30 ngày 30-10, anh Lê Hoàng Tuấn đến tầng 43 toà nhà Landmark 81 để gặp Đạt. Tại đây, do mâu thuẫn trong việc làm ăn nên 2 người to tiếng với nhau.</p>\r\n\r\n<p>Ngay lập tức Đạt nói người đóng cửa không cho anh Tuấn ra ngoài, sau đó dùng hung khí tấn công khiến anh Tuấn bị thương tích nhưng may mắn anh này chạy thoát được xuống dưới.&nbsp;</p>\r\n\r\n<p>Tiếp đó, Đạt dùng hung khí chém anh Nguyễn Văn Quý bị thương. Đối tượng này tiếp tục khống chế, nhốt anh Trần Văn Hinh và anh Quý trong căn hộ rồi dùng dao đe doạ đoạt mạng.</p>\r\n\r\n<p>Nhận được tin báo, lực lượng Công an quận Bình Thạnh nhanh chóng có mặt tại hiện trường thuyết phục Đạt thả nạn nhân nhưng đối tượng không chấp hành.&nbsp;</p>\r\n\r\n<p>Đến 21 giờ cùng ngày, tổ công tác đặc nhiệm thuộc Trung đoàn cảnh sát cơ động, Công an TP HCM có mặt tại hiện trường cùng phối hợp với Công an quận Bình Thạnh lên phương án giải cứu con tin. Sau nhiều lần tìm cách tiếp cận, tổ công tác chọn phương án phá cửa và dùng quả nổ nghiệp vụ để giải cứu nạn nhân.&nbsp;</p>\r\n\r\n<p>Bị đột kích bất ngờ Đạt không kịp trở tay, nên đã bị công an tóm gọn. Hai người bị Đạt khống chế cũng được giải cứu an toàn.&nbsp;</p>', '1fxZ_1572515155-78eadc3c0ab0e9dc4d4c7d5a699700e3.jpg', 1, 0, 25, NULL, '2019-10-31 13:58:19'),
(1, 1028, 'Anh: Choáng váng phát hiện đường hầm tới khu trồng cần sa thu 120 tỷ đồng/ năm', 'anh-choang-vang-phat-hien-duong-ham-toi-khu-trong-can-sa-thu-120-ty-dong-nam', 'Sau khi nhận được tin báo từ những người hàng xóm về ngôi nhà đáng ngờ, cảnh sát Anh tới điều tra và phát hiện một đường hầm bí mật dẫn tới trang trại cần sa hàng chục triệu USD dưới lòng đất.', '<p style=\"text-align: center;\"><img alt=\"Anh: Choáng váng phát hiện đường hầm tới khu trồng cần sa thu 120 tỷ đồng/ năm - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-04/1572863864-822-anh-phat-hien-duong-ham-bi-mat-trong-wc-dan-den-trang-trai-can-sa-50-trieu-usd-20552802-7645273-image-m-28_1572815432726--1--1572854139-width634height584.jpg\" style=\"border:0px; font-size:12px; max-width:660px\" /></p>\r\n\r\n<p style=\"text-align: center;\">Đường hầm bí mật dẫn tới trang trại cần sa 50 triệu USD ở Anh</p>\r\n\r\n<p style=\"text-align: center;\">Tờ Daily Mail hôm 3/11 đưa tin, đường hầm dài 21 mét chạy từ toilet của ngôi nhà 4 phòng ngủ tới khu vực rộng lớn dưới lòng đất, bên trên là các cửa hiệu thuộc đường phố Deptford, đông bắc thủ đô London, Anh.</p>\r\n\r\n<p style=\"text-align: center;\">Theo một nguồn tin, các thanh tra cho rằng khu trang trại cần sa này đã hoạt động trong suốt một thập kỷ, thu về hơn 5 triệu USD (120 tỷ đồng)/năm.</p>\r\n\r\n<p style=\"text-align: center;\">Băng nhóm tội phạm được cho là sử dụng cáp điện ngầm để cấp năng lượng cho trang trại cần sa.</p>\r\n\r\n<p style=\"text-align: center;\">Cảnh sát phát hiện đường hầm bí mật sau khi hàng xóm báo tin về một vụ đột nhập vào ngôi nhà đáng ngờ. Khi kiểm tra nhà vệ sinh, cảnh sát phát hiện nó hoàn toàn trống rỗng.</p>\r\n\r\n<p style=\"text-align: center;\">Băng nhóm tội phạm đã xây một cánh cửa bằng gạch để che giấu lối đi bí mật. Đường hầm còn có khu vực thông gió đồng thời là lối thoát trong trường hợp có sự cố.</p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Anh: Choáng váng phát hiện đường hầm tới khu trồng cần sa thu 120 tỷ đồng/ năm - 2\" class=\"loaded news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-04/1572863864-256-anh-phat-hien-duong-ham-bi-mat-trong-wc-dan-den-trang-trai-can-sa-50-trieu-usd-20554684-7645273-image-a-34_1572818399545-1572854139-width634height409.jpg\" style=\"border:0px; font-size:12px; max-width:660px\" /></p>\r\n\r\n<p style=\"text-align: center;\">Lỗ thông gió và cũng là lối thoát trong trường hợp sự cố xảy ra tại trang trại cần sa dưới lòng đất</p>\r\n\r\n<p style=\"text-align: center;\">Ngôi nhà đáng nghi đã bị phong tỏa, đường hầm bên trong cũng bị bịt kín. Cảnh sát tin rằng kẻ thiết kế phải là một người có chuyên môn về xây dựng vì đường hầm được xây dựng vô cùng khéo léo.</p>\r\n\r\n<p style=\"text-align: center;\">Một doanh nhân sống gần ngôi nhà cho biết: \"Việc này xảy ra ngay cạnh nhà tôi suốt 10 năm mà chúng tôi không hề hay biết. Tôi khá sốc khi biết tin.</p>\r\n\r\n<p style=\"text-align: center;\">Vợ tôi và tôi đôi khi nghe thấy tiếng động giống như tiếng khoan. Nó không kéo dài nhưng khiến bức tường trên lầu rung mạnh. Chúng tôi không biết chuyện gì đã xảy ra và chỉ nghĩ rằng căn nhà bên cạnh đang được sửa\".</p>\r\n\r\n<p style=\"text-align: center;\">Vị doanh nhân này cho biết 2 người đàn ông đã đột nhập vào khu vực phía sau nhà hồi tháng 8 và lấy đi một số chùm chìa khóa. Nhưng họ lại đi nhầm và bị vị doanh nhân bắt gặp. Một tên trong số này bỏ chạy, trong khi tên còn lại gây gổ với vị doanh nhân.</p>\r\n\r\n<p style=\"text-align: center;\">Hồi tháng 9, hai người đàn ông khác tiếp tục tới đạp cửa nhầm ngôi nhà bên cạnh, nơi có các sinh viên đang ở. Ngày 1/10, cảnh sát được gọi tới và họ tìm thấy đường hầm bí mật.</p>\r\n\r\n<p style=\"text-align: center;\">Hồi đầu năm, cảnh sát Anh cũng phát hiện hàng trăm cây cần sa tại một hầm ngầm với đèn, quạt và và máy sưởi ở thành phố Wolverhampton.</p>\r\n\r\n<p style=\"text-align: center;\">Năm 2017, 3 người đàn ông bị bỏ tù vì điều hành một trang trại cần sa dưới lòng đất ở hạt Wiltshire, Anh. Theo cảnh sát, trang trại này có thể thu về 2,5 triệu USD/năm.</p>', 'VMW3_1572863864-822-anh-phat-hien-duong-ham-bi-mat-trong-wc-dan-den-trang-trai-can-sa-50-trieu-usd-20552802-7645273-image-m-28_1572815432726--1--1572854139-width634height584.jpg', 1, 0, 1, '2019-11-04 12:57:08', '2019-11-04 12:57:08'),
(1, 1031, 'Bầu cử Hong Kong: Phe ủng hộ dân chủ thắng lớn', 'bau-cu-hong-kong-phe-ung-ho-dan-chu-thang-lon', 'Tính đến 7 giờ sáng nay 25-11, phe ủng hộ dân chủ thắng thế đa số ở ít nhất 12/18 hội đồng khu, với 278 ghế.', '<p style=\"text-align: justify;\">Đã có kết quả cuộc bầu cử địa phương Hong Kong hôm qua. Theo báo&nbsp;SCMP, làn sóng biểu tình 6 tháng qua đã tác động ngoạn mục đến cuộc bầu cử, cả về số người đi và kết quả bầu cử.</p>\r\n\r\n<p style=\"text-align: justify;\">Từ kết quả bầu cử có thể nhận diện rõ hơn cơn sóng thần bất mãn của người dân Hong Kong với chính quyền hiện tại: bộ phận ứng viên thân chính phủ đại lục thua thảm trước bộ phận ứng viên ủng hộ dân chủ. Phe ủng hộ dân chủ thắng ngoạn mục ở nhiều khu dân cư cả giàu lẫn nghèo, ở cả các khu vực thường xảy ra biểu tình và cả các khu vực ít xảy ra biểu tình, ở cả các khu vực nội thành lẫn ngoại ô, theo SCMP.</p>\r\n\r\n<p style=\"text-align: justify;\">Tỷ lệ người đi bầu trong cuộc bầu cử hôm qua cao kỷ lục trước nay: 2,94 triệu cử tri, tương đương 71,2% số người đã đăng ký đi bầu, so với chỉ 47% trong cuộc bầu cử năm 2015.</p>\r\n\r\n<p style=\"text-align: justify;\">Tiến trình kiểm phiếu bắt đầu từ 10 giờ 30 tối 24-11, và màu trên bản đồ hội đồng các địa phương gồm 452 thành viên nhanh chóng thay đổi từ đa số màu xanh dương (màu của phe ủng hộ chính phủ đại lục) sang màu vàng (màu của phe ủng hộ dân chủ).</p>\r\n\r\n<div class=\"txtCent\" id=\"ADS_159_15s\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; color: rgb(0, 0, 0);\">\r\n<div class=\"banner_inread\" style=\"margin: 0px auto; border: 0px;\">\r\n<div id=\"div-gpt-ad-1492584112323-48\" style=\"margin: 0px auto; height: 1px; width: 640px; border: 0px; position: relative;\">\r\n<div id=\"google_ads_iframe_/124557882/24h/vn/desktop/world/in_readvideo_article_0__container__\" style=\"border: 0pt none; text-align: justify;\"><iframe frameborder=\"0\" height=\"360\" id=\"google_ads_iframe_/124557882/24h/vn/desktop/world/in_readvideo_article_0\" name=\"google_ads_iframe_/124557882/24h/vn/desktop/world/in_readvideo_article_0\" scrolling=\"no\" style=\"border-width: 0px; border-style: initial; vertical-align: bottom; height: 1px; width: 640px;\" title=\"3rd party ad content\" width=\"640\"></iframe></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align: justify;\"><img alt=\"Bầu cử Hong Kong: Phe ủng hộ dân chủ thắng lớn - 2\" class=\"loaded news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-25//1574645794-c69ec0b6bfd0d8467952c12fc102447d.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Cuộc bầu cử được tổ chức sau 6 tháng biểu tình liên tục ở Hong Kong. Ảnh: EPA-EFE</p>\r\n\r\n<p style=\"text-align: justify;\">Tính đến 7 giờ sáng nay 25-11, phe ủng hộ dân chủ thắng thế đa số ở ít nhất 12/18 hội đồng khu, với 278 ghế.</p>\r\n\r\n<p style=\"text-align: justify;\">Phe ủng hộ chính phủ đại lục chỉ mới thắng có 42 ghế. Đảng thân chính phủ đại lục lớn nhất ở Hong Kong – đảng Liên minh Dân chủ vì Sự Tiến bộ của Hong Kong (DAB) có 179 ứng viên tham gia cuộc bầu cử này, nhưng theo số phiếu kiểm tính tới 5 giờ 30 sáng nay chỉ mới thắng được 21 ghế.</p>\r\n\r\n<p style=\"text-align: justify;\">Bộ phận ứng viên tự do thắng 24 ghế.</p>\r\n\r\n<p style=\"text-align: justify;\">Trong cuộc bầu cử địa phương năm 2015, tất cả các hội đồng khu đều do phe thân chính phủ đại lục kiểm soát.</p>\r\n\r\n<p style=\"text-align: justify;\"><img alt=\"Bầu cử Hong Kong: Phe ủng hộ dân chủ thắng lớn - 3\" class=\"loaded news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-25//1574645794-cbcc0282ff607928978f11f8ccf1d56b.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Tỷ lệ người đi bầu trong cuộc bầu cử địa phương hôm qua của Hong Kong cao kỷ lục so với những kỳ bầu cử trước và đó có thể là một nguyên nhân dẫn đến thất bại của phe ủng hộ chính quyền đại lục. Ảnh: REUTERS</p>\r\n\r\n<p style=\"text-align: justify;\">Một phần lớn ứng viên ủng hộ dân chủ là những người trẻ, là những gương mặt mới. Trong số những người thắng cử có nhiều người trong số này tham gia tích cực trong đợt biểu tình ở Hong Kong 6 tháng qua. Trong số các ứng viên chiến thắng có ít nhất 5 người từng tham gia hoạt động trong phong trào Dù vàng năm 2014.</p>\r\n\r\n<p style=\"text-align: justify;\"><img alt=\"Bầu cử Hong Kong: Phe ủng hộ dân chủ thắng lớn - 4\" class=\"loaded news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-25//1574645794-0664d7d660e9c47931779e0305e5743c.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Nhiều người trong số 2,94 triệu cử tri đi bỏ phiếu hôm qua là những người lần đầu tiên đi bầu. Ảnh: EPA</p>\r\n\r\n<p style=\"text-align: justify;\">Theo SCMP, với thất bại này, Trưởng Đặc khu Lâm Trịnh Nguyệt Nga sẽ gặp khó khăn hơn rất nhiều, dù bà Lâm ngày 24-11 có cố gắng nói cuộc bầu cử này chỉ là nằm trong khuôn khổ địa phương.</p>\r\n\r\n<p style=\"text-align: justify;\">Dù các hội đồng khu chỉ phụ trách các vấn đề địa phương và không có tiếng nói trực tiếp với các chương trình của Trưởng Đặc khu, tuy nhiên theo SCMP, cuộc bầu cử này là phép thử với sự ủng hộ của người dân với chính quyền Hong Kong và cả với phong trào biểu tình.</p>', 'PbJ7_1574645794-0664d7d660e9c47931779e0305e5743c.jpg', 1, 0, 5, '2019-12-16 07:34:50', '2019-12-16 07:34:50'),
(1, 1032, 'Ankara khoe bắt được vợ của trùm IS, Trump lập tức gọi cho Erdogan', 'ankara-khoe-bat-duoc-vo-cua-trum-is-trump-lap-tuc-goi-cho-erdogan', 'Tổng thống Mỹ Donald Trump tuyên bố trên Twitter về một cuộc điện đàm rất tốt với Tổng thống Thổ Nhĩ Kỳ Tayyip Erdogan.', '<p style=\"text-align: justify;\"><img alt=\"Ankara khoe bắt được vợ của trùm IS, Trump lập tức gọi cho Erdogan - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-07/1573120837-a72bf665b5c0b133411488512aff78d7.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Tổng thống hai nước Mỹ - Thổ Nhĩ Kỳ.</p>\r\n\r\n<p style=\"text-align: justify;\">Được biết, cuộc điện đàm giữa hai tổng thống liên quan đến việc bắt giữ phiến quân Nhà nước Hồi giáo tự xưng (IS) và tình hình ở biên giới với Syria.</p>\r\n\r\n<p style=\"text-align: justify;\">\"Tôi vừa có một cuộc trò chuyện rất tốt với tổng thống Thổ Nhĩ Kỳ. Ông ấy thông báo với tôi rằng quân đội Thổ Nhĩ Kỳ đã bắt được một số phiến quân IS, bao gồm cả vợ và em chị gái của thủ lĩnh khủng bố IS Abu Bakr al-Baghdadi\", - ông Trump viết.</p>\r\n\r\n<p style=\"text-align: justify;\">Ngoài ra, Tổng thống Mỹ&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/donald-trump-c415e4024.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"Donald Trump\">Donald Trump</a>&nbsp;xác nhận rằng ông sẽ gặp ông Erdogan ở Washington vào ngày 13/11.</p>\r\n\r\n<p style=\"text-align: justify;\">Trước đó, Tổng thống Thổ Nhĩ Kỳ Recep Tayyip Erdogan tuyên bố rằng lực lượng an ninh Thổ Nhĩ Kỳ đã bắt giữ vợ của thủ lĩnh Nhà nước Hồi giáo tự xưng ở Syria.</p>\r\n\r\n<p style=\"text-align: justify;\">Tổng thống Mỹ Donald Trump hôm 27/10 tuyên bố tiêu diệt al-Baghdadi. Theo lời ông Trump, trong quá trình chiến dịch của quân đội Mỹ, kẻ khủng bố đã kích hoạt đai tự sát, tuy nhiên, al-Baghdadi đã được xác định nhanh chóng và chính xác bằng công nghệ nhận dạng tại chỗ.</p>', '9TvY_1573120837-a72bf665b5c0b133411488512aff78d7.jpg', 1, 0, 29, '2019-12-16 07:37:03', '2019-12-16 07:37:03'),
(1, 1033, 'Phản ứng của báo TQ sau khi người biểu tình đập phá trụ sở Tân Hoa Xã ở Hong Kong', 'phan-ung-cua-bao-tq-sau-khi-nguoi-bieu-tinh-dap-pha-tru-so-tan-hoa-xa-o-hong-kong', 'Truyền thông nhà nước Trung Quốc trong hôm nay (4.11) kêu gọi giới chức nước này nên đưa ra một \"đường lối cứng rắn hơn\" sau khi trụ sở hãng thông tấn Tân Hoa Xã và các tòa nhà khác ở Hong Kong bị người biểu tình phá hoại vào cuối tuần qua.', '<p style=\"text-align: justify;\"><img alt=\"Phản ứng của báo TQ sau khi người biểu tình đập phá trụ sở Tân Hoa Xã ở Hong Kong - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-11-04/1572859113-58-bao-chi-trung-quoc-ra-tuyen-bo-cung-ran-voi-nguoi-bieu-tinh-sau-khi-tru-so-tan-hoa-xa-o-hong-kong-bi-ak_xna_0411-1572853274-width780height520.jpg\" style=\"border:0px; font-size:12px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Trụ sở Tân Hoa Xã ở Hong Kong bị người biểu tình đập phá (Ảnh: Strait Times)</p>\r\n\r\n<p style=\"text-align: justify;\">Trong một bài xã luận, tờ Nhật báo Trung Quốc đã chỉ trích các cuộc tấn công \"bừa bãi\" của những người biểu tình \"ngây thơ\" tại Hong Kong, và nói thêm rằng, \"Họ cam chịu thất bại đơn giản vì bạo lực của họ sẽ gặp phải toàn bộ sức nặng của luật pháp\".</p>\r\n\r\n<p style=\"text-align: justify;\">Cảnh sát đã bắn hơi cay vào những người biểu tình mặc áo đen vào thứ Bảy (2.11), trong một số vụ bạo lực tồi tệ nhất ở Hong Kong suốt nhiều tuần qua, với các trạm tàu ​​điện ngầm bị phóng hỏa và các tòa nhà bị phá hoại, bao gồm cả một cửa hàng của thương hiệu cà phê Starbucks.</p>\r\n\r\n<p style=\"text-align: justify;\">Các cuộc biểu tình tại đặc khu hành chính này suốt 5 tháng qua đang là thách thức lớn nhất đối với chính phủ của ông&nbsp;Tập Cận Bình kể từ khi ông lên nắm quyền lãnh đạo Trung Quốc vào cuối năm 2012.</p>\r\n\r\n<p style=\"text-align: justify;\">Người biểu tình tức giận khi nhận thấy sự can thiệp của Trung Quốc với các quyền tự do của Hong Kong, bao gồm cả hệ thống pháp lý của họ, kể từ khi trung tâm tài chính châu Á này được Trung Quốc thu hồi chủ quyền vào năm 1997.</p>\r\n\r\n<div class=\"txtCent\" id=\"ADS_159_15s\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; color: rgb(0, 0, 0);\">\r\n<div class=\"banner_inread\" style=\"margin: 0px auto; border: 0px;\">\r\n<div id=\"div-gpt-ad-1492584112323-48\" style=\"margin: 0px auto; height: 360px; width: 640px; border: 0px; position: relative;\">\r\n<div id=\"google_ads_iframe_/124557882/24h/vn/desktop/world/in_readvideo_article_0__container__\" style=\"border: 0pt none; text-align: justify;\"><span style=\"color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px\">Tờ Thời báo Hoàn cầu vào hôm qua (3.11) đã lên án hành động của người biểu tình nhắm vào trụ sở của Tân Hoa Xã, và kêu gọi&nbsp;sự nhập cuộc từ các cơ quan thực thi pháp luật của Hong Kong.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align: justify;\">\"Do tính biểu tượng của Tân Hoa Xã, việc phá hoại chi nhánh của tờ báo này không chỉ là sự khiêu khích đối với chế độ pháp quyền ở Hong Kong, mà còn đối với cả chính quyền trung ương ở đại lục, vốn là mục đích chính của những kẻ bạo loạn\", Thời báo Hoàn cầu cho biết.</p>\r\n\r\n<p style=\"text-align: justify;\">Hôm thứ Sáu vừa qua, sau cuộc họp của lãnh đạo cấp cao, một quan chức Trung Quốc cho hay nước này sẽ không dung thứ đối với chủ nghĩa ly khai hay các mối đe dọa đối với an ninh quốc gia ở Hong Kong, và sẽ sớm \"hoàn thiện\" cách thức bổ nhiệm lãnh đạo của đặc khu này.</p>', 'GzfD_1572859113-58-bao-chi-trung-quoc-ra-tuyen-bo-cung-ran-voi-nguoi-bieu-tinh-sau-khi-tru-so-tan-hoa-xa-o-hong-kong-bi-ak_xna_0411-1572853274-width780height520.jpg', 1, 0, 29, '2019-12-16 07:39:31', '2019-12-16 07:39:31'),
(1, 1034, 'SEA Games 31 tại Việt Nam: Quyết không \"ôm Vàng\" với các môn “lạ”', 'sea-games-31-tai-viet-nam-quyet-khong-om-vang-voi-cac-mon-la-', '(Tin thể thao, tin SEA Games) Đó là tuyên bố của ông Trần Đức Phấn – Phó Tổng cục trưởng Tổng cục TDTT và là Trưởng đoàn thể thao Việt Nam tại SEA Games 30 khi nói về công tác chuẩn bị cho kỳ đại hội thể thao khu vực 2 năm tới.', '<p style=\"text-align: justify;\">Tại&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/sea-games-30-c689.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"SEA Games 30\">SEA Games 30</a>, Philippines giành tổng cộng 149 HCV, nhiều hơn 51 chiếc so với đoàn xếp thứ 2 là Việt Nam (98 HCV). Thậm chí nước chủ nhà chỉ cần 2 ngày thi đấu đầu tiên để vươn lên bỏ xa các đoàn&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/the-thao-c101.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"thể thao\">thể thao</a>&nbsp;còn lại trên bảng tổng sắp huy chương, chủ yếu đến từ các bộ môn họ tự cho vào danh sách thi đấu, nằm ở nhóm 3. &nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\"><img alt=\"SEA Games 31 tại Việt Nam: Quyết không &amp;#34;ôm Vàng&amp;#34; với các môn “lạ” - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-12-15/SEA-Games-31-tai-Viet-Nam-Quyet-noi-khong-voi-cac-mon-la---ng-tr---n------c-ph---n-1576394004-133-width660height452.jpg\" style=\"border:0px; font-size:12px; max-width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Ông Trần Đức Phấn</p>\r\n\r\n<p style=\"text-align: justify;\">Điển hình như Arnis (võ gậy truyền thống Philippines), chủ nhà giành 12 HCV trên 20 bộ huy chương. Họ giành trọn vẹn 6 bộ HCV ở môn Obstacle Course (vượt chướng ngại vật). Bên cạnh đó, nước chủ nhà còn cố tình bỏ đi những nội dung hay hạng cân thi đấu không có khả năng tranh chấp ở những môn khác.</p>\r\n\r\n<p style=\"text-align: justify;\">Đây được xem là những cách vô cùng hiệu quả để các nước chủ nhà gom huy chương mỗi kỳ đại hội thể thao khu vực diễn ra. Tuy nhiên, điều này mang đến sự thiếu công bằng trong thể thao và mang lại sự phản đối trong dư luận.</p>\r\n\r\n<p style=\"text-align: justify;\">Ở kỳ SEA Games 31 tới đây, Việt Nam sẽ là quốc gia đăng cai. Người hâm mộ thể thao đặt ra sự hoài nghi rằng liệu chúng ta có tiếp tục sử dụng lợi thế của nước chủ nhà để “săn” huy chương.</p>\r\n\r\n<div class=\"txtCent\" id=\"ADS_159_15s\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; text-align: center; color: rgb(0, 0, 0);\">\r\n<div class=\"banner_inread\" style=\"margin: 0px auto; border: 0px;\">\r\n<div id=\"div-gpt-ad-1492584112323-45\" style=\"margin: 0px auto; height: 360px; width: 640px; border: 0px; position: relative;\">\r\n<div id=\"google_ads_iframe_/124557882/24h/vn/desktop/sport/in_readvideo_article_0__container__\" style=\"border: 0pt none; text-align: justify;\"><span style=\"color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px\">Ông Trần Đức Phấn – Phó Tổng cục trưởng Tổng cục TDTT và là Trưởng đoàn thể thao Việt Nam tại SEA Games 30 lên tiếng khẳng định: “SEA Games 31 tại Việt Nam sẽ tập trung tổ chức các môn trong hệ thống Olympic. Trong đó, điền kinh và bơi lội chúng tôi sẽ tổ chức đầy đủ các nội dung thi đấu dù có VĐV tranh tài hay không.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align: justify;\">Công tác trọng tài, chuyên môn sẽ được chúng tôi đặc biệt lưu ý. Chúng tôi sẽ ra một sân chơi công bằng, sòng phẳng, để lại hình ảnh đẹp với bạn bè quốc tế. Không có chuyện sẽ đưa nhiều môn thể thao ở nhóm 3 vào để lấy nhiều huy chương”, ông Phấn nói. &nbsp;&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\">Phó Tổng cục trưởng Tổng cục TDTT nhận xét dù công tác tổ chức vừa qua của Philippines vẫn còn nhiều hạn chế, xuất phát từ việc thời gian chuẩn bị của họ quá ít, tuy nhiên có một điểm mà Việt Nam có thể sẽ thua kém khi đăng cai đại hội.</p>\r\n\r\n<p style=\"text-align: justify;\">“Tất cả tình nguyện viên, lãnh đạo… nói chung con người Philippines rất nhiệt tình, vui vẻ, không thái độ với bất kỳ ai. Đây là điều mà Việt Nam chúng ta chuẩn bị đăng cai phải học hỏi. Hạn chế lớn nhất của chúng ta là trình độ ngoại ngữ. Mỗi người dân của họ đều nói tiếng Anh rất giỏi, đều này chúng ta khó bằng được”, ông Phấn chia sẻ.</p>\r\n\r\n<p style=\"text-align: justify;\">SEA Games 31 dự kiến sẽ được diễn ra vào cuối tháng 11, đầu tháng 12/2021. Địa điểm tổ chức chính ở Hà Nội và một số địa phương lân cận. Cụ thể như: Hải Phòng tổ chức môn rowing, canoeing; Bắc Ninh tổ chức môn quyền Anh, wushu; Hải Dương tổ chức môn bóng bàn, pencak silat, golf; Hòa Bình tổ chức môn xe đạp; Quảng Ninh tổ chức môn bóng chuyền…</p>\r\n\r\n<p style=\"text-align: justify;\">SEA Games 31 dự kiến sẽ có 36 môn tranh tài, trong đó số môn trong chương trình thi đấu Olympic, ASIAD sẽ chiếm khoảng 2/3 tổng số môn. Các quốc gia trong khu vực có thể đề xuất thêm một vài môn khác theo thông lệ, nhưng tổng số môn thi đấu sẽ không vượt quá 40.</p>', 'uCQg_SEA-Games-31-tai-Viet-Nam-Quyet-noi-khong-voi-cac-mon-la---ng-tr---n------c-ph---n-1576394004-133-width660height452.jpg', 1, 0, 23, '2019-12-16 07:41:46', '2019-12-16 07:41:46'),
(1, 1035, 'Tennis 24/7: Bàng hoàng scandal bán độ nghi có tay vợt top đầu thế giới', 'tennis-24-7-bang-hoang-scandal-ban-do-nghi-co-tay-vot-top-dau-the-gioi', '(Tin tennis) Bản tin tennis tuần từ 9-15/12: Làng tennis lại rung chuyển với scandal bán độ, và có một tay vợt nam top 30 đã \"dính chàm\".', '<p style=\"text-align: justify;\"><strong>Điều tra dàn xếp tỷ số tennis: Một tay vợt top 30 “dính chàm”</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Một cuộc điều tra vừa được mở sau khi hãng thông tấn Đức ZDF tìm được những thông tin liên quan tới một đường dây cá cược đến từ Armenia. Đường dây này được cho là có liên quan tới 135 tay vợt đến từ 7 quốc gia khác nhau ở châu Âu, dù chưa ai bị chỉ tên.</p>\r\n\r\n<p style=\"text-align: justify;\"><img alt=\"Tennis 24/7: Bàng hoàng scandal bán độ nghi có tay vợt top đầu thế giới - 1\" class=\"initial loading news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-12-16/tennissportsonearthcom-e1512816410685-660-1576464561-522-width660height440.jpg\" style=\"border:0px; font-size:12px; height:440px; max-width:660px; width:660px\" /></p>\r\n\r\n<p style=\"text-align: justify;\">Làng&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/tennis-c119.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"tennis\">tennis</a>&nbsp;lại rúng động với scandal bán độ mới</p>\r\n\r\n<p style=\"text-align: justify;\">Theo thông tin từ ZDF, trong số các tay vợt bị xác định tham gia làm độ còn có cả một tay vợt nam hiện đang trong top 30 thế giới và đã từng đoạt chức vô địch ở ATP Tour. Thông tin này đang gây chấn động khiến dư luận bắt đầu đồn đoán xem đó có thể là ai.</p>\r\n\r\n<p style=\"text-align: justify;\">Nguồn tin còn cho biết thêm người đã tiết lộ ra những chuyện này và giúp các nhà điều tra tiếp cận hồ sơ thông tin là một tay vợt ít tiếng tăm người Đức, do đó mà câu chuyện đã xuất hiện trên truyền thông Đức trước tiên.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>Federer so sánh nghỉ hưu với… mang bầu</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Roger&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/roger-federer-tay-vot-vi-dai-c101e3113.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"Federer\">Federer</a>&nbsp;trong một cuộc phỏng vấn mới đây trên tennisworlusa, đã nói về tương lai của anh và cho rằng việc nghỉ hưu là điều tất yếu sẽ phải đến dù anh rất không muốn. Anh thậm chí cho rằng nghỉ hưu là điều sẽ đến khi anh đã cảm thấy sẵn sàng, chứ không phải vấn đề phong độ.</p>\r\n\r\n<p style=\"text-align: justify;\">Roger Federer</p>\r\n\r\n<p style=\"text-align: justify;\">“Mỗi lần tôi thua là lại nghe thấy có những người nói đã đến lúc tôi nghỉ hưu hay gì đó. Tôi không cảm thấy những điều đó quan trọng, nó chẳng thay đổi tình yêu của tôi dành cho tennis. Tôi hiện vẫn chưa có kế hoạch nghỉ hưu, ngày tôi chia tay sự nghiệp sẽ là ngày tôi cảm thấy cơ thể mình quyết định điều đó”, Federer nói.</p>\r\n\r\n<p style=\"text-align: justify;\">“Khi tới một độ tuổi nào đó, ta sẽ tự cảm nhận thấy một chiếc đồng hồ đếm ngược trong cơ thể mình. Điều đó sẽ đến, không sớm thì muộn. Cũng như phụ nữ vậy, một khi họ mang bầu thì sẽ đến lúc họ sinh nở, đó chỉ là vấn đề thời gian. Do vậy tôi không để những điều đó khiến mình lo lắng, lúc nào tôi định nghỉ thì tôi sẽ tự khắc biết được”.</p>\r\n\r\n<p style=\"text-align: justify;\"><strong>Tsitsipas mưu lật đổ&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/novak-djokovic-c101e4417.html\" style=\"text-decoration-line: none; color: rgb(0, 0, 255); line-height: 1.6;\" title=\"Djokovic\">Djokovic</a>&nbsp;ở Abu Dhabi</strong></p>\r\n\r\n<p style=\"text-align: justify;\">Stefanos Tsitsipas đoạt chức vô địch một cách ấn tượng tại ATP World Tour Finals và anh sẽ trở lại thi đấu vào cuối tuần này ở giải Mubadala, một giải đấu biểu diễn được tổ chức ở Abu Dhabi. Mặc dù chỉ là thi đấu biểu diễn nhưng tay vợt người Hy Lạp nhất định sẽ không thi đấu cầm chừng, trong một giải đấu có mặt Novak Djokovic và Rafael Nadal.</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<div style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: rgb(0, 0, 0); text-align: center; width: 687px; clear: both; position: relative;\">\r\n<div style=\"position: relative; max-width: 660px; margin: 0px auto;\">\r\n<p style=\"text-align: justify;\"><img alt=\"Tennis 24/7: Bàng hoàng scandal bán độ nghi có tay vợt top đầu thế giới - 3\" class=\"error news-image\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-12-16/stefanos-tsitsipas--e1576401673789-660-1576464589-624-width660height439.jpg\" style=\"border:0px; height:439px; margin-bottom:22px; max-width:660px; width:660px\" /></p>\r\n\r\n<div id=\"24h-banner-in-image\" style=\"position: absolute; overflow: hidden; width: 660px; height: 90px; color: white; bottom: 0px; left: 0px;\">\r\n<div class=\"txtCent\" id=\"ADS_139_15s\" style=\"text-align: justify;\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\">Tsitsipas sẽ tới Abu Dhabi tuần này để đấu những Nadal &amp; Djokovic</p>\r\n\r\n<p style=\"text-align: justify;\">“Tôi cảm thấy tôi đã gần đạt tới đẳng cấp của những huyền thoại hàng đầu kia. Tôi có thể duy trì một phong độ ổn định, duy trì tâm lý vững vàng khi thi đấu và đôi lúc chọn lựa thời điểm hợp lý để thi đấu một cách rủi ro. Được thi thố tài năng với Novak, Rafa và Roger là những trải nghiệm cực kỳ quý giá”, Tsitsipas nói.</p>\r\n\r\n<p style=\"text-align: justify;\">“Giải đấu sắp tới sẽ thật hấp dẫn và hào hứng vì tôi lại gặp Novak và Rafa. Đối với tôi mọi trận đấu đều quan trọng và do đó tôi sẽ thể hiện hết mình, qua đó có sự khởi động tốt nhất khi bước vào năm mới”.</p>', 'VRaD_1576379574-9-thumbnail.jpg', 1, 0, 24, '2019-12-16 07:51:03', '2019-12-16 07:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `quyen`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(11, 'Lê Thuận', 'thedanh0410@gmail.com', 1, '$2y$10$EmUBH9Q1yzPZDYj4DXzsreYUZGnWH13uPlXA7pKNzl0sqfcSghvNq', NULL, '2019-10-09 14:38:11', '2019-10-28 06:44:20'),
(12, 'nguyễn văn a', 'lvthuan.18it4@sict.udn.vn', 0, '$2y$10$nbhcgev60BCxWKQlzwLLyeQAUpQGPHIercNAJY4PMjgjr5qs0TAgG', NULL, '2019-10-15 15:01:18', '2019-10-16 13:15:11'),
(13, 'Lê Văn Thuận', '123@gmail.com', 0, '$2y$10$sgUYJyCxlyjmUQK3Kh.0v.lvojVR6F0GQsuWFchXRL1HkXbM8rcF2', NULL, '2019-10-15 15:06:28', '2019-11-12 07:19:58'),
(14, 'Lê Văn Thuận', 'phubui2702@gmail.com', 0, '$2y$10$nTOq0vHTPCX5AeR4AwVqNem6JG07OfchVd225FouixZeaERo4XJyS', NULL, '2019-10-16 12:57:03', '2019-10-16 12:57:03'),
(15, 'Lê Văn Thuận', 'thuan@gmail.com', 1, '$2y$10$v1iyXZ4aZBPDsT/4S0zhhe/xYM01/QFFJBn6lUdVZ6CCnbI7a6Skq', NULL, '2019-11-14 09:48:53', '2019-11-14 09:48:53'),
(16, 'Lê Thuận', 't@gmail.com', 1, '$2y$10$kB55AXNHirR85J1TuIZft.ksrUurae9wdKgVaEub.O4ynTK3OhhCK', NULL, '2019-11-14 09:50:40', '2019-11-14 09:50:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_iduser_foreign` (`idUser`),
  ADD KEY `comment_idtintuc_foreign` (`idTinTuc`);

--
-- Indexes for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loaitin_idtheloai_foreign` (`idTheLoai`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tintuc_idloaitin_foreign` (`idLoaiTin`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `loaitin`
--
ALTER TABLE `loaitin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_idtintuc_foreign` FOREIGN KEY (`idTinTuc`) REFERENCES `tintuc` (`id`),
  ADD CONSTRAINT `comment_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Constraints for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_idtheloai_foreign` FOREIGN KEY (`idTheLoai`) REFERENCES `theloai` (`id`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_idloaitin_foreign` FOREIGN KEY (`idLoaiTin`) REFERENCES `loaitin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
