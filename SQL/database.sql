-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3366
-- Thời gian đã tạo: Th10 21, 2021 lúc 01:49 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopgiayonline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `birthday`, `phone`, `avatar`, `address`, `active`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Đặng', 'Xuân Danh', '2000-05-05', '0354646796', '/storage/uploads/adminavatar/rELBtkHrawtH7Ea3fqKj.jpeg', 'Nam Định', 1, 'admin@gmail.com', NULL, '$2y$10$gmpLfiK3XCLV/USP3gPv8Oz9nuWPOr8cSzSbeykgy370jVUesYLX2', NULL, NULL, '2021-11-18 21:30:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 1, 1600000, NULL, NULL),
(2, 2, 15, 1, 3600000, NULL, NULL),
(3, 3, 15, 1, 3600000, NULL, NULL),
(4, 3, 13, 1, 3600000, NULL, NULL),
(5, 3, 13, 1, 3600000, NULL, NULL),
(6, 3, 13, 1, 3600000, NULL, NULL),
(7, 2, 12, 1, 3600000, NULL, NULL),
(8, 2, 11, 1, 3600000, NULL, NULL),
(9, 3, 5, 1, 3600000, NULL, NULL),
(10, 4, 28, 2, 1399000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customercarts`
--

CREATE TABLE `customercarts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customercarts`
--

INSERT INTO `customercarts` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'ádasdasd', '0354646796', 'Hải Dương', 'admin@gmail.com', 'ádasd', '2021-11-17 18:37:34', '2021-11-17 18:37:34'),
(2, 'danh', '03756287', 'Nam Định', 'admin@gmail.com', 'ÁDASD', '2021-11-17 19:21:40', '2021-11-17 19:21:40'),
(3, 'Giày Nike air Jordan 1 High Đen trắng nam1', '0354646796', 'Hà Nội', 'dangdanh55.dxd@gmail.com1', '23', '2021-11-17 19:57:36', '2021-11-17 19:57:36'),
(4, 'Name1', '0354646796', 'Hải Dương', 'danhhju20000@gmail.com', 'OK', '2021-11-21 06:05:05', '2021-11-21 06:05:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `thumb`, `slug`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Giày cỏ tự nhiên', 0, 'Giày cỏ tự nhiên', '<p>Gi&agrave;y cỏ tự nhi&ecirc;n</p>', '/storage/uploads/2021/10/24/Mitre-161115-fg.jpg', 'giay-co-tu-nhien', 1, '2021-10-23 21:28:13', '2021-10-31 07:55:56'),
(2, 'Giày sân cỏ nhân tạo', 0, 'Giày sân cỏ nhân tạo', '<p>Gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo</p>', '/storage/uploads/2021/10/24/top-thuong-hieu-giay-da-bong-banner.jpg', 'giay-san-co-nhan-tao', 1, '2021-10-23 21:31:32', '2021-10-31 07:56:05'),
(3, 'Giày futsal', 0, 'Giày futsal', '<p>Gi&agrave;y futsal</p>', '/storage/uploads/2021/10/24/555469_v5.png', 'giay-futsal', 1, '2021-10-23 21:32:10', '2021-10-31 07:56:23'),
(4, 'Giày Nike', 1, 'Giày đá bóng nike', '<p>Gi&agrave;y đ&aacute; b&oacute;ng nike</p>', '/storage/uploads/2021/10/24/boots-for-strikers800x420.jpg', 'giay-nike', 1, '2021-10-23 21:33:22', '2021-10-31 07:57:04'),
(6, 'Nike Mecurial', 4, 'Nike Mecurial', '<p>Nike Mecurial</p>', NULL, 'nike-mecurial', 1, '2021-10-23 21:39:08', '2021-10-23 21:39:08'),
(7, 'Nike phantom', 4, 'Nike phantom', '<p>Nike phantom</p>', NULL, 'nike-phantom', 1, '2021-10-23 21:39:52', '2021-10-23 21:39:52'),
(8, 'Nike tiempo', 4, 'Nike tiempo', '<p>Nike tiempo</p>', NULL, 'nike-tiempo', 1, '2021-10-23 21:40:09', '2021-10-23 21:40:09'),
(9, 'Giày Adidas', 1, 'Giày Adidas', '<p>Gi&agrave;y Adidas</p>', NULL, 'giay-adidas', 1, '2021-10-27 21:55:51', '2021-10-27 21:55:51'),
(11, 'Giày Kamito', 2, 'Giày Kamito', '<p>Gi&agrave;y Kamito</p>', NULL, 'giay-kamito', 1, '2021-10-31 08:12:40', '2021-10-31 08:12:40'),
(12, 'Giày Mizuno', 2, 'Giày Mizuno', '<p>Gi&agrave;y Mizuno</p>', NULL, 'giay-mizuno', 1, '2021-10-31 08:13:18', '2021-10-31 08:13:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_03_091844_create_menus_table', 1),
(6, '2021_10_18_085613_edit_name_table', 1),
(7, '2021_10_18_090743_create_userlogin_table', 1),
(8, '2021_10_24_020437_create_sliders_table', 1),
(9, '2021_10_28_030508_create_products_table', 1),
(10, '2021_10_28_030527_create_product_images_table', 1),
(11, '2021_11_15_161925_create_customercarts_table', 1),
(12, '2021_11_15_161952_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_sale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `hot` int(11) DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `menu_id`, `price`, `price_sale`, `active`, `hot`, `quantity`, `description`, `content`, `thumb`, `created_at`, `updated_at`) VALUES
(1, 'GIÀY ĐÁ BÓNG KAMITO TA11-AS', 11, NULL, NULL, 1, 1, '88', 'SKU: F21002.38', '<h2>M&Ocirc; TẢ</h2>\r\n\r\n<p>GI&Agrave;Y Đ&Aacute; B&Oacute;NG S&Acirc;N CỎ NH&Acirc;N TẠO TUẤN ANH KAMITO TA11-AS</p>\r\n\r\n<p>Để vinh danh cũng như ghi nhận những đ&oacute;ng g&oacute;p của cầu thủ Nguyễn Tuấn Anh, KAMITO đ&atilde; cho ra mắt &ldquo;TA11&rdquo; &ndash; mẫu gi&agrave;y b&oacute;ng đ&aacute; được đặt theo t&ecirc;n v&agrave; số &aacute;o của Tuấn Anh với rất nhiều điểm đặc biệt v&agrave; th&uacute; vị:&nbsp;</p>\r\n\r\n<p>- Đ&acirc;y l&agrave; mẫu gi&agrave;y được thiết kế với sự g&oacute;p &yacute; của ch&iacute;nh Tuấn Anh nhằm mang lại hiệu suất thi đấu cao nhất. C&aacute;c họa tiết tr&ecirc;n gi&agrave;y cũng được thiết kế đặc biệt mang đậm dấu ấn của Tuấn Anh, đặc biệt l&agrave; c&aacute;c v&acirc;n kim cương nổi tạo điểm nhấn trong tổng thể thiết kế.&nbsp;</p>\r\n\r\n<p>- Với 5 m&agrave;u sắc v&ocirc; c&ugrave;ng nổi bật v&agrave; c&aacute; t&iacute;nh, TA11 sẽ ph&ugrave; hợp với tất cả người d&ugrave;ng ở mọi lứa tuổi&nbsp;</p>\r\n\r\n<p>- Kh&ocirc;ng ngừng đổi mới v&agrave; mong muốn n&acirc;ng tầm trải nghiệm của người d&ugrave;ng, TA11 được &aacute;p dụng những c&ocirc;ng nghệ tốt nhất của KAMITO:&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;Lớp da KA-FIBER ULTRA si&ecirc;u mềm, tạo cảm gi&aacute;c như đi ch&acirc;n trần v&agrave; với lớp da mới n&agrave;y, độ bền cũng đ&atilde; được n&acirc;ng cấp l&ecirc;n một tầm cao mới.</li>\r\n	<li>&nbsp;Thiết kế đặc biệt với những v&acirc;n kim cương nổi tr&ecirc;n th&acirc;n gi&agrave;y, vừa tạo t&iacute;nh thẩm mỹ vừa hỗ trợ kiểm so&aacute;t b&oacute;ng tối ưu.&nbsp;</li>\r\n	<li>Bộ đế gi&agrave;y &aacute;p dụng c&ocirc;ng nghệ KA-SPIN với d&agrave;n đinh dăm được sắp xếp khoa học, gi&uacute;p b&aacute;m s&acirc;n hiệu quả ngay cả khi trời mưa s&acirc;n trơn b&oacute;ng ướt.</li>\r\n	<li>&nbsp;Đặc biệt, lớp đệm giảm chấn cực &ecirc;m &aacute;i KA-COMFORT lần đầu ti&ecirc;n xuất hiện ở một đ&ocirc;i gi&agrave;y ph&acirc;n kh&uacute;c tầm trung sẽ mang lại một trải nghiệm tuyệt vời gi&uacute;p c&aacute;c cầu thủ lu&ocirc;n cảm thấy thoải m&aacute;i v&agrave; &ecirc;m &aacute;i trong suốt qu&aacute; tr&igrave;nh thi đấu. B&ecirc;n cạnh đ&oacute;, lớp đệm &ecirc;m n&agrave;y cũng sẽ giảm &aacute;p lực l&ecirc;n đầu gối v&agrave; cột sống qua đ&oacute; giảm thiểu những chấn thương kh&ocirc;ng đ&aacute;ng c&oacute;.&nbsp;</li>\r\n	<li>Form gi&agrave;y &aacute;p dụng chuẩn KA-FIT, &ocirc;m s&aacute;t v&agrave; ph&ugrave; hợp với b&agrave;n ch&acirc;n người Việt.</li>\r\n</ul>', '/storage/uploads/products/aLFzEXvrzsmDbQErB8IV.jpg', '2021-10-27 21:37:39', '2021-11-20 12:14:03'),
(2, 'ADIDAS X SPEEDFLOW', 9, '5000000', '4500000', 1, 0, '99', 'Nhà cung cấp: ADIDAS\r\nSKU: FY6870-40', '<p><strong>Adidas X Speedflow .1 FG/AG Meteorite - Solar Red/White/Black&nbsp;</strong>l&agrave; phi&ecirc;n bản gi&agrave;y cao cấp d&agrave;nh cho s&acirc;n cỏ tự nhi&ecirc;n 7-11 người. Một chương mới của silo tốc độ vừa được adidas ra mắt tr&ecirc;n thị trường. Hứa hẹn sẽ l&agrave; một sản phẩm rất được săn đ&oacute;n trong thời gian tới. Nằm trong BST Meteorite Pack sẽ được ra mắt v&agrave;o cuối th&aacute;ng 7, X Speedflow c&oacute; gam m&agrave;u đỏ nổi bật, ho&agrave;nh tr&aacute;ng c&ugrave;ng với m&agrave;u đen v&agrave; trắng đi k&egrave;m m&agrave;u dạ quang. Đem lại sự ho&agrave;i h&ograve;a cũng như đ&aacute;nh bật những chi tiết được n&acirc;ng cấp ở phi&ecirc;n bản mới n&agrave;y.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000061481/file/42661a45bfed4bb312fc_29b4e737b8824b6a9db2f49ca51ca610_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Chất liệu da tổng hợp mỏng mềm mại như&nbsp;da Mirage Skin của phi&ecirc;n bản trước&nbsp;X ghosted +&nbsp;</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07473_3962f772f6cd433b83dd8514635b0933_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Hệ thống lưới Laser Cut Tpu Cage chống m&agrave;i m&ograve;n v&agrave; tặng sự linh hoạt</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07479_edbb3340ba984eb7adc2735cccc50c0c_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07476_e93b6b218875477badf45f4fa2182376_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>3 sọc Logo Adidas 3D bắt mắt</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07478_c82791708d1a4d27a2dad5bb29ca99a0_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>K&yacute; hiệu&nbsp;<strong>&#39;&gt; 299 792 458 m/s&#39;</strong>, c&oacute; &yacute; nghĩa nhanh hơn cả vận tốc &aacute;nh s&aacute;ng. Đ&ocirc;i gi&agrave;y vẫn tự h&agrave;o với vẻ ngo&agrave;i đặc trưng của một đ&ocirc;i gi&agrave;y bứt tốc, đặc biệt th&iacute;ch hợp d&agrave;nh cho những cầu thủ đam m&ecirc; tốc độ.&nbsp;</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07507_064f1cca9485420093739f077b3ccc82_1024x1024.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07500_55906126ee2343849bfda411da703c17_1024x1024.jpg\" style=\"height:576px; width:1024px\" /></p>\r\n\r\n<p>G&oacute;t đệm &ecirc;m ch&acirc;n</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000061481/file/03883da7b51741491806_2966c5deb99d4143ae127ec2cbf154b4_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Cổ thun Primeknit &ocirc;m ch&acirc;n v&agrave; co gi&atilde;n</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07492_caf30482a15747daa5da02d4720908c7_1024x1024.jpg\" style=\"height:576px; width:1024px\" /></p>\r\n\r\n<p>Khu&ocirc;n đế Speedframe Carbon Carbitex si&ecirc;u nhẹ v&agrave; b&aacute;m s&acirc;n</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07610_2f9d643528a94c9eb12cd5641e598678_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07592_c6047e5ab6cf4fed96a0851648ad72bd_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07575_c7460ec231cb4a0ebcbf62935f1a1a52_1024x1024.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/nms07574_833357910ed14cf5b881d94adb84b22a_1024x1024.jpg\" style=\"height:576px; width:1024px\" /></p>', '/storage/uploads/products/s0ZY8u3bMq9vEgHKFDUe.jpg', '2021-10-27 21:58:44', '2021-11-01 21:57:01'),
(3, 'ADIDAS X SPEEDF TF UNPARALLELED', 5, '2295000', '1850000', 1, 1, '25', 'Nhà cung cấp: ADIDAS\r\nSKU: FY6896-40', '<p><strong>Adidas X Speedflow Messi .3 TF Unparalleled - Victory Blue/Shock Pink/Solar Yellow&nbsp;</strong>l&agrave; mẫu gi&agrave;y d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người.&nbsp; Nằm trong bộ sưu tập<strong>&nbsp;&lsquo;Messi Unparalleled&rsquo;</strong>. Đ&acirc;y l&agrave; mẫu gi&agrave;y Signature đầu ti&ecirc;n Adidas d&agrave;nh cho Messi kể từ khi anh kh&ocirc;ng c&ograve;n kho&aacute;c &aacute;o c&acirc;u lạc bộ Barcelona. Về thiết kế ho&agrave;n to&agrave;n kh&aacute;c với gam m&agrave;u chủ đạo l&agrave; xanh lam, hồng v&agrave; t&iacute;m c&ugrave;ng với&nbsp; logo Adidas chấm ph&aacute; m&agrave;u xanh l&aacute;.</p>', '/storage/uploads/products/z5Q6Ro4i01Qsu1X8hIKB.jpg', '2021-10-27 22:00:27', '2021-10-30 01:08:04'),
(4, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION', 12, '1390000', NULL, 1, 1, '32', 'Nhà cung cấp: MIZUNO\r\nSKU: P1GD210523-38.5', '<p><strong>MIZUNO MONARCIDA NEO II SELECT TF Next Generation - Turquoise/White/Red&nbsp;</strong>l&agrave; sản phẩm d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người. Nằm trong bộ sưu tập&nbsp;<a href=\"https://www.neymarsport.com/\">gi&agrave;y đ&aacute; b&oacute;ng mới</a>&nbsp;d&agrave;nh cho thế hệ tiếp theo<strong>&nbsp;&lsquo;Next Generation&rsquo;.&nbsp;</strong>Bộ sưu tập đem đến sự kết hợp đầy th&uacute; vị của những gam m&agrave;u xanh tươi m&aacute;t, mới mẻ.</p>\r\n\r\n<p>Mizuno được biết đến l&agrave; 1 trong những thương hiệu l&acirc;u đời nhất tại Nhật Bản.&nbsp;MONARCIDA NEO 2 SELECT&nbsp;l&agrave; d&ograve;ng sản phẩm c&oacute; Form truyền thống với&nbsp;upper được l&agrave;m bằng chất liệu da tổng hợp mềm v&agrave; &ocirc;m ch&acirc;n đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng thoải m&aacute;i khi chơi b&oacute;ng.</p>\r\n\r\n<p>Mizuno đang kh&ocirc;ng ngừng cải tiến từng ng&agrave;y, từ thiết kế đến c&ocirc;ng nghệ nhằm mang đến những đ&ocirc;i gi&agrave;y b&oacute;ng đ&aacute; chất lượng nhất, &ecirc;m &aacute;i nhất, bền bỉ nhất đến với kh&aacute;ch h&agrave;ng. Giữa thị trường gi&agrave;y b&oacute;ng đ&aacute; ng&agrave;y c&agrave;ng đa dạng với nhiều thương hiệu đ&igrave;nh đ&aacute;m, ch&uacute;ng ta vẫn phải c&ocirc;ng nhận những cải tiến v&agrave; đột ph&aacute; của m&igrave;nh đ&atilde; gi&uacute;p Mizuno c&oacute; chỗ đứng vững chắc trong l&ograve;ng người h&acirc;m mộ.</p>', '/storage/uploads/products/JaAPNyjRKvq7MllQ3dZ2.jpg', '2021-10-28 01:49:44', '2021-11-01 22:11:14'),
(5, 'Giày Mizuno Morelia Salajapan', 12, '4300000', NULL, 1, 0, '25', 'Mã sản phẩm: Q1GB210025', '<p><span style=\"font-size:20px\">Morelia l&agrave; d&ograve;ng gi&agrave;y đ&atilde; được ra mắt từ năm 1985 với thiết kế truyền thống mang t&iacute;nh chuẩn mực cho một đ&ocirc;i gi&agrave;y b&oacute;ng đ&aacute;. Trải qua gần 40 năm, những mẫu Morelia mới nhất vẫn giữ những n&eacute;t truyền thống đ&oacute; pha lẫn với những chi tiết hiện đại tạo n&ecirc;n một đ&ocirc;i gi&agrave;y tinh tế ph&ugrave; hợp với nhiều cầu thủ.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">Đối với s&acirc;n chơi phong tr&agrave;o tại Việt Nam th&igrave; mặt cỏ nh&acirc;n tạo l&agrave; phổ biến nhất v&agrave; Mizuno cũng rất kịp thời khi cho ra mắt rất nhiều d&ograve;ng gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo để phục vụ đ&ocirc;ng đảo c&aacute;c cầu thủ. Để tiếp nối c&aacute;c mẫu gi&agrave;y trước đ&acirc;y, Mizuno tiếp tục n&acirc;ng cấp v&agrave; cho ra mắt mẫu gi&agrave;y Morelia Sala Japan TF với những ưu điểm v&ocirc; c&ugrave;ng nổi bật:</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Morelia Sala Japan TF l&agrave; một trong những mẫu gi&agrave;y s&acirc;n cỏ nh&acirc;n tạo đầu ti&ecirc;n được sản xuất tại Nhật Bản dưới b&agrave;n tay t&agrave;i hoa những người thợ l&acirc;u năm c&ugrave;ng với đ&oacute; l&agrave; những chất liệu tốt nhất của Mizuno.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Chất liệu da Kangaroo si&ecirc;u mềm đ&atilde; được Mizuno sử dụng hiệu quả ở phần Upper gi&agrave;y, hỗ trợ tối đa cho c&aacute;c cầu thủ khi nhận b&oacute;ng, đi b&oacute;ng, những pha s&uacute;t mu uy lực v&agrave; tạo cảm gi&aacute;c như đi ch&acirc;n trần.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Phần mũi gi&agrave;y được gia cố bằng lớp da lộn đặc biệt, n&acirc;ng cao độ bền chung của sản phẩm.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Phom gi&agrave;y đặc biệt ph&ugrave; hợp với b&agrave;n ch&acirc;n người Việt, những cầu thủ ch&acirc;n b&egrave; ho&agrave;n to&agrave;n c&oacute; thể sử dụng m&agrave; kh&ocirc;ng gặp ch&uacute;t kh&oacute; khăn n&agrave;o.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- L&agrave; mẫu gi&agrave;y thuộc ph&acirc;n kh&uacute;c cao cấp, Morelia Sala Japan TF được trang bị lớp đệm giảm chấn, tạo sự &ecirc;m &aacute;i thoải m&aacute;i cho c&aacute;c cầu thủ trong suốt trận đấu.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Phần g&oacute;t gi&agrave;y chắc chắn, cứng c&aacute;p, tạo điểm nhấn v&agrave; bảo vệ tối đa g&oacute;t ch&acirc;n cầu thủ.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- L&oacute;t gi&agrave;y &ecirc;m &aacute;i, chống trượt hiệu quả v&agrave; c&oacute; thể th&aacute;o rời.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">- Hệ thống đinh dăm tr&ecirc;n Morelia Sala Japan TF l&agrave; dạng chữ L quen thuộc với ưu điểm gi&uacute;p c&aacute;c cầu thủ c&oacute; thể đổi hướng linh hoạt v&agrave; rất b&aacute;m s&acirc;n ngay cả khi thời tiết kh&ocirc;ng thuận lợi.</span></p>\r\n\r\n<p><span style=\"font-size:20px\">Với rất nhiều t&acirc;m huyết v&agrave; chất liệu cao cấp được Mizuno đặt để v&agrave;o Morelia Sala Japan TF, đ&acirc;y hứa hẹn sẽ l&agrave; mẫu gi&agrave;y hot nhất m&ugrave;a h&egrave; năm 2021. Những cầu thủ c&oacute; lối chơi thi&ecirc;n về tốc độ v&agrave; mong muốn một đ&ocirc;i gi&agrave;y nhẹ, &ecirc;m &aacute;i, cảm gi&aacute;c b&oacute;ng tốt, h&atilde;y trải nghiệm Morelia Sala Japan TF để cảm nhận nh&eacute;.</span></p>', '/storage/uploads/products/zLV3X18wYFipVvoSQcpL.jpg', '2021-09-07 17:50:12', '2021-11-01 22:11:31'),
(6, 'Adidas Predator', 5, '2500000', NULL, 1, 1, '16', NULL, NULL, '/storage/uploads/products/o9c9Ah2dPla9EGkaHVVP.jpg', '2021-10-29 06:59:54', '2021-10-31 04:27:44'),
(7, 'ADIDAS PREDATOR FREAK', 5, '1900000', '1500000', 1, 1, '9', NULL, NULL, '/storage/uploads/products/XlzuCXJEj01Im9tzgx7F.jpg', '2021-10-29 07:00:36', '2021-10-29 07:00:36'),
(8, 'Adidas tf', 5, '4300000', '4000000', 1, 1, '8', NULL, NULL, '/storage/uploads/products/nOQ2IGBfJzthjlDlg2EQ.jpg', '2021-10-29 07:01:24', '2021-10-30 01:09:26'),
(9, 'ADIDAS X GHOSTED', 5, '2100000', NULL, 1, 1, '6', NULL, NULL, '/storage/uploads/products/yZ8BHbNqo8uJCr2XCuLu.jpg', '2021-10-29 07:02:07', '2021-10-30 01:20:46'),
(10, 'ASICS ULTREZZA', 5, '1350000', NULL, 1, 1, '5', NULL, NULL, '/storage/uploads/products/72VB6nHfrS3plHyko1Gu.jpg', '2021-10-29 07:03:25', '2021-10-30 01:21:09'),
(11, 'MERCURIAL SUPERFLYX', 5, '670000', NULL, 1, 1, NULL, NULL, NULL, '/storage/uploads/products/VuuoW6LPuRWe3nMkmvF1.jpg', '2021-10-29 07:04:32', '2021-10-29 07:04:32'),
(12, 'MIZUNO MONARCIDA', 6, '5200000', '4700000', 1, 1, '10', NULL, NULL, '/storage/uploads/products/Ilky69kKWf65jt3p0WN9.jpg', '2021-10-29 07:05:08', '2021-11-03 17:26:11'),
(13, 'MIZUNO SALA', 5, NULL, NULL, 1, 0, NULL, NULL, NULL, '/storage/uploads/products/iwv5dC9Y0ej07vhU81ls.jpg', '2021-10-29 07:05:56', '2021-10-31 07:05:04'),
(14, 'NIKE MERCURIAL SUPERFLY', 1, '3199000', NULL, 1, 1, NULL, NULL, NULL, '/storage/uploads/products/vpfAsR7zxQDyarLfuUWj.jpeg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(15, 'NIKE MERCURIAL VAPOR', 6, '4100000', '3600000', 1, 1, '5', NULL, NULL, '/storage/uploads/products/bfK2hsNG5QGaF4V0Saec.jpg', '2021-10-29 07:10:45', '2021-10-29 07:10:45'),
(16, 'Nike phantom', 7, '1600000', NULL, 1, 1, '5', NULL, NULL, '/storage/uploads/products/3l5cCY0Tkfy65cVPHUxW.jpg', '2021-10-29 07:11:45', '2021-11-03 17:26:28'),
(17, 'NIKE TIEMPO', 8, NULL, NULL, 1, 1, '15', NULL, NULL, '/storage/uploads/products/AD9Sa21C56QNHdOKXXQY.jpg', '2021-10-29 07:14:06', '2021-10-29 07:14:06'),
(18, 'NIKE TIEMPO LEGEND', 8, NULL, NULL, 1, 1, '5', NULL, NULL, '/storage/uploads/products/w2aCOGKDxc1HRBokXRbq.jpeg', '2021-10-29 07:14:47', '2021-10-29 07:14:47'),
(19, 'PREDATOR UNIFORIA', 6, '2670000', '2500000', 1, 1, '16', NULL, NULL, '/storage/uploads/products/Xaj8lpJy3SNCdaFW3b24.jpg', '2021-10-29 07:15:33', '2021-10-29 07:15:33'),
(20, 'PUMA FUTURE', 5, '1700000', NULL, 1, 1, '15', NULL, NULL, '/storage/uploads/products/aHmoxSRrayMGIMnEOyjp.jpg', '2021-10-29 07:16:09', '2021-10-30 01:21:30'),
(21, 'Puma Future Z', 2, '3300000', '3000000', 1, 1, '56', NULL, NULL, '/storage/uploads/products/Al1w8gZQVFOKVpKHP3NY.jpg', '2021-10-29 07:16:55', '2021-10-29 07:16:55'),
(22, 'PUMA GREEN', 5, '2400000', NULL, 1, 1, '9', 'Mã SP: PU10638101TF-44', '<p><strong>PUMA FUTURE Z 1.1 PRO CAGE TF&nbsp;- GI&Agrave;Y Đ&Aacute; B&Oacute;NG S&Acirc;N CỎ NH&Acirc;N TẠO</strong></p>\r\n\r\n<p>Th&aacute;ng 12/2020, Puma đ&atilde; ra mắt d&ograve;ng gi&agrave;y đ&aacute; b&oacute;ng ho&agrave;n to&agrave;n mới FUTURE Z với đại diện l&agrave; Neymar Jr. Trong bộ sưu tập &ldquo;Game On&rdquo; được ra mắt th&aacute;ng 1 vừa qua, Future Z đ&atilde; kho&aacute;c l&ecirc;n m&igrave;nh một diện mạo mới.</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật:</strong></p>\r\n\r\n<p>D&ograve;ng sản phẩm d&agrave;nh cho bề mặt s&acirc;n cỏ nh&acirc;n tạo&nbsp;(Đế TF).</p>\r\n\r\n<p>Ph&acirc;n kh&uacute;c: Pro (Chuy&ecirc;n nghiệp).</p>\r\n\r\n<p>Upper:&nbsp;Sợi tổng hợp kết hợp với&nbsp;dải thun FuzionFit+ đặt ở giữa ch&acirc;n, thứ sẽ mang lại cảm gi&aacute;c &ocirc;m ch&acirc;n v&agrave; hỗ trợ khả năng di chuyển, tăng sự nhanh nhẹn. Bề mặt&nbsp;GripControl Pro được phủ ở c&aacute;c khu vực quan trọng nhằm cung cấp khả năng kiểm so&aacute;t b&oacute;ng to&agrave;n diện.</p>\r\n\r\n<p>Đế ngo&agrave;i: Dynamic Motion -&nbsp;Bộ đế ngo&agrave;i h&igrave;nh chữ Z bắt mắt gi&uacute;p giảm trọng lượng, mang lại khả năng xoay trở cực tốt v&agrave; duy tr&igrave; sự ổn định cho người chơi để thực hiện c&aacute;c pha tăng tốc, chuyển động, skill.</p>\r\n\r\n<p>Thi&ecirc;n hướng sử dụng: Tốc độ, dứt điểm, kỹ thuật.</p>\r\n\r\n<p>Bộ sưu tập: Game On Pack&nbsp;(03/2021).</p>', '/storage/uploads/products/TlfRwUio89P8Vq1PYNZT.jpg', '2021-08-04 07:17:32', '2021-10-31 02:31:44'),
(23, 'NIKE TIEMPO LEGEND 9 ACADEMY TF RENEW - BLACK/IRON GREY', 8, '2039000', '1850000', 1, 0, '14', 'Nhà cung cấp: NIKE\r\nSKU: DA1191-004-38.5', '<p><strong>Nike Tiempo Legend 9 Academy TF Renew - Black/Iron Grey&nbsp;</strong>l&agrave; mẫu gi&agrave;y chuy&ecirc;n cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người.&nbsp; Nằm trong&nbsp;<strong>Bộ sưu tập &lsquo;Renew&nbsp;Pack&rsquo; mới</strong>&nbsp;của Nike c&oacute; m&agrave;u đen chủ đạo k&egrave;m những chi tiết m&agrave;u xanh viền quanh Swoosh l&agrave;m điểm nhấn. Những đ&ocirc;i gi&agrave;y m&agrave;u đen lu&ocirc;n giữ được mức độ hấp dẫn nhất định v&agrave; lu&ocirc;n hiện diện trong xu hướng thời trang qua c&aacute;c m&ugrave;a. M&agrave;u đen vừa thanh lịch, đơn giản lại vừa mạnh mẽ, sắc th&aacute;i.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000061481/file/black-1-min_11de59a29b754b01816c142a5c0bb6bd_15ff5e6f4289495e93ea7bcb0cb2d281_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>Về ph&acirc;n c&ocirc;ng nghệ th&igrave; phi&ecirc;n bản Academy&nbsp;Tiempo được l&agrave;m chất liệu da b&ecirc;&nbsp;mềm mại, c&ocirc;ng nghệ&nbsp;Foam-Pod được bố tr&iacute; mũi gi&agrave;y v&agrave; l&ograve;ng b&agrave;n ch&acirc;n hỗ trợ cảm gi&aacute;c b&oacute;ng cho người chơi. Ngo&agrave;i ra, g&oacute;t đệm được cải tiến &ecirc;m &aacute;i v&agrave; khu&ocirc;n đế đệm hỗ trợ di chuyển cũng như bứt&nbsp;tốc.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9934_f3b835bb56e145c89e2469189064930f_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9931_aeb1bddb168c4a739cccff49f6ea3c54_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9911_a94084a7a1df45d9847ec7369a4ff36a_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9915_24e9c9dbb2bf46f4a8cb7ac7c6121bec_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9918_af132a3eadbc4f66b44d203416a93992_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9913_82985b39b0644d778accfbddfa1fbf6c_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9914_e777b3f7dfb64bdf8fcc14b3e5a3722c_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9921_f37d4a7fe38c4d54b04d7b2c8b502471_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_9923_8a27bbb500df46b2852912d7148980a4_1024x1024.jpg\" style=\"height:500px; width:500px\" /></p>', '/storage/uploads/products/bzWMhG0ZRZE4JwiEyj9O.jpeg', '2021-10-31 07:44:35', '2021-10-31 07:44:35'),
(24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK - WHITE/BLACK/HYPER', 8, '1449000', NULL, 1, 1, '6', 'Nhà cung cấp: NIKE\r\nSKU: AT6133-104-40', '<p><strong>Những cầu thủ nổi tiếng đại diện:</strong>&nbsp;Piqu&eacute;, Van Dijk v&agrave; Thiago Silva.....</p>\r\n\r\n<p><strong>Bộ Sưu Tập:&nbsp;</strong>Daybreak.</p>\r\n\r\n<p><strong>Năm sản xuất:&nbsp;</strong>2020.</p>\r\n\r\n<p><strong>Chất liệu:&nbsp;</strong>Da b&ecirc; mềm mại v&agrave; c&aacute;c v&acirc;n kim cương 3D.</p>\r\n\r\n<p><strong>C&ocirc;ng nghệ:&nbsp;</strong>Đế Control chuy&ecirc;n kiểm so&aacute;t, b&aacute;m s&acirc;n v&agrave; l&oacute;t đệm.</p>\r\n\r\n<p><strong>Trọng lượng:&nbsp;</strong>216 gram/chiếc (Size 42).</p>\r\n\r\n<p><strong>Phong c&aacute;ch:&nbsp;</strong>Kiểm so&aacute;t, kỹ thuật.</p>\r\n\r\n<p><strong>Vị tr&iacute;:</strong>&nbsp;Hậu vệ, tiền vệ trung t&acirc;m.</p>\r\n\r\n<p><strong>Form gi&agrave;y:&nbsp;</strong>Tương đối thoải m&aacute;i, ph&ugrave; hợp ch&acirc;n b&egrave;.</p>\r\n\r\n<p><strong>Mặt s&acirc;n:</strong>&nbsp;S&acirc;n cỏ tự nhi&ecirc;n 11 người.</p>', '/storage/uploads/products/6jVugUd4LDQWD2nLWYoZ.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(25, 'Giày Nike air Jordan 1 High Đen trắng nam', 2, NULL, NULL, 1, 1, NULL, NULL, NULL, '/storage/uploads/products/4iWL9Xaj7N7nFbMogtrU.jpg', '2021-11-01 19:41:51', '2021-11-02 21:59:14'),
(26, 'MIZUNO MONARCIDA NEO SALA CLUB TF - WHITE/BLUE', 12, NULL, NULL, 1, 0, NULL, 'Nhà cung cấp: MIZUNO\r\nSKU: Q1GB212362-38.5', '<p>Ngay từ những ng&agrave;y đầu xuất hiện tại Việt Nam, d&ograve;ng gi&agrave;y Monarcida n&oacute;i chung đ&atilde; được rất nhiều c&aacute;c cầu thủ chơi s&acirc;n cỏ nh&acirc;n tạo tin d&ugrave;ng bởi sự bền bỉ đ&aacute;ng kinh ngạc c&ugrave;ng với đ&oacute; l&agrave; sự chắc chắn v&agrave; đặc biệt l&agrave; rất hợp ch&acirc;n người Việt khi những cầu thủ c&oacute; b&agrave;n ch&acirc;n b&egrave; vẫn c&oacute; thể sử dụng thoải m&aacute;i.&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000061481/file/dcbcda00517f9921c06e_4e7da8e85e124940b08e82744f595fd4_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><strong>Mizuno Monarcida Neo Sala Club TF - White/Blue&nbsp;</strong>l&agrave; mẫu gi&agrave;y d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người.&nbsp;B&ecirc;n cạnh những mẫu gi&agrave;y đ&igrave;nh đ&aacute;m đ&atilde; được nhiều cầu thủ phong tr&agrave;o ưa chuộng như Monarcida Neo II Select AS, Monarcida Neo Sala Pro TF&hellip; th&igrave; sang năm 2021, Mizuno đ&atilde; cho ra mắt một mẫu gi&agrave;y mới với đầy đủ những ưu điểm đặc trưng của d&ograve;ng Monarcida v&agrave; c&oacute; một mức gi&aacute; hợp l&yacute; c&ugrave;ng rất nhiều điểm nổi bật.</p>\r\n\r\n<p>Với những ưu điểm nổi bật về độ bền bỉ, hợp ch&acirc;n người Việt c&ugrave;ng với đ&oacute; l&agrave; thiết kế đẹp mắt, Monarcida Neo Sala Club TF l&agrave; một sự lựa chọn v&ocirc; c&ugrave;ng tuyệt vời trong ph&acirc;n kh&uacute;c tầm trung. Nếu bạn đang t&igrave;m kiếm một đ&ocirc;i gi&agrave;y c&oacute; hiệu suất thi đấu cao v&agrave; c&oacute; mức gi&aacute; hợp l&yacute; th&igrave; Monarcida Neo Sala Club TF ch&iacute;nh l&agrave; đ&ocirc;i gi&agrave;y d&agrave;nh cho bạn.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6783_33ba5c1897d946f690560807c1a4ed79_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Được l&agrave;m từ da tổng hợp thế hệ mới, liền mạch tr&ecirc;n to&agrave;n th&acirc;n gi&agrave;y gi&uacute;p c&aacute;c cầu thủ khống chế b&oacute;ng &ecirc;m &aacute;i v&agrave; kiểm so&aacute;t b&oacute;ng tốt hơn.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6775_beede49b807649aab31708fb7ad54ffe_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Thiết kế ấn tượng với những họa tiết chạy dọc theo th&acirc;n gi&agrave;y, mang tới sự trẻ trung, năng động cho tổng thể thiết kế.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6779_a72866b651ce48059d50b6f28bbc3c96_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Form gi&agrave;y hợp ch&acirc;n người Việt, c&aacute;c cầu thủ d&ugrave; ch&acirc;n b&egrave; nhiều hay trung b&igrave;nh đều c&oacute; thể đi gi&agrave;y vừa vặn, thoải m&aacute;i.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6789_ec33d1d88bf9484191b4878b5154f95b_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6777_47cf82f4be4444c6af6b4127bd442a15_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6785_51f1e0cac9ba43ca8e1cab81982e1a7b_1024x1024.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p>L&oacute;t gi&agrave;y &ecirc;m &aacute;i, chống trượt hiệu quả.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6787_8d868a869f2242248d29b58cf2caacf4_1024x1024.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p>D&agrave;n đinh dăm được bố tr&iacute; khoa học v&agrave; bền bỉ, b&aacute;m s&acirc;n rất tốt ngay cả khi điều kiện thời tiết kh&ocirc;ng thật sự thuận lợi.</p>', '/storage/uploads/products/pz0SS4BjAx2urMtgkX5H.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(27, 'MIZUNO MONARCIDA NEO II SELECT AS TF RED/BLACK', 12, '1399000', '1299000', 1, 1, '10', 'Nhà cung cấp: MIZUNO\r\nSKU: P1GD210560-38.5', '<p><strong>MIZUNO MONARCIDA NEO II SELECT AS TF RED/BLACK&nbsp;</strong><strong>l&agrave; sản phẩm d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người. Ph&acirc;n kh&uacute;c hạng trung Sala Select được trang bị lớp da tổng hợp &ecirc;m hơn so với người em Neo Select As</strong></p>\r\n\r\n<p style=\"text-align:justify\">Mizuno đang kh&ocirc;ng ngừng cải tiến từng ng&agrave;y, từ thiết kế đến c&ocirc;ng nghệ nhằm mang đến những đ&ocirc;i gi&agrave;y b&oacute;ng đ&aacute; chất lượng nhất, &ecirc;m &aacute;i nhất, bền bỉ nhất đến với kh&aacute;ch h&agrave;ng. Giữa thị trường gi&agrave;y b&oacute;ng đ&aacute; ng&agrave;y c&agrave;ng đa dạng với nhiều thương hiệu đ&igrave;nh đ&aacute;m, ch&uacute;ng ta vẫn phải c&ocirc;ng nhận những cải tiến v&agrave; đột ph&aacute; của m&igrave;nh đ&atilde; gi&uacute;p Mizuno c&oacute; chỗ đứng vững chắc trong l&ograve;ng người h&acirc;m mộ.</p>\r\n\r\n<p>Mizuno được biết đến l&agrave; 1 trong những thương hiệu l&acirc;u đời nhất tại Nhật Bản.&nbsp; MONARCIDA NEO SELECT AS l&agrave; d&ograve;ng sản phẩm c&oacute; Form truyền thống với&nbsp;upper được l&agrave;m bằng chất liệu da tổng hợp mềm v&agrave; &ocirc;m ch&acirc;n đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng thoải m&aacute;i khi chơi b&oacute;ng.</p>', '/storage/uploads/products/sLOFImG0YeeyuKGkNrNV.jpg', '2021-11-01 22:14:56', '2021-11-01 22:14:56'),
(28, 'MIZUNO MONARCIDA NEO II SELECT AS TF - SILVER/PINK', 12, '1399000', NULL, 1, 1, '12', 'Nhà cung cấp: MIZUNO\r\nSKU: P1GD210564-38.5', '<p>Ngay từ những ng&agrave;y đầu xuất hiện tại Việt Nam, d&ograve;ng gi&agrave;y Monarcida n&oacute;i chung đ&atilde; được rất nhiều c&aacute;c cầu thủ chơi s&acirc;n cỏ nh&acirc;n tạo tin d&ugrave;ng bởi sự bền bỉ đ&aacute;ng kinh ngạc c&ugrave;ng với đ&oacute; l&agrave; sự chắc chắn v&agrave; đặc biệt l&agrave; rất hợp ch&acirc;n người Việt khi những cầu thủ c&oacute; b&agrave;n ch&acirc;n b&egrave; vẫn c&oacute; thể sử dụng thoải m&aacute;i.&nbsp;V&agrave; mẫu gi&agrave;y điển h&igrave;nh được c&aacute;c cầu thủ sử dụng nhiều đ&oacute; ch&iacute;nh l&agrave; Monarcida Neo II Select AS, một mẫu gi&agrave;y hội tụ đủ c&aacute;c yếu tố tr&ecirc;n v&agrave; c&ograve;n c&oacute; mức gi&aacute; v&ocirc; c&ugrave;ng hợp l&yacute;.&nbsp;</p>\r\n\r\n<p><strong>Mizuno Monarcida Neo II Select AS TF - Silver/Pink&nbsp;</strong>l&agrave; mẫu gi&agrave;y d&agrave;nh cho s&acirc;n cỏ nh&acirc;n tạo 5-7 người.&nbsp;MONARCIDA NEO 2 SELECT&nbsp;l&agrave; d&ograve;ng sản phẩm c&oacute; Form truyền thống với&nbsp;upper được l&agrave;m bằng chất liệu da tổng hợp mềm v&agrave; &ocirc;m ch&acirc;n đem lại cảm gi&aacute;c v&ocirc; c&ugrave;ng thoải m&aacute;i khi chơi b&oacute;ng.</p>\r\n\r\n<p>Mizuno đang kh&ocirc;ng ngừng cải tiến từng ng&agrave;y, từ thiết kế đến c&ocirc;ng nghệ nhằm mang đến những đ&ocirc;i gi&agrave;y b&oacute;ng đ&aacute; chất lượng nhất, &ecirc;m &aacute;i nhất, bền bỉ nhất đến với kh&aacute;ch h&agrave;ng. Giữa thị trường gi&agrave;y b&oacute;ng đ&aacute; ng&agrave;y c&agrave;ng đa dạng với nhiều thương hiệu đ&igrave;nh đ&aacute;m, ch&uacute;ng ta vẫn phải c&ocirc;ng nhận những cải tiến v&agrave; đột ph&aacute; của m&igrave;nh đ&atilde; gi&uacute;p Mizuno c&oacute; chỗ đứng vững chắc trong l&ograve;ng người h&acirc;m mộ.</p>\r\n\r\n<p>Ngo&agrave;i ra, Monarcida Neo II Select c&ograve;n c&oacute; những ưu điểm rất nổi bật. Được l&agrave;m từ da tổng hợp thế hệ mới, gi&uacute;p c&aacute;c cầu thủ khống chế b&oacute;ng &ecirc;m &aacute;i v&agrave; kiểm so&aacute;t b&oacute;ng tốt hơn. Thiết kế &ldquo;Wide Fitting&rdquo;, c&aacute;c cầu thủ d&ugrave; ch&acirc;n b&egrave; nhiều hay trung b&igrave;nh đều c&oacute; thể đi gi&agrave;y vừa vặn, thoải m&aacute;i. Trọng lượng nhẹ hơn phi&ecirc;n bản trước với chỉ 253g (size 42), l&oacute;t gi&agrave;y &ecirc;m &aacute;i, chống trượt hiệu quả v&agrave; c&oacute; thể th&aacute;o rời. D&agrave;n đinh dăm được bố tr&iacute; khoa học v&agrave; bền bỉ, b&aacute;m s&acirc;n rất tốt ngay cả khi điều kiện thời tiết kh&ocirc;ng thật sự thuận lợi.</p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6804_94aac5e38a43473b9d5e5f23861b7d94_1024x1024.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p><img src=\"https://product.hstatic.net/1000061481/product/_mg_6809_9cabb15a8e644bd38b448c7a3c91c3ba_1024x1024.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p>Với những điểm cải tiến so với c&aacute;c phi&ecirc;n bản trước, Monarcida Neo II Select AS sẽ mang lại những trải nghiệm mới, thuận lợi hơn cho c&aacute;c cầu thủ trong c&aacute;c pha xử l&yacute; b&oacute;ng. Nếu bạn đang t&igrave;m kiếm một mẫu gi&agrave;y b&oacute;ng đ&aacute; s&acirc;n cỏ nh&acirc;n tạo c&oacute; sự bền bỉ, chắc chắn v&agrave; c&oacute; mức gi&aacute; hợp l&yacute; th&igrave; Monarcida Neo II Select AS ch&iacute;nh l&agrave; mẫu gi&agrave;y d&agrave;nh cho bạn.</p>', '/storage/uploads/products/6ACIoWCDg2nc6PCzYm8U.jpg', '2021-11-01 22:18:00', '2021-11-01 22:18:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(5, '/storage/uploads/products/LK2pXQpB3cnjoASE9YlH.jpg', 2, 'ADIDAS X SPEEDFLOW .1 FGAG METEORITE SOLAR REDWHITEBLACK_2.jpg', '2021-10-27 21:58:44', '2021-10-27 21:58:44'),
(6, '/storage/uploads/products/AfsC1M2gAFhu8xbe3JnI.jpg', 2, 'ADIDAS X SPEEDFLOW .1 FGAG METEORITE SOLAR REDWHITEBLACK_3.jpg', '2021-10-27 21:58:44', '2021-10-27 21:58:44'),
(7, '/storage/uploads/products/i5UjAPbcSyQgsOWcAVin.jpg', 2, 'ADIDAS X SPEEDFLOW .1 FGAG METEORITE SOLAR REDWHITEBLACK_4.jpg', '2021-10-27 21:58:44', '2021-10-27 21:58:44'),
(8, '/storage/uploads/products/ukqjDSQcMzeZQg99mEI7.jpg', 3, 'ADIDAS X SPEEDFLOW MESSI .3 TF UNPARALLELED_2.jpg', '2021-10-27 22:00:27', '2021-10-27 22:00:27'),
(9, '/storage/uploads/products/dqLRiZX96RX0bOZ50xOP.jpg', 3, 'ADIDAS X SPEEDFLOW MESSI .3 TF UNPARALLELED_3.jpg', '2021-10-27 22:00:27', '2021-10-27 22:00:27'),
(10, '/storage/uploads/products/RNBDXo2fC9pxu2Jk7ebC.jpg', 3, 'ADIDAS X SPEEDFLOW MESSI .3 TF UNPARALLELED_4.jpg', '2021-10-27 22:00:27', '2021-10-27 22:00:27'),
(11, '/storage/uploads/products/BD4DYvxk8MzsOiBzdAfU.jpg', 4, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_2.jpg', '2021-10-28 01:49:44', '2021-10-28 01:49:44'),
(12, '/storage/uploads/products/2svKs5TwUH5OIONDtnZh.jpg', 4, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_3.jpg', '2021-10-28 01:49:44', '2021-10-28 01:49:44'),
(13, '/storage/uploads/products/9gKMdgSL13FatboWtOPn.jpg', 4, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_4.jpg', '2021-10-28 01:49:44', '2021-10-28 01:49:44'),
(14, '/storage/uploads/products/tzQ6xjCNSkjdu0pLy7lW.jpg', 4, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_5.jpg', '2021-10-28 01:49:44', '2021-10-28 01:49:44'),
(15, '/storage/uploads/products/BtCyupwnlhcmnUsiXyY5.jpg', 5, 'giay_da_bong_mizuno_morelia_salajapan_tf_Q1GB210025_2.jpg', '2021-10-28 17:50:12', '2021-10-29 01:54:44'),
(16, '/storage/uploads/products/WKhRv8u0H8zBWY1P5ocb.jpg', 5, 'giay_da_bong_mizuno_morelia_salajapan_tf_Q1GB210025_3.jpg', '2021-10-28 17:50:12', '2021-10-28 17:50:12'),
(17, '/storage/uploads/products/1zZGmxMEIqb84ycC8TZp.jpg', 5, 'giay_da_bong_mizuno_morelia_salajapan_tf_Q1GB210025_4.jpg', '2021-10-28 17:50:12', '2021-10-28 17:50:12'),
(18, '/storage/uploads/products/9u7eWury83ZCUKgqKumj.jpg', 5, 'giay_da_bong_mizuno_morelia_salajapan_tf_Q1GB210025_5.jpg', '2021-10-28 17:50:12', '2021-10-28 17:50:12'),
(19, '/storage/uploads/products/peUa1VNE8pKU05LkwtKq.jpg', 1, 'kamito_ta11-ts_2.jpg', '2021-10-28 20:47:36', '2021-10-28 20:47:36'),
(20, '/storage/uploads/products/TF3uTlyCOVo1HAqdQi9N.jpg', 1, 'kamito_ta11-ts_3.jpg', '2021-10-28 20:47:36', '2021-10-28 20:47:36'),
(21, '/storage/uploads/products/MxAC0l3DKsIwUD9OeU3a.jpg', 1, 'kamito_ta11-ts_4.jpg', '2021-10-28 20:47:36', '2021-10-28 20:47:36'),
(22, '/storage/uploads/products/90kxe2fRcBh6mXArGFpw.jpg', 1, 'kamito_ta11-ts_5.jpg', '2021-10-28 20:47:36', '2021-10-28 20:47:36'),
(23, '/storage/uploads/products/qQaOraXJInHlfscusHch.jpg', 1, 'kamito_ta11-ts_6.jpg', '2021-10-28 20:47:36', '2021-10-28 20:47:36'),
(26, '/storage/uploads/products/h9Eac660uZuCuAr6Kv5n.jpg', 6, 'Adidas Predator 3.jpg', '2021-10-29 06:59:54', '2021-10-29 06:59:54'),
(27, '/storage/uploads/products/64nh9cEmbOi0Utx7KkeK.jpg', 6, 'Adidas Predator 4.jpg', '2021-10-29 06:59:54', '2021-10-29 06:59:54'),
(28, '/storage/uploads/products/8zzH42omhCYo22NUz7sb.jpg', 7, 'ADIDAS PREDATOR FREAK 1.jpg', '2021-10-29 07:00:36', '2021-10-29 07:00:36'),
(29, '/storage/uploads/products/SjmT5JMGnuW3GOYCgowM.jpeg', 7, 'ADIDAS PREDATOR FREAK 2.jpeg', '2021-10-29 07:00:36', '2021-10-29 07:00:36'),
(30, '/storage/uploads/products/z7m4G4uAisLJJJpvTbuh.jpg', 7, 'ADIDAS PREDATOR FREAK 3.jpg', '2021-10-29 07:00:36', '2021-10-29 07:00:36'),
(31, '/storage/uploads/products/ZI4PvL9jesYK4bbbdWAY.jpg', 7, 'ADIDAS PREDATOR FREAK 4.jpg', '2021-10-29 07:00:36', '2021-10-29 07:00:36'),
(32, '/storage/uploads/products/WmuTlmCpWz9SrsCNgAmD.jpg', 8, 'ADIDAS TF 1.jpg', '2021-10-29 07:01:24', '2021-10-29 07:01:24'),
(33, '/storage/uploads/products/MdXNZZz6FXl5kXzEwESa.jpg', 8, 'ADIDAS TF 2.jpg', '2021-10-29 07:01:24', '2021-10-29 07:01:24'),
(34, '/storage/uploads/products/Mwd1aXnpGKAaVNQw0akA.jpg', 8, 'ADIDAS TF 3.jpg', '2021-10-29 07:01:24', '2021-10-29 07:01:24'),
(35, '/storage/uploads/products/vh0dQIoOv7B9vN9DfJYo.jpg', 8, 'ADIDAS TF 4.jpg', '2021-10-29 07:01:24', '2021-10-29 07:01:24'),
(36, '/storage/uploads/products/owGbqvGJEDbq9fPKgLZr.jpg', 9, 'ADIDAS X GHOSTED 1.jpg', '2021-10-29 07:02:07', '2021-10-29 07:02:07'),
(37, '/storage/uploads/products/3OxEIUdcXCHqZVYBWEgH.jpg', 9, 'ADIDAS X GHOSTED 2.jpg', '2021-10-29 07:02:07', '2021-10-29 07:02:07'),
(38, '/storage/uploads/products/vrCi9pd395v8aQ8YlxQX.jpg', 9, 'ADIDAS X GHOSTED 3.jpg', '2021-10-29 07:02:07', '2021-10-29 07:02:07'),
(39, '/storage/uploads/products/vvzykYXqRYpaumdXSaOK.jpg', 9, 'ADIDAS X GHOSTED 4.jpg', '2021-10-29 07:02:07', '2021-10-29 07:02:07'),
(40, '/storage/uploads/products/diRBb7vMFEg0GGLlYlcK.jpg', 10, 'ASICS ULTREZZA 1.jpg', '2021-10-29 07:03:25', '2021-10-29 07:03:25'),
(41, '/storage/uploads/products/KBrwTr1Wet3wVbYsyIJf.jpg', 10, 'ASICS ULTREZZA 2.jpg', '2021-10-29 07:03:25', '2021-10-29 07:03:25'),
(42, '/storage/uploads/products/0yIqa8IWE5lNcJ8BY6ou.jpg', 10, 'ASICS ULTREZZA 3.jpg', '2021-10-29 07:03:25', '2021-10-29 07:03:25'),
(43, '/storage/uploads/products/cNAfgjdTC1o2IAN1QRNf.jpg', 10, 'ASICS ULTREZZA 4.jpg', '2021-10-29 07:03:25', '2021-10-29 07:03:25'),
(44, '/storage/uploads/products/WUGokvKeiDWJdZ4XhRnc.jpg', 11, 'MERCURIAL SUPERFLYX 1.jpg', '2021-10-29 07:04:32', '2021-10-29 07:04:32'),
(45, '/storage/uploads/products/HDwRPgYP9dCGvTMoFYmo.jpeg', 11, 'MERCURIAL SUPERFLYX 2.jpeg', '2021-10-29 07:04:32', '2021-10-29 07:04:32'),
(46, '/storage/uploads/products/dV4qdrSFtjIrzoLH3Jso.jpeg', 11, 'MERCURIAL SUPERFLYX 3.jpeg', '2021-10-29 07:04:32', '2021-10-29 07:04:32'),
(47, '/storage/uploads/products/wXA3A9xCTGJ4eTTHcRgD.jpeg', 11, 'MERCURIAL SUPERFLYX 4.jpeg', '2021-10-29 07:04:32', '2021-10-29 07:04:32'),
(48, '/storage/uploads/products/oPTlKw1p8O6FuTODeb8Y.jpg', 13, 'MIZUNO SALA 1.jpg', '2021-10-29 07:05:56', '2021-10-29 07:05:56'),
(49, '/storage/uploads/products/STMoWAsUIpvus6uYYi2y.jpg', 13, 'MIZUNO SALA 2.jpg', '2021-10-29 07:05:56', '2021-10-29 07:05:56'),
(50, '/storage/uploads/products/srE0UXRazo8iZRtTCguH.jpg', 13, 'MIZUNO SALA 3.jpg', '2021-10-29 07:05:56', '2021-10-29 07:05:56'),
(51, '/storage/uploads/products/pTF5uW4QMTHXNGHuOqcv.jpg', 13, 'MIZUNO SALA 4.jpg', '2021-10-29 07:05:56', '2021-10-29 07:05:56'),
(52, '/storage/uploads/products/AhR5sEWKWDf2DIyVqK6I.jpeg', 14, 'NIKE MERCURIAL SUPERFLY 1.jpeg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(53, '/storage/uploads/products/L457MZm5PIVCPJuRFtgw.jpeg', 14, 'NIKE MERCURIAL SUPERFLY 2.jpeg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(54, '/storage/uploads/products/QPfdFXp3mX9zkM37k142.jpeg', 14, 'NIKE MERCURIAL SUPERFLY 3.jpeg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(55, '/storage/uploads/products/41FzLO5wSmXLX3vaEYPj.jpg', 14, 'NIKE MERCURIAL SUPERFLY 4.jpg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(56, '/storage/uploads/products/sLL1mkSwFLoQzXhn3wdw.jpg', 14, 'NIKE MERCURIAL SUPERFLY 5.jpg', '2021-10-29 07:06:44', '2021-10-29 07:06:44'),
(57, '/storage/uploads/products/KgJKMbGeVhi7pguA28XT.jpg', 15, 'MERCURIAL SUPERFLYX 1.jpg', '2021-10-29 07:10:45', '2021-10-29 07:10:45'),
(58, '/storage/uploads/products/hrHA279uBGWiAIsPZwTM.jpeg', 15, 'MERCURIAL SUPERFLYX 2.jpeg', '2021-10-29 07:10:45', '2021-10-29 07:10:45'),
(59, '/storage/uploads/products/3gf1U4bfzQa6rojK4dmk.jpeg', 15, 'MERCURIAL SUPERFLYX 3.jpeg', '2021-10-29 07:10:45', '2021-10-29 07:10:45'),
(60, '/storage/uploads/products/q0rjycKfVPSx9ySm9fuH.jpeg', 15, 'MERCURIAL SUPERFLYX 4.jpeg', '2021-10-29 07:10:45', '2021-10-29 07:10:45'),
(61, '/storage/uploads/products/GLK5W66fyO6GZ2oOgfPt.jpg', 16, 'NIKE PHANTOM 1.jpg', '2021-10-29 07:11:45', '2021-10-29 07:11:45'),
(62, '/storage/uploads/products/jfW1AnT4uQmkWuOBu8QG.jpg', 16, 'NIKE PHANTOM 2.jpg', '2021-10-29 07:11:45', '2021-10-29 07:11:45'),
(63, '/storage/uploads/products/Esj3ruJ2sqK6A29ACIRF.jpg', 16, 'NIKE PHANTOM 3.jpg', '2021-10-29 07:11:45', '2021-10-29 07:11:45'),
(64, '/storage/uploads/products/sXIZQs9IfWxgM0LlPYOq.jpg', 16, 'NIKE PHANTOM 4.jpg', '2021-10-29 07:11:45', '2021-10-29 07:11:45'),
(65, '/storage/uploads/products/UeeFRYA4PImUXVNawqrD.jpg', 17, 'NIKE TIEMPO 1.jpg', '2021-10-29 07:14:06', '2021-10-29 07:14:06'),
(66, '/storage/uploads/products/BQQCIH72zHW1gfOGxmdo.jpg', 17, 'NIKE TIEMPO 2.jpg', '2021-10-29 07:14:06', '2021-10-29 07:14:06'),
(67, '/storage/uploads/products/9hN47gMsGunDSB3D5m0g.jpg', 17, 'NIKE TIEMPO 3.jpg', '2021-10-29 07:14:06', '2021-10-29 07:14:06'),
(68, '/storage/uploads/products/PqYq1uF4YHo29lCGyAlY.jpg', 17, 'NIKE TIEMPO 4.jpg', '2021-10-29 07:14:06', '2021-10-29 07:14:06'),
(69, '/storage/uploads/products/hCpMBouCZEgZHxeoWuUE.jpeg', 18, 'NIKE TIEMPO LEGEND 1.jpeg', '2021-10-29 07:14:47', '2021-10-29 07:14:47'),
(70, '/storage/uploads/products/9J0KgPxugZHumgXDni1E.jpeg', 18, 'NIKE TIEMPO LEGEND 2.jpeg', '2021-10-29 07:14:47', '2021-10-29 07:14:47'),
(71, '/storage/uploads/products/Yy1nM6wJwhvCh1VWISqw.jpeg', 18, 'NIKE TIEMPO LEGEND 3.jpeg', '2021-10-29 07:14:47', '2021-10-29 07:14:47'),
(72, '/storage/uploads/products/YAopT7xUq1VkS4JXgt8c.jpeg', 18, 'NIKE TIEMPO LEGEND 4.jpeg', '2021-10-29 07:14:47', '2021-10-29 07:14:47'),
(73, '/storage/uploads/products/UaV31iPMq68ZU6z60yxX.jpg', 19, 'PREDATOR UNIFORIA 1.jpg', '2021-10-29 07:15:33', '2021-10-29 07:15:33'),
(74, '/storage/uploads/products/KhFEzOMCaMv4w6V8fFOU.jpg', 19, 'PREDATOR UNIFORIA 2.jpg', '2021-10-29 07:15:33', '2021-10-29 07:15:33'),
(75, '/storage/uploads/products/ccx4CFnpl7jfAO6X6iIa.jpg', 19, 'PREDATOR UNIFORIA 3.jpg', '2021-10-29 07:15:33', '2021-10-29 07:15:33'),
(76, '/storage/uploads/products/ATLzHMTGzPDOeA7KRCPA.jpg', 19, 'PREDATOR UNIFORIA 4.jpg', '2021-10-29 07:15:33', '2021-10-29 07:15:33'),
(77, '/storage/uploads/products/LtOGCmCGnp7TKJujg93h.jpg', 20, 'PUMA FUTURE 1jpg.jpg', '2021-10-29 07:16:09', '2021-10-29 07:16:09'),
(78, '/storage/uploads/products/ztx0NMFWzesuKhTfFQkG.jpg', 20, 'PUMA FUTURE 2.jpg', '2021-10-29 07:16:09', '2021-10-29 07:16:09'),
(79, '/storage/uploads/products/bOS7A7df11cal4la3zzj.jpg', 20, 'PUMA FUTURE 3.jpg', '2021-10-29 07:16:09', '2021-10-29 07:16:09'),
(80, '/storage/uploads/products/yAOmYX80JTAjT9Bz2d5W.jpg', 20, 'PUMA FUTURE 4.jpg', '2021-10-29 07:16:09', '2021-10-29 07:16:09'),
(81, '/storage/uploads/products/z1XcppGRz267sfD7YaHg.jpg', 20, 'PUMA FUTURE 5.jpg', '2021-10-29 07:16:09', '2021-10-29 07:16:09'),
(82, '/storage/uploads/products/UfNBsvyxeovZSgDVvwbr.jpg', 21, 'Puma Future Z 1.jpg', '2021-10-29 07:16:55', '2021-10-29 07:16:55'),
(83, '/storage/uploads/products/A6sQHv6NuFxTeu0Q9AYG.jpg', 21, 'Puma Future Z 2.jpg', '2021-10-29 07:16:55', '2021-10-29 07:16:55'),
(84, '/storage/uploads/products/u0wuczfyz69W1PywiKNe.jpg', 21, 'Puma Future Z 3.jpg', '2021-10-29 07:16:55', '2021-10-29 07:16:55'),
(85, '/storage/uploads/products/QJZMEQO6zTMelQDJeVCI.jpg', 22, 'Puma Green 1.jpg', '2021-10-29 07:17:32', '2021-10-29 07:17:32'),
(86, '/storage/uploads/products/0rvckuuIDVXOBjDdD3KF.jpg', 22, 'Puma Green 2.jpg', '2021-10-29 07:17:32', '2021-10-29 07:17:32'),
(87, '/storage/uploads/products/fFSTrs4Tx3db1IufIzQn.jpg', 22, 'Puma Green 3.jpg', '2021-10-29 07:17:32', '2021-10-29 07:17:32'),
(88, '/storage/uploads/products/NG1Hvoq569UDFsMMp9GT.jpg', 12, 'MIZUNO MONARCIDA 4.jpg', '2021-10-29 07:22:11', '2021-10-29 07:22:11'),
(89, '/storage/uploads/products/oOfCvCtuDlrxU3Q3vCxW.jpg', 12, 'MIZUNO MONARCIDA 1.jpg', '2021-10-29 07:22:11', '2021-10-29 07:22:11'),
(90, '/storage/uploads/products/r81nIO1cb1ZTDFFYbqaq.jpg', 12, 'MIZUNO MONARCIDA 2.jpg', '2021-10-29 07:22:11', '2021-10-29 07:22:11'),
(91, '/storage/uploads/products/mzDMFeTaksisNS77xmlj.jpg', 12, 'MIZUNO MONARCIDA 3.jpg', '2021-10-29 07:22:11', '2021-10-29 07:22:11'),
(92, '/storage/uploads/products/ZQzPmzJHoIZUulwbnoaT.jpg', 22, 'Puma Future Green 1.jpg', '2021-10-31 02:31:44', '2021-10-31 02:31:44'),
(94, '/storage/uploads/products/WN89Aq2VcSbBY0Rmqrzi.jpg', 6, 'Adidas Predator 1.jpg', '2021-10-31 04:27:44', '2021-10-31 04:27:44'),
(95, '/storage/uploads/products/vPdhZvuvcyIAxj0Cl5IP.jpg', 6, 'Adidas Predator 2.jpg', '2021-10-31 04:27:44', '2021-10-31 04:27:44'),
(96, '/storage/uploads/products/AUGeWlcNOnbVxB7B58dp.jpeg', 23, 'NIKE TIEMPO LEGEND 9 ACADEMY TF 2.jpeg', '2021-10-31 07:44:35', '2021-10-31 07:44:35'),
(97, '/storage/uploads/products/qOYnPgjdulQI76zPWjmp.jpeg', 23, 'NIKE TIEMPO LEGEND 9 ACADEMY TF 3.jpeg', '2021-10-31 07:44:35', '2021-10-31 07:44:35'),
(98, '/storage/uploads/products/iDk51qdTsqIF9gzJyY4p.jpeg', 23, 'NIKE TIEMPO LEGEND 9 ACADEMY TF 4.jpeg', '2021-10-31 07:44:35', '2021-10-31 07:44:35'),
(99, '/storage/uploads/products/FQSmUzio2vwEloWmxOfx.jpeg', 23, 'NIKE TIEMPO LEGEND 9 ACADEMY TF 5.jpeg', '2021-10-31 07:44:35', '2021-10-31 07:44:35'),
(100, '/storage/uploads/products/dxzqsZ5PTRmnablOBmpI.jpg', 24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK 5.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(101, '/storage/uploads/products/h1Xem45Wan6ZGIfGXJnc.jpg', 24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK 4.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(102, '/storage/uploads/products/oS5awKPB7UClI9KdTSoM.jpg', 24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK 3.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(103, '/storage/uploads/products/YBnbEry1GHdQDb7RsMyr.jpg', 24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK 2.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(104, '/storage/uploads/products/fp0pJZl3VANhVm7QEg69.jpg', 24, 'NIKE TIEMPO LEGEND 8 PRO FG DAYBREAK.jpg', '2021-10-31 07:54:03', '2021-10-31 07:54:03'),
(105, '/storage/uploads/products/98bzX3U70IyExEQKDBvX.jpg', 25, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_5.jpg', '2021-11-01 19:41:51', '2021-11-01 19:41:51'),
(106, '/storage/uploads/products/kosRfDh1pmwoi9KHzfwk.jpg', 25, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_4.jpg', '2021-11-01 19:41:51', '2021-11-01 19:41:51'),
(107, '/storage/uploads/products/iUEwXSwQnsxQhahmlbhl.jpg', 25, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_3.jpg', '2021-11-01 19:41:51', '2021-11-01 19:41:51'),
(108, '/storage/uploads/products/jjh8ciTt1bGke0S5h7Tl.jpg', 25, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION_2.jpg', '2021-11-01 19:41:51', '2021-11-01 19:41:51'),
(109, '/storage/uploads/products/dYzkoQM5ejJR22SNFJaj.jpg', 25, 'MIZUNO MONARCIDA NEO II SELECT TF NEXT GENERATION.jpg', '2021-11-01 19:41:51', '2021-11-01 19:41:51'),
(110, '/storage/uploads/products/aSF7Z73N4tUatrjJwQjw.jpg', 26, 'MIZUNO MONARCIDA NEO SALA CLUB TF 5.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(111, '/storage/uploads/products/csDQ25PypdvgUUd4ghjq.jpg', 26, 'MIZUNO MONARCIDA NEO SALA CLUB TF 4.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(112, '/storage/uploads/products/uHqNaJJvTucek9ukz709.jpg', 26, 'MIZUNO MONARCIDA NEO SALA CLUB TF3.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(113, '/storage/uploads/products/ymA3cvUU8Q0VVl7fqce8.jpg', 26, 'MIZUNO MONARCIDA NEO SALA CLUB TF 2.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(114, '/storage/uploads/products/qob3xdkiadRs6BMkdqwp.jpg', 26, 'MIZUNO MONARCIDA NEO SALA CLUB TF 1.jpg', '2021-11-01 22:09:47', '2021-11-01 22:09:47'),
(115, '/storage/uploads/products/tdWGsp3hjUA2sCa7XdPB.jpg', 27, 'MIZUNO MONARCIDA NEO II SELECT AS TF 5.jpg', '2021-11-01 22:14:56', '2021-11-01 22:14:56'),
(116, '/storage/uploads/products/pYYRljnZt99KJFqlXpUP.jpg', 27, 'MIZUNO MONARCIDA NEO II SELECT AS TF 4.jpg', '2021-11-01 22:14:56', '2021-11-01 22:14:56'),
(117, '/storage/uploads/products/NbowEFnYHaSQ0EXYb3l3.jpg', 27, 'MIZUNO MONARCIDA NEO II SELECT AS TF 3.jpg', '2021-11-01 22:14:56', '2021-11-01 22:14:56'),
(118, '/storage/uploads/products/3N1krIVETcjr6Tr4hYst.jpg', 27, 'MIZUNO MONARCIDA NEO II SELECT AS TF 2.jpg', '2021-11-01 22:14:56', '2021-11-01 22:14:56'),
(119, '/storage/uploads/products/iUXihQqj14dtGCoCRl6G.jpg', 28, 'MIZUNO MONARCIDA NEO II SELECT AS TF - SILVER 5.jpg', '2021-11-01 22:18:00', '2021-11-01 22:18:00'),
(120, '/storage/uploads/products/vgwebdzhR7DAPOSjR38r.jpg', 28, 'MIZUNO MONARCIDA NEO II SELECT AS TF - SILVER 4.jpg', '2021-11-01 22:18:00', '2021-11-01 22:18:00'),
(121, '/storage/uploads/products/h5trBIQP89MmPElCTgZo.jpg', 28, 'MIZUNO MONARCIDA NEO II SELECT AS TF - SILVER 3.jpg', '2021-11-01 22:18:00', '2021-11-01 22:18:00'),
(122, '/storage/uploads/products/0BioeRSzEtz0Et0xzIt4.jpg', 28, 'MIZUNO MONARCIDA NEO II SELECT AS TF - SILVER 2.jpg', '2021-11-01 22:18:00', '2021-11-01 22:18:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `thumb`, `link`, `active`, `created_at`, `updated_at`) VALUES
(5, 'Giày Kamito', '<p><span style=\"font-size:26px\"><strong><span style=\"color:#c0392b\">Gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n c&oacute; nh&acirc;n tạo hot</span></strong></span></p>', '/storage/uploads/2021/11/02/KAMITO TA11 1.jpg', 'http://shoestore.com:82/san-pham/1-giay-da-bong-kamito-ta11-as.html', 1, '2021-11-01 19:45:30', '2021-11-03 10:46:18'),
(9, 'Giày Adidas slider 2', '<p><span style=\"color:#ff0033\"><span style=\"font-size:26px\">&aacute;dasdasd</span></span></p>', '/storage/uploads/2021/11/02/banner-3.jpg', 'link abc', 1, '2021-11-02 06:59:18', '2021-11-03 10:47:46'),
(10, 'Giày Mizino slider 3', '<p><span style=\"color:#996633\"><span style=\"font-size:26px\">M&ocirc; tả slider 3</span></span></p>', '/storage/uploads/2021/11/02/MIZUNO MONARCIDA NEO II SELECT AS TF 2.jpg', 'ádasdasd', 1, '2021-11-02 07:00:28', '2021-11-03 10:48:11'),
(11, 'Giày Nike Slider 4', '<p><span style=\"color:#cc0000\"><span style=\"font-size:26px\">M&ocirc; tả vv</span></span></p>', '/storage/uploads/2021/11/02/MIZUNO MONARCIDA NEO II SELECT AS TF 3.jpg', 'a', 1, '2021-11-02 07:01:46', '2021-11-03 10:48:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL,
  `checked` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `customercarts`
--
ALTER TABLE `customercarts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customercarts`
--
ALTER TABLE `customercarts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customercarts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
