-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2016 at 10:51 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banhoa`
--

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `iddh` int(4) NOT NULL,
  `iduser` int(4) NOT NULL DEFAULT '0',
  `thoidiemdathang` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tennguoinhan` varchar(100) NOT NULL DEFAULT '',
  `dtnguoinhan` tinytext,
  `diachi` varchar(255) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `idpttt` varchar(20) NOT NULL,
  `idptgh` varchar(20) NOT NULL,
  `loikhachdan` varchar(1000) NOT NULL,
  `tax` int(11) NOT NULL,
  `shipping` int(11) NOT NULL,
  `daxuly` tinyint(1) NOT NULL DEFAULT '0',
  `ghichu` varchar(255) NOT NULL DEFAULT '',
  `datratien` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`iddh`, `iduser`, `thoidiemdathang`, `tennguoinhan`, `dtnguoinhan`, `diachi`, `tongtien`, `idpttt`, `idptgh`, `loikhachdan`, `tax`, `shipping`, `daxuly`, `ghichu`, `datratien`) VALUES
(1, 20, '0000-00-00 00:00:00', 'Tí', '089874563', '456, abc chấm  cơm chấm vê en', 2500000, 'tructiep', 'tructiep1', '', 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `idChiTiet` int(4) NOT NULL,
  `idDH` int(4) NOT NULL DEFAULT '0',
  `idSP` int(4) NOT NULL DEFAULT '0',
  `TenSP` varchar(255) NOT NULL,
  `SoLuong` int(4) NOT NULL DEFAULT '0',
  `Gia` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`idChiTiet`, `idDH`, `idSP`, `TenSP`, `SoLuong`, `Gia`) VALUES
(7, 1, 35, 'Hoa bình(HB-01)', 1, 200000),
(8, 1, 37, 'Hoa bình(HB-03)', 1, 230000),
(9, 1, 2, 'Hoa chúc mừng (CM-02)', 1, 600000),
(10, 1, 3, 'Hoa chúc mừng (CM-03)', 1, 600000),
(11, 1, 23, 'Hoa bó (HB-07)', 1, 420000),
(12, 1, 24, 'Hoa bó (HB-08)', 1, 450000);

-- --------------------------------------------------------

--
-- Table structure for table `lh_users`
--

CREATE TABLE `lh_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `groups` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:admin, 0 : personnel',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:female, 1 male',
  `birthday` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:lock, 1 :active',
  `create_at` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `salt` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lh_users`
--

INSERT INTO `lh_users` (`id`, `fullname`, `username`, `password`, `groups`, `image`, `phone`, `email`, `address`, `gender`, `birthday`, `status`, `create_at`, `salt`) VALUES
(1, 'Lâm Hưng', 'admin', '28b7391bd4ceed01170b7ff7f6da25af', 1, '1473826513.jpg', NULL, 'lamhung30593@gmail.com', NULL, 1, NULL, 1, 1473826513, '4834'),
(2, 'Hưng', 'admin1', 'd851ee108bf5d80b60566b22429db91f', 0, '1473826579.jpg', NULL, 'lamhung30593@gmail.com123', NULL, 1, NULL, 1, 1473826579, '6389');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `idLoai` int(12) NOT NULL,
  `TenLoai` varchar(100) NOT NULL DEFAULT '',
  `ThuTu` int(4) NOT NULL DEFAULT '1',
  `AnHien` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idLoai`, `TenLoai`, `ThuTu`, `AnHien`) VALUES
(1, 'Hoa sinh nhật', 1, 1),
(2, 'Hoa 8/3', 1, 1),
(3, 'Hoa 14/2', 1, 1),
(4, 'Hoa 20/11', 1, 1),
(5, 'Hoa cưới', 1, 1),
(6, 'Hoa tang', 1, 1),
(7, 'Hoa chúc mừng', 1, 1),
(8, 'Hoa thờ cúng', 1, 1),
(9, 'Hoa nghệ thuật', 1, 1),
(10, 'Hoa văn phòng', 1, 1),
(11, 'Hoa trong hộp', 1, 1),
(12, 'Hoa bình', 1, 1),
(13, 'Hoa bó', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phuongthucgiaohang`
--

CREATE TABLE `phuongthucgiaohang` (
  `idptgh` varchar(20) NOT NULL,
  `tenphuongthucgh` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL,
  `ghichu` varchar(500) DEFAULT NULL,
  `phi` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phuongthucgiaohang`
--

INSERT INTO `phuongthucgiaohang` (`idptgh`, `tenphuongthucgh`, `thutu`, `ghichu`, `phi`) VALUES
('tructiep1', 'Giao trực tiếp (nội thành)', 1, 'Giao trực tiếp tới nhà khách hàng (miễn phí giao hàng)', 0),
('buudien', 'Bưu điện', 2, 'Chuyển qua đường bưu điện', 8000),
('dhl', 'DHL', 3, 'Chuyển phát nhanh DHL', 12000),
('tructiep2', 'Giao trực tiếp (ngoại thành)', 2, 'Giao trực tiếp đến nhà khách (có tính tiền xăng)', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `phuongthucthanhtoan`
--

CREATE TABLE `phuongthucthanhtoan` (
  `idpttt` varchar(20) NOT NULL,
  `tenphuongthuctt` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL,
  `ghichu` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phuongthucthanhtoan`
--

INSERT INTO `phuongthucthanhtoan` (`idpttt`, `tenphuongthuctt`, `thutu`, `ghichu`) VALUES
('nganluong', 'Ngân Lượng', 2, NULL),
('tructiep', 'Trực tiếp', 1, NULL),
('paypal', 'Paypal', 3, NULL),
('baokim', 'Bảo kim', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(12) NOT NULL,
  `idLoai` int(12) NOT NULL DEFAULT '0',
  `TenSP` varchar(100) NOT NULL DEFAULT '',
  `MoTa` varchar(2000) NOT NULL DEFAULT '',
  `NgayCapNhat` date NOT NULL DEFAULT '0000-00-00',
  `Gia` int(4) NOT NULL DEFAULT '0',
  `urlHinh` varchar(255) NOT NULL,
  `baiviet` text,
  `SoLuongTonKho` int(4) DEFAULT '0',
  `GhiChu` varchar(255) DEFAULT NULL,
  `AnHien` int(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idLoai`, `TenSP`, `MoTa`, `NgayCapNhat`, `Gia`, `urlHinh`, `baiviet`, `SoLuongTonKho`, `GhiChu`, `AnHien`) VALUES
(1, 7, 'Hoa chúc mừng (CM-01)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 550000, 'hoachucmung-1.jpg', NULL, 43, NULL, 1),
(2, 7, 'Hoa chúc mừng (CM-02)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-03', 600000, 'hoachucmung-2.jpg', NULL, 57, NULL, 1),
(3, 7, 'Hoa chúc mừng (CM-03)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-03', 600000, 'hoachucmung-3.jpg', NULL, 35, NULL, 1),
(4, 7, 'Hoa chúc mừng (CM-04)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-03', 500000, 'hoachucmung-4.jpg', NULL, 36, NULL, 1),
(5, 7, 'Hoa chúc mừng (CM-05)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 650000, 'hoachucmung-5.jpg', NULL, 47, NULL, 1),
(6, 7, 'Hoa chúc mừng (CM-06)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 680000, 'hoachucmung-6.jpg', NULL, 37, NULL, 1),
(7, 5, 'Hoa cưới (HC -01)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-04', 400000, 'cuoi-1.jpg', NULL, 45, NULL, 1),
(8, 5, 'Hoa cưới (HC -02)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-05', 350000, 'cuoi-2.jpg', NULL, 52, NULL, 1),
(17, 13, 'Hoa bó (HB-01)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-08-09', 20000, 'bo1.jpg', NULL, 36, NULL, 1),
(10, 5, 'Hoa cưới (HC -03)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-04', 500000, 'cuoi-3.jpg', NULL, 54, NULL, 1),
(11, 5, 'Hoa cưới (HC -04)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 600000, 'cuoi-4.jpg', NULL, 44, NULL, 1),
(12, 5, 'Hoa cưới (HC -05)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-03', 2000000, 'cuoi-5.jpg', NULL, 56, NULL, 1),
(13, 5, 'Hoa cưới (HC -06)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 1500000, 'cuoi-6.jpg', NULL, 32, NULL, 1),
(14, 5, 'Hoa cưới (HC -07)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-03', 1200000, 'cuoi-7.jpg', NULL, 50, NULL, 1),
(15, 7, 'Hoa cưới (HC -08)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 1600000, 'cuoi-8.jpg', NULL, 37, NULL, 1),
(16, 5, 'Hoa cưới (HC -09)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-02', 400000, 'cuoi-9.jpg', NULL, 34, NULL, 1),
(18, 13, 'Hoa bó (HB-02)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-11', 250000, 'bo2.jpg', NULL, 32, NULL, 1),
(19, 13, 'Hoa bó (HB-03)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-11', 350000, 'bo3.jpg', NULL, 55, NULL, 1),
(20, 13, 'Hoa bó (HB-04)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-12', 400000, 'bo4.jpg', NULL, 32, NULL, 1),
(21, 13, 'Hoa bó (HB-05)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-12', 450000, 'bo5.jpg', NULL, 53, NULL, 1),
(22, 13, 'Hoa bó (HB-06)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-13', 400000, 'bo6.jpg', NULL, 50, NULL, 1),
(23, 13, 'Hoa bó (HB-07)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 420000, 'bo7.jpg', NULL, 31, NULL, 1),
(24, 13, 'Hoa bó (HB-08)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 450000, 'bo8.jpg', NULL, 37, NULL, 1),
(25, 13, 'Hoa bó (HB-09)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 500000, 'bo9.jpg', NULL, 31, NULL, 1),
(26, 13, 'Hoa bó (HB-10)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 300000, 'bo10.jpg', NULL, 45, NULL, 1),
(27, 13, 'Hoa bó (HB-11)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 350000, 'bo11.jpg', NULL, 42, NULL, 1),
(28, 13, 'Hoa bó (HB-12)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-14', 350000, 'bo12.jpg', NULL, 46, NULL, 1),
(29, 1, 'Hoa sinh nhật (SN-01)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-10', 200000, 'sinhnhat1.jpg', NULL, 46, NULL, 1),
(30, 1, 'Hoa sinh nhật (SN-02)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-10', 220000, 'sinhnhat2.jpg', NULL, 30, NULL, 1),
(31, 1, 'Hoa sinh nhật (SN-03)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-10', 230000, 'sinhnhat3.jpg', NULL, 44, NULL, 1),
(32, 1, 'Hoa sinh nhật (SN-04)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-11', 180000, 'sinhnhat4.jpg', NULL, 40, NULL, 1),
(33, 1, 'Hoa sinh nhật (SN-05)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-11', 150000, 'sinhnhat5.jpg', NULL, 39, NULL, 1),
(34, 1, 'Hoa sinh nhật (SN-06)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-11', 190000, 'sinhnhat6.jpg', NULL, 47, NULL, 1),
(35, 12, 'Hoa bình(HB-01)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 200000, 'binh1.jpg', NULL, 57, NULL, 1),
(36, 12, 'Hoa bình(HB-02)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 220000, 'binh2.jpg', NULL, 55, NULL, 1),
(37, 12, 'Hoa bình(HB-03)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 230000, 'binh3.jpg', NULL, 46, NULL, 1),
(38, 12, 'Hoa bình(HB-04)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 240000, 'binh4.jpg', NULL, 33, NULL, 1),
(39, 12, 'Hoa bình(HB-05)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 250000, 'binh5.jpg', NULL, 59, NULL, 1),
(40, 12, 'Hoa bình(HB-06)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 260000, 'binh6.jpg', NULL, 48, NULL, 1),
(41, 12, 'Hoa bình(HB-07)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 1000000, 'binh7.jpg', NULL, 30, NULL, 1),
(42, 12, 'Hoa bình(HB-08)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 250000, 'binh8.jpg', NULL, 38, NULL, 1);
INSERT INTO `sanpham` (`idSP`, `idLoai`, `TenSP`, `MoTa`, `NgayCapNhat`, `Gia`, `urlHinh`, `baiviet`, `SoLuongTonKho`, `GhiChu`, `AnHien`) VALUES
(43, 12, 'Hoa bình(HB-09)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 220000, 'binh9.jpg', NULL, 42, NULL, 1),
(44, 12, 'Hoa bình(HB-10)', '<p>Chúng tôi luôn sẵn sàng đáp ứng mọi nhu cầu của khách hàng về <strong>hoa tươi, hoa văn phòng, hoa sinh nhật, hoa khai trương, hội nghị, tiệc cưới, sự kiện,…</strong> với nhiều chủng loại đa dạng và phong phú.</p>\r\n<p> Ngoài ra, quý khách sẽ được phục vụ <strong>miễn phí</strong>:   Thiết kế và in logo trên giấy chúc mừng, tư   vấn chọn hoa, tặng quà,... cho các dịp lễ hội và các sự kiện của .\r\nChúng tôi giao hoa miễn phí trong nội thành TP.Hồ Chí Minh 24h/24h theo yêu cầu. Chúng tôi sẵn sàng giao hoa vào tối hôm   trước hoặc sáng sớm hôm sau nhằm giúp quý vị gửi gắm được những   thông điệp yêu thương của mình đến cho người nhận.</p>\r\n<p>Vào   những ngày lễ như Tết Nguyên Đán, Lễ Tình Nhân, Quốc Tế Phụ Nữ, Nhà   Giáo Việt Nam,... giá sẽ tăng từ 10-30% cho mỗi sản phẩm. Do nguyên liệu   hoa đầu vào tăng cao trong các ngày đó.</p>\r\n<p>Chúng tôi chân thành cảm ơn quý khách đã sử dụng dịch vụ. Chúng tôi thường xuyên có những chương trình khuyến mãi   hấp dẫn và luôn có những chính sách ưu đãi cho các   doanh nghiệp đặt hoa định kỳ thường xuyên.</p>\r\n<p>&nbsp;</p>\r\n\r\n', '2013-09-15', 240000, 'binh10.jpg', NULL, 33, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham_hinh`
--

CREATE TABLE `sanpham_hinh` (
  `id_hinh` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `urlHinh` varchar(150) NOT NULL,
  `stt` int(11) NOT NULL DEFAULT '1',
  `anhien` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUser` int(11) NOT NULL,
  `HoTen` varchar(100) NOT NULL DEFAULT '',
  `Password` varchar(50) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL DEFAULT '',
  `NgayDangKy` date NOT NULL DEFAULT '0000-00-00',
  `idGroup` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idUser`, `HoTen`, `Password`, `salt`, `DiaChi`, `DienThoai`, `Email`, `NgayDangKy`, `idGroup`) VALUES
(21, 'Gia Hu', '0b6ac8483a67d87bcb169c11dbd4c81b', 'adf', '123 meo meo chấm cơm', '0912345678', 'giahu@localhost.com', '2009-01-22', 0),
(20, 'Tí', '9f7aef6b6fbe7688a7263147bad40298', '4fu', '456, abc chấm  cơm chấm vê en', '089874563', 'ti@localhost.com', '2009-01-20', 1),
(22, 'Tèo', 'abd41b95693c52a6507b32762a79710c', '8hu', '789 gia hu chấm vê en', '32648372', 'teo@localhost.com', '2009-02-07', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`iddh`);

--
-- Indexes for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`idChiTiet`);

--
-- Indexes for table `lh_users`
--
ALTER TABLE `lh_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idLoai`);

--
-- Indexes for table `phuongthucthanhtoan`
--
ALTER TABLE `phuongthucthanhtoan`
  ADD PRIMARY KEY (`idpttt`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`);

--
-- Indexes for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  ADD PRIMARY KEY (`id_hinh`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `iddh` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `idChiTiet` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lh_users`
--
ALTER TABLE `lh_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idLoai` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `sanpham_hinh`
--
ALTER TABLE `sanpham_hinh`
  MODIFY `id_hinh` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
