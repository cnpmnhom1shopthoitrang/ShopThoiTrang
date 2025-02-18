use master
go
Create database [QLSHOP]
go
USE [QLSHOP]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MACHITIET] [int] IDENTITY(1,1) NOT NULL,
	[MASANPHAM] [int] NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIABAN] [int] NULL,
	[TONGTIEN] [int] NULL,
	[KHUYENMAI] [int] NULL,
	[MAHOADON] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MACHITIET] ASC,
	[MAHOADON] ASC,
	[MASANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHOADON] [int] IDENTITY(1,1) NOT NULL,
	[NGAYTAO] [date] NULL,
	[THANHTIEN] [int] NULL,
	[MANHANVIEN] [int] NOT NULL,
	[MAKHACHHANG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHOADON] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKHACHHANG] [int] IDENTITY(1,1) NOT NULL,
	[TENKHACHHANG] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[NGAYSINH] [date] NULL,
	[SDT] [varchar](11) NULL,
	[EMAIL] [varchar](20) NULL,
	[HINHANH] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAKHACHHANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAISANPHAM]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOAISANPHAM](
	[MALOAISANPHAM] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAISANPHAM] [nvarchar](50) NULL,
	[HINHANH] [varchar](50) NULL,
	[MOTA] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MALOAISANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANHANVIEN] [int] IDENTITY(1,1) NOT NULL,
	[TENNHANVIEN] [nvarchar](50) NULL,
	[NGAYSINH] [date] NULL,
	[GIOITINH] [nvarchar](10) NULL,
	[SDT] [varchar](11) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[CMND] [varchar](12) NULL,
	[LUONG] [float] NULL,
	[HINHANH] [varchar](50) NULL,
	[NGAYVAOLAM] [date] NULL,
	[TINHTRANG] [nvarchar](20) NULL,
	[EMAIL] [varchar](20) NULL,
	[CHUCVU] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MASANPHAM] [int] IDENTITY(1,1) NOT NULL,
	[TENSANPHAM] [nvarchar](150) NULL,
	[SOLUONGTON] [int] NULL,
	[DONGIA] [int] NULL,
	[DONVITINH] [varchar](50) NULL,
	[TRANGTHAI] [bit] NULL,
	[HINHANH] [varchar](50) NULL,
	[MOTA] [nvarchar](max) NULL,
	[MAVACH] [varchar](50) NULL,
	[MALOAISANPHAM] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MASANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAIKHOANNHANVIEN]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAIKHOANNHANVIEN](
	[MATAIKHOAN] [int] IDENTITY(1,1) NOT NULL,
	[NGAYTAO] [date] NULL,
	[TENTAIKHOAN] [varchar](20) NULL,
	[MATKHAU] [varchar](20) NULL,
	[TRANGTHAI] [bit] NULL,
	[MANHANVIEN] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MATAIKHOAN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[View_HoaDon]    Script Date: 5/18/2021 10:34:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_HoaDon]
AS
SELECT dbo.HOADON.MAHOADON, dbo.HOADON.NGAYTAO, dbo.HOADON.THANHTIEN, dbo.KHACHHANG.TENKHACHHANG, dbo.NHANVIEN.TENNHANVIEN
FROM   dbo.HOADON INNER JOIN
             dbo.KHACHHANG ON dbo.HOADON.MAKHACHHANG = dbo.KHACHHANG.MAKHACHHANG INNER JOIN
             dbo.NHANVIEN ON dbo.HOADON.MANHANVIEN = dbo.NHANVIEN.MANHANVIEN


GO
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] ON 

INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (76, 123, 6, 265000, 1590000, 0, 22)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (88, 199, 6, 415000, 2490000, 0, 19)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (90, 115, 9, 299000, 2691000, 0, 19)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (91, 134, 1, 379000, 379000, 0, 19)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (101, 166, 22, 279000, 6138000, 0, 22)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (111, 65, 5, 335000, 1675000, 0, 21)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (117, 192, 4, 379000, 1516000, 0, 22)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (125, 183, 15, 325000, 4875000, 0, 19)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (130, 53, 17, 435000, 7395000, 0, 21)
INSERT [dbo].[CHITIETHOADON] ([MACHITIET], [MASANPHAM], [SOLUONG], [DONGIABAN], [TONGTIEN], [KHUYENMAI], [MAHOADON]) VALUES (134, 113, 13, 410000, 5330000, 0, 21)
SET IDENTITY_INSERT [dbo].[CHITIETHOADON] OFF
SET IDENTITY_INSERT [dbo].[HOADON] ON 

INSERT [dbo].[HOADON] ([MAHOADON], [NGAYTAO], [THANHTIEN], [MANHANVIEN], [MAKHACHHANG]) VALUES (19, CAST(0x87420B00 AS Date), 10435000, 5, 8)
INSERT [dbo].[HOADON] ([MAHOADON], [NGAYTAO], [THANHTIEN], [MANHANVIEN], [MAKHACHHANG]) VALUES (20, CAST(0x87420B00 AS Date), 0, 7, 5)
INSERT [dbo].[HOADON] ([MAHOADON], [NGAYTAO], [THANHTIEN], [MANHANVIEN], [MAKHACHHANG]) VALUES (21, CAST(0x87420B00 AS Date), 14400000, 6, 5)
INSERT [dbo].[HOADON] ([MAHOADON], [NGAYTAO], [THANHTIEN], [MANHANVIEN], [MAKHACHHANG]) VALUES (22, CAST(0x87420B00 AS Date), 9244000, 5, 7)
SET IDENTITY_INSERT [dbo].[HOADON] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (1, N'Vãng Lai', NULL, NULL, NULL, NULL, NULL, N'Male.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (2, N'Nguyễn Thị Lụa', N'190 Lê Trọng Tấn TPHCM', N'Nữ', CAST(0x73210B00 AS Date), N'0912783831', N'lua123@gmail.com', N'FeMale.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (3, N'Nguyễn Hữu Tuấn', N'123 Quận 1 TPHCM', N'Nam', CAST(0xD5220B00 AS Date), N'0912712367', N'tuan123@gmail.com', N'Male.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (4, N'Trần Thị Bình', N'38 Quận 10 TPHCM', N'Nữ', CAST(0xB61B0B00 AS Date), N'0912712234', N'binh123@gmail.com', N'FeMale.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (5, N'Nguyễn Thành Long', N'190 Quận Bình Thạnh TPHCM', N'Nam', CAST(0xE4180B00 AS Date), N'98126283831', N'long123@gmail.com', N'Male.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (6, N'Hồ Xuân Hương', N'19 Quận 10 TPHCM', N'Nữ', CAST(0x4C180B00 AS Date), N'0822783831', N'huong123@gmail.com', N'FeMale.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (7, N'Nguyễn Thành Phương', N'132 Quận Gò Vấp TPHCM', N'Nam', CAST(0x6D240B00 AS Date), N'199783831', N'phuong123@gmail.com', N'Male.jpg')
INSERT [dbo].[KHACHHANG] ([MAKHACHHANG], [TENKHACHHANG], [DIACHI], [GIOITINH], [NGAYSINH], [SDT], [EMAIL], [HINHANH]) VALUES (8, N'Hồng Đức', N'134 Quận Tân Phú TPHCM', N'Nam', CAST(0x60250B00 AS Date), N'8022783831', N'duc123@gmail.com', N'Male.jpg')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] ON 

INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (1, N'ÁO KHOÁC', N'jacket.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (2, N'ÁO SƠ MI', N'shirt.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (3, N'QUẦN JEAN', N'jeans.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (4, N'QUẦN DÀI', N'trousers.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (5, N'QUẦN SHORT', N'shorts.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (6, N'GIÀY NAM', N'sneakers.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (7, N'DÉP - SANDAL', N'sandals.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (8, N'BALO - TÚI', N'backpack.png', NULL)
INSERT [dbo].[LOAISANPHAM] ([MALOAISANPHAM], [TENLOAISANPHAM], [HINHANH], [MOTA]) VALUES (9, N'PHỤ KIỆN', N'accessories.jpg', NULL)
SET IDENTITY_INSERT [dbo].[LOAISANPHAM] OFF
SET IDENTITY_INSERT [dbo].[NHANVIEN] ON 

INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (1, N'Trần Thị Kim Loan', CAST(0xD7220B00 AS Date), N'Nữ', N'0912637381', N'192 Cộng Hòa TPHCM', N'291371823', 4000000, N'nvNu1.jpg', CAST(0x86410B00 AS Date), N'DangHoatDong', N'loan123@gmail.com', N'PhucVu')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (2, N'Quách Kim Vũ', CAST(0x4E200B00 AS Date), N'Nữ', N'0921812828', N'12 Quận 12 TPHCM', N'271281282', 4000000, N'nvNu2.jpg', CAST(0x86410B00 AS Date), N'DangHoatDong', N'Vu123@gmail.com', N'PhucVu')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (3, N'Ngô Minh Thư', CAST(0x0D220B00 AS Date), N'Nữ', N'0912637217', N'129 Quận 11 TPHCM', N'839121223', 4000000, N'nvNu3.jpg', CAST(0x86410B00 AS Date), N'DangHoatDong', N'thu123@gmail.com', N'PhucVu')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (4, N'Hồng Kim Tuyền', CAST(0x7F240B00 AS Date), N'Nữ', N'0912122281', N'13 Quận 7 TPHCM', N'182129123', 4000000, N'nvNu4.jpg', CAST(0x86410B00 AS Date), N'DangHoatDong', N'tuyen123@gmail.com', N'PhucVu')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (5, N'Nguyễn Minh Hồng', CAST(0xC5220B00 AS Date), N'Nữ', N'0912637381', N'192 Quận Tân Phú TPHCM', N'192303129', 6000000, N'nvNu5.jpg', CAST(0xE43F0B00 AS Date), N'DaNghi', N'hong123@gmail.com', N'ThuNgan')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (6, N'Trần Minh Tính', CAST(0xFF1C0B00 AS Date), N'Nam', N'0912183381', N'12 Quận Gò Vấp TPHCM', N'1920383811', 6000000, N'nvNam1.jpg', CAST(0x28400B00 AS Date), N'DangHoatDong', N'tinh123@gmail.com', N'ThuNgan')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (7, N'Nguyễn Thành Danh', CAST(0x6E1E0B00 AS Date), N'Nam', N'09121223381', N'11 Quận 5 TPHCM', N'910203333', 6000000, N'nvNam2.jpg', CAST(0x0D400B00 AS Date), N'DaNghi', N'danh123@gmail.com', N'ThuNgan')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (8, N'Võ Văn Thanh', CAST(0xBA190B00 AS Date), N'Nam', N'0912612812', N'131 Quận 9 TPHCM', N'012838920', 8000000, N'nvNam3.jpg', CAST(0x22400B00 AS Date), N'DangHoatDong', N'thanh123@gmail.com', N'QuanLy')
INSERT [dbo].[NHANVIEN] ([MANHANVIEN], [TENNHANVIEN], [NGAYSINH], [GIOITINH], [SDT], [DIACHI], [CMND], [LUONG], [HINHANH], [NGAYVAOLAM], [TINHTRANG], [EMAIL], [CHUCVU]) VALUES (9, N'Nguyễn Hữu Lộc', CAST(0x25140B00 AS Date), N'Nam', N'0926312121', N'118 Quận Tân Bình TPHCM', N'912001393', 6000000, N'nvNam4.jpg', CAST(0x18400B00 AS Date), N'DaNghi', N'loc123@gmail.com', N'ThuNgan')
SET IDENTITY_INSERT [dbo].[NHANVIEN] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (1, N'Áo khoác dù màu xanh', NULL, 299000, NULL, 1, N'aoKhoac1.jpg', N'Chất vải dù chống thắm nước thích hợp khi đi trời mưa phùn nhẹ. Chất liệu dày dặn cao cấp 2 lớp, lớp vải dù lót trong mau thoát mồ hôi khô thoáng khi mặc. Dây khóa nhẹ nhàng thuận tiện', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (2, N'Áo khoác dù màu đen Poly Spandex', NULL, 385000, NULL, 1, N'aoKhoac2.jpg', N'Chất vải dù chống thắm nước thích hợp khi đi trời mưa phùn nhẹ. Chất liệu dày dặn cao cấp 2 lớp, lớp vải dù lót trong mau thoát mồ hôi khô thoáng khi mặc. Dây khóa nhẹ nhàng thuận tiện', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (3, N'Áo khoác Kaki đen', NULL, 399000, NULL, 1, N'aoKhoac3.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc ', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (4, N'Áo khoác dù tiện lợi', NULL, 245000, NULL, 1, N'aoKhoac4.jpg', N'Chất liệu vải dù cao cấp không xù lông, không bạc màu, có khả năng chống nước, ngăn gió tuyệt đối, Màu sắc mới mẻ, đôc là phối dây kéo màu đen mang lại nét mạnh mẽ, cá tinh và phong cách cho các chàng trai', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (5, N'Áo khoác kaki chống tia UV', NULL, 349000, NULL, 1, N'aoKhoac5.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc ', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (6, N'Áo khoác kaki thông mình có bao tay', NULL, 249000, NULL, 1, N'aoKhoac6.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc ', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (7, N'Áo khoác vải Mini Zurry', 60, 245000, NULL, 1, N'aoKhoac7.jpg', N'Áo khoác dáng rộng, có mũ, tay dài, có túi kangaroo, khóa kéo phía trước.', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (8, N'Áo Khoác dù chống tia UV Trượt nước', 103, 289000, NULL, 1, N'aoKhoac8.jpg', N'Chất liệu vải dù cao cấp không xù lông, không bạc màu, có khả năng chống nước, ngăn gió tuyệt đối, Màu sắc mới mẻ, đôc là phối dây kéo màu đen mang lại nét mạnh mẽ, cá tinh và phong cách cho các chàng trai', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (9, N'Áo khoác kaki đen viền quản quang', 77, 449000, NULL, 1, N'aoKhoac9.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc ', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (10, N'Áo khoác dù chống UV Kháng khuẩn siêu nhẹ', 60, 319000, NULL, 1, N'aoKhoac10.jpg', N'Một chiếc áo khoác dù cao cấp, chất lượng nhưng giá cả rất phải chăng mà bất kỳ chàng trai nào khi khoác lên cũng mang lại vẻ đẹp trai, năng động và thật phong cách, thích hợp cho cả đi chơi, đi làm, du lịch...', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (11, N'Áo khoác vải Mini Zurry', NULL, 399000, NULL, 1, N'aoKhoac11.jpg', N'Áo khoác dáng rộng, có mũ, tay dài, có túi kangaroo, khóa kéo phía trước.', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (12, N'Áo khoác kaki trắng viền phản quang', NULL, 369000, NULL, 1, N'aoKhoac12.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc ', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (13, N'Áo khoác co dãn trắng chuyên thể thao', 82, 415000, NULL, 1, N'aoKhoac13.jpg', N'Chất vải co dãn chống thắm nước thích hợp khi đi trời mưa phùn nhẹ. Chất liệu dày dặn cao cấp 2 lớp, lớp vải co dãn lót trong mau thoát mồ hôi khô thoáng khi mặc. Dây khóa nhẹ nhàng thuận tiện', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (14, N'Áo khoác Classic quản quang', NULL, 429000, NULL, 1, N'aoKhoac14.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (15, N'Áo khoác Classic trượt nước chống thấm', NULL, 359000, NULL, 1, N'aoKhoac15.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (16, N'Áo Khoác Classic Đơn Giản Universal 4 Element M3', NULL, 349000, NULL, 1, N'aoKhoac16.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (17, N'Áo Khoác Classic Activewear M5', NULL, 279000, NULL, 1, N'aoKhoac17.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (18, N'Áo Khoác Classic Đơn Giản M9', NULL, 299000, NULL, 1, N'aoKhoac18.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (19, N'Áo Khoác Classic Đơn Giản Universal 4 Element M2 ', 22, 389000, NULL, 1, N'aoKhoac19.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (20, N'Áo Khoác Classic Thiên Nhiên Kì Vĩ', 76, 449000, NULL, 1, N'aoKhoac20.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (21, N'Áo Khoác Classic Y Original Logo 10 Ver1', 31, 359000, NULL, 1, N'aoKhoac21.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (22, N'Áo Khoác Classic Special D03', 28, 445000, NULL, 1, N'aoKhoac22.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (23, N'Áo Khoác Classic Đơn Giản M4', 72, 269000, NULL, 1, N'aoKhoac23.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (24, N'Áo Khoác Classic Đơn Giản 12VAHDT Kỳ Lau Vạn Định M1', 68, 449000, NULL, 1, N'aoKhoac24.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (25, N'Áo khoác Gin màu xanh nhạt M2', 81, 399000, NULL, 1, N'aoKhoac25.jpg', N'Chất liệu vải dù cao cấp không xù lông, không bạc màu, có khả năng chống nước, ngăn gió tuyệt đối, Màu sắc mới mẻ, đôc là phối dây kéo màu đen mang lại nét mạnh mẽ, cá tinh và phong cách cho các chàng trai', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (26, N'Áo Khoác Classic 12VAHDT Văn Hiến Chi Bang Ver2', 91, 305000, NULL, 1, N'aoKhoac26.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (27, N'Áo Khoác Classic Đơn Giản 12VAHDT Kỳ Lau Vạn Định Ver1', 57, 445000, NULL, 1, N'aoKhoac27.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (28, N'Áo Khoác Classic Thiên Nhiên Kì Vĩ Darkness Hunters Ver1', 56, 259000, NULL, 1, N'aoKhoac28.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (29, N'Áo Khoác Classic Activewear M5', 59, 445000, NULL, 1, N'aoKhoac29.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (30, N'Áo Khoác kakki màu cam sinh động', 75, 439000, NULL, 1, N'aoKhoac30.jpg', N'Áo được sản xuất từ vải kaki loại 1, không xù, không phai màu, không gây rát da, Chuẩn form, thoải mái, màu sắc trung, tôn dáng, phù hợp với mọi lứa tuổi, Sản phẩm thiết kế đa dạng, nhiều màu sắc, tạo sự khoẻ khoắn, cá tính cho người mặc', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (31, N'Áo Khoác Hoodie Universal Astronaut J02', 64, 401000, NULL, 1, N'aoKhoac31.jpg', N'Chất liệu: Vảy Cá Chân Cua, Thành phần: 100% Cotton,  Khả năng giữ ấm tuyệt vời, Kiểu dệt French Terry thoáng khí, Thiết kế năng động, trẻ trung.', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (32, N'Áo Khoác Classic Thiên Nhiên Kì Vĩ Darkness Hunters Ver1', 59, 365000, NULL, 1, N'aoKhoac32.jpg', N'Chất liệu: Vải Kaki không thun, Thành phần: 100% cotton, Nhiều túi tiện dụng, Bên trong lót vải dù, Họa tiết kỹ thuật đắp da', N'1', 1)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (33, N'Áo Sơ Mi Tay Dài Đơn Giản M1', 48, 365000, NULL, 1, N'aoThun1.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (34, N'Áo Sơ Mi Tay Dài Đơn Giản N01', 67, 299000, NULL, 1, N'aoThun2.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (35, N'Sơ Mi Tay Dài Đơn Giản Bamboo M10', 69, 287000, NULL, 1, N'aoThun3.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (36, N'Áo Sơ Mi Tay Dài Đơn Giản M2', 66, 405000, NULL, 1, N'aoThun4.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (37, N'Sơ Mi Tay Dài Đơn Giản Bamboo M11', 93, 315000, NULL, 1, N'aoThun5.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (38, N'Sơ Mi Tay Dài Đơn Giản Bamboo M12', 74, 279000, NULL, 1, N'aoThun6.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (39, N'Sơ MI Tay Ngắn Ít nhăn dễ ủi U12', 58, 279000, NULL, 1, N'aoThun7.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (40, N'Sơ Mi Tay Dài Thời Thượng M3', 98, 259000, NULL, 1, N'aoThun8.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (41, N'Sơ Mi Tay Dài Đơn Giản M4', 54, 339000, NULL, 1, N'aoThun9.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (42, N'Sơ Mi Tay Dài Đơn Giản Bamboo M13', 67, 345000, NULL, 1, N'aoThun10.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (43, N'Sơ Mi Tay Dài Đơn Giản M5', 95, 449000, NULL, 1, N'aoThun11.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (44, N'Sơ Mi Tay Ngắn Đơn Giản M6', 98, 429000, NULL, 1, N'aoThun12.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (45, N'Sơ Mi Tay Ngắn Đơn Giản M7', 90, 379000, NULL, 1, N'aoThun13.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (46, N'Sơ Mi Tay Ngắn Đơn Giản M8', 72, 279000, NULL, 1, N'aoThun14.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (47, N'Sơ Mi Tay Dài Caro C1', 73, 335000, NULL, 1, N'aoThun15.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (48, N'Sơ Mi Tay Dài Đơn Giản M9', 91, 419000, NULL, 1, N'aoThun16.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (49, N'Sơ Mi Tay Dài Đơn Giản M10', 81, 399000, NULL, 1, N'aoThun17.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (50, N'Sơ Mi Tay Dài Gin Xanh G2', 86, 379000, NULL, 1, N'aoThun18.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (51, N'Sơ Mi Tay Dài Đơn Giản U11', 95, 280000, NULL, 1, N'aoThun19.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (52, N'Sơ Mi Tay Dài Đơn Giản T1', 96, 399000, NULL, 1, N'aoThun20.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (53, N'Sơ Mi Tay Ngắn Đơn Giản D1', 79, 435000, NULL, 1, N'aoThun21.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (54, N'Sơ Mi Tay Dài Đơn Giản T2', 85, 299000, NULL, 1, N'aoThun22.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (55, N'Sơ Mi Tay Ngắn Đơn Giản T3', 87, 280000, NULL, 1, N'aoThun23.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (56, N'Sơ Mi Tay Dài Đơn Giản Bamboo M14', 87, 379000, NULL, 1, N'aoThun24.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (57, N'Sơ Mi Tay Dài Special KM13', 72, 419000, NULL, 1, N'aoThun25.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (58, N'Sơ Mi Tay Dài Special H05', 92, 429000, NULL, 1, N'aoThun26.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (59, N'Sơ Mi Tay Dài Đơn Giản T4', 77, 319000, NULL, 1, N'aoThun27.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (60, N'Sơ Mi Tay Ngắn Đơn Giản T5', 57, 405000, NULL, 1, N'aoThun28.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (61, N'Sơ Mi Cổ Lãnh Tụ Special H02', 52, 288000, NULL, 1, N'aoThun29.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (62, N'Sơ Mi Tay Ngắn Đơn Giản T6', 62, 419000, NULL, 1, N'aoThun30.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (63, N'Sơ Mi Tay Dài Caro C2', 58, 409000, NULL, 1, N'aoThun31.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (64, N'Sơ Mi Tay Dài Đơn Giản Bamboo M15', 92, 379000, NULL, 1, N'aoThun32.jpg', N'Chất liệu: 55%Linen, 45%Cotton, Đặc tính: Chống thấm nước tốt, tránh bám bụi,  đường may tinh tế làm tăng thêm vẻ sang trọng cho bạn về mặt thẩm mỹ, thu hút mọi góc nhìn từ mọi người xung quanh', N'1', 2)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (65, N'Balo Fit Special H69', 69, 335000, NULL, 1, N'balo1.jpg', N'Vải chính: 600D Two Tone Đen, Lót 210D PU Đen + Nylex Đen, Lưới Air mesh + PE foam 5mm + Đệm EVA 3mm, Thiết kế ngăn chính rộng với sức chứa lớn, Nhiều ngăn tiện dụng, ', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (66, N'Balo Fit Đơn Giản H57', 93, 250000, NULL, 1, N'balo2.jpg', N'Vải chính: 600D Two Tone Đen, Lót 210D PU Đen + Nylex Đen, Lưới Air mesh + PE foam 5mm + Đệm EVA 3mm, Thiết kế ngăn chính rộng với sức chứa lớn, Nhiều ngăn tiện dụng, ', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (67, N'Balo Fit Đơn Giản H59', 58, 289000, NULL, 1, N'balo3.jpg', N'Vải chính: 600D Two Tone Đen, Lót 210D PU Đen + Nylex Đen, Lưới Air mesh + PE foam 5mm + Đệm EVA 3mm, Thiết kế ngăn chính rộng với sức chứa lớn, Nhiều ngăn tiện dụng, ', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (68, N'Túi Đeo Đơn Giản B28', 50, 280000, NULL, 1, N'balo4.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (69, N'Túi Đeo Special B22', 58, 320000, NULL, 1, N'balo5.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (70, N'Balo Big Y Original H80 ', 88, 270000, NULL, 1, N'balo6.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (71, N'Balo Big Y Original H81', 80, 325000, NULL, 1, N'balo7.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (72, N'Balo Big Đơn Giản H70 ', 91, 409000, NULL, 1, N'balo8.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (73, N'Balo Big Y Original H72', 84, 445000, NULL, 1, N'balo9.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (74, N'Balo Big Y Original H82', 69, 439000, NULL, 1, N'balo10.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (75, N'Túi Đeo Đơn Giản B30', 74, 305000, NULL, 1, N'balo11.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (76, N'Balo Fit Đơn Giản H55', 96, 357000, NULL, 1, N'balo12.jpg', N'Vải chính: 600D Two Tone Đen, Lót 210D PU Đen + Nylex Đen, Lưới Air mesh + PE foam 5mm + Đệm EVA 3mm, Thiết kế ngăn chính rộng với sức chứa lớn, Nhiều ngăn tiện dụng, ', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (77, N'Balo Fit Đơn Giản H60', 53, 429000, NULL, 1, N'balo13.jpg', N'Vải chính: 600D Two Tone Đen, Lót 210D PU Đen + Nylex Đen, Lưới Air mesh + PE foam 5mm + Đệm EVA 3mm, Thiết kế ngăn chính rộng với sức chứa lớn, Nhiều ngăn tiện dụng, ', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (78, N'Túi Đeo Special B38', 52, 319000, NULL, 1, N'balo14.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (79, N'Balo Big Y Original H82', 77, 289000, NULL, 1, N'balo15.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (80, N'Túi Đeo Special B39', 79, 350000, NULL, 1, N'balo16.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (81, N'Balo Big Y Original H83', 85, 449000, NULL, 1, N'balo17.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (82, N'Túi Đeo Special B37', 59, 250000, NULL, 1, N'balo18.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (83, N'Balo Big Y Original H84', 77, 269000, NULL, 1, N'balo19.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (84, N'Túi Đeo Đơn Giản B33', 62, 329000, NULL, 1, N'balo20.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (85, N'Balo Big Y Original H85', 76, 315000, NULL, 1, N'balo21.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (86, N'Balo Big Y Original H86', 70, 265000, NULL, 1, N'balo22.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (87, N'Balo Big Y Original H87', 60, 335000, NULL, 1, N'balo23.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (88, N'Balo Big Y Original H88', 58, 265000, NULL, 1, N'balo24.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (89, N'Balo Big Y Original H89', 62, 269000, NULL, 1, N'balo25.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (90, N'Túi Đeo 12VAHDT Văn Hiến Chi Bang Ver2', 95, 250000, NULL, 1, N'balo26.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (91, N'Túi Đeo 12VAHDT Văn Hiến Chi Bang Ver1', 88, 459000, NULL, 1, N'balo27.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (92, N'Balo Big Y Original H90', 73, 355000, NULL, 1, N'balo28.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (93, N'Balo Big Y Original H91', 65, 430000, NULL, 1, N'balo29.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (94, N'Balo Big Y Original H92', 99, 445000, NULL, 1, N'balo30.jpg', N'Quai đeo có lớp đệm dày, giúp êm ái, chống đau lưng khi đeo. Chất liệu: Chất liệu : 840HD + Lót 210D, Lưng balo là 1 tấm EVA chống sốc cao cấp', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (95, N'Túi Đeo Thiên Nhiên Kì Vĩ Hand Drawn Ver1', 73, 339000, NULL, 1, N'balo31.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (96, N'Túi Đeo Special B23', 73, 405000, NULL, 1, N'balo32.jpg', N'Dây đeo biến hình tiện lợi. Túi có thể dùng đeo chéo hoặc đeo ngang hông, Ngăn chính siêu rộng đựng được rất nhiều vật dụng cá nhân: ví - kính - điện thoại..v.v.., Ngăn phụ bên trong và sau lưng túi tiện dụng.', N'1', 8)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (97, N'Dép Đơn Giản A14', 76, 360000, NULL, 1, N'dep1.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (98, N'Dép Special BD-A25', 59, 289000, NULL, 1, N'dep2.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (99, N'Sandal Đế Cao Đơn Giản B16', 92, 379000, NULL, 1, N'dep3.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
GO
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (100, N'Dép Special A12', 72, 289000, NULL, 1, N'dep4.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (101, N'Dép Special A11', 56, 419000, NULL, 1, N'dep5.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (102, N'Sandal Đế Cao Đơn Giản M7', 72, 379000, NULL, 1, N'dep6.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (103, N'Dép Special A14', 63, 315000, NULL, 1, N'dep7.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (104, N'Dép Special A15', 95, 375000, NULL, 1, N'dep8.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (105, N'Dép Special BD-A53', 75, 359000, NULL, 1, N'dep9.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (106, N'Sandal Đế Cao Đơn Giản B16', 97, 369000, NULL, 1, N'dep10.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (107, N'Sandal Đế Cao Đơn Giản B17', 83, 379000, NULL, 1, N'dep11.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (108, N'Sandal Đế Cao Đơn Giản B18', 63, 420000, NULL, 1, N'dep12.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (109, N'Sandal Đế Cao Đơn Giản B19', 68, 379000, NULL, 1, N'dep13.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (110, N'Sandal Đế Cao Đơn Giản B20', 57, 399000, NULL, 1, N'dep14.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (111, N'Dép Thần Cổ Đại Valknut Ver1', 51, 250000, NULL, 1, N'dep15.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (112, N'Sandal Đế Cao Đơn Giản B21', 55, 349000, NULL, 1, N'dep16.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (113, N'Sandal Đế Cao Đơn Giản B22', 62, 410000, NULL, 1, N'dep17.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (114, N'Sandal Đế Cao Đơn Giản B23', 53, 249000, NULL, 1, N'dep18.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (115, N'Sandal Đế Thấp Special B07', 93, 299000, NULL, 1, N'dep19.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (116, N'Sandal Đế Cao Đơn Giản B15', 55, 279000, NULL, 1, N'dep20.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (117, N'Sandal Đế Thấp Đơn Giản C08', 54, 355000, NULL, 1, N'dep21.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (118, N'Sandal Đế Thấp Đơn Giản C09', 53, 295000, NULL, 1, N'dep22.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (119, N'Sandal Đế Thấp Đơn Giản C10', 99, 399000, NULL, 1, N'dep23.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (120, N'Sandal Đế Thấp Đơn Giản C11', 84, 390000, NULL, 1, N'dep24.jpg', N'Đế cao lên đến 4cm: Hack chiều cao "khủng", Thiết kế velcro (băng dính) ling động điều chỉnh form giày phù hợp với mọi bàn chân. Đế Phylon siêu nhẹ', N'1', 7)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (121, N'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver1', 59, 445000, NULL, 1, N'giayNam1.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (122, N'Giày Tây Cột Dây Đơn Giản AM10', 76, 435000, NULL, 1, N'giayNam2.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (123, N'Giày Casual Đơn Giản M6', 87, 265000, NULL, 1, N'giayNam3.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (124, N'Giày Tây Lười Đơn Giản BD-A49', 84, 450000, NULL, 1, N'giayNam4.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (125, N'Giày Casual Đơn Giản M3', 57, 445000, NULL, 1, N'giayNam5.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (126, N'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver4', 74, 289000, NULL, 1, N'giayNam6.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (127, N'Giày Casual Thần Cổ Đại Anubis Ver1', 82, 379000, NULL, 1, N'giayNam7.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (128, N'Giày Tây Cột Dây Đơn Giản AM03', 71, 350000, NULL, 1, N'giayNam8.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (129, N'Giày Tây Cột Dây Đơn Giản AM04', 74, 445000, NULL, 1, N'giayNam9.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (130, N'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver2', 70, 379000, NULL, 1, N'giayNam10.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (131, N'Giày Casual Đơn Giản M1', 70, 345000, NULL, 1, N'giayNam11.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (132, N'Giày Tây Cột Dây Đơn Giản AM05', 76, 330000, NULL, 1, N'giayNam12.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (133, N'Giày Casual 12VAHDT Văn Hiến Chi Bang Ver3', 70, 339000, NULL, 1, N'giayNam13.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (134, N'Giày Đơn Giản A66', 73, 379000, NULL, 1, N'giayNam14.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái vận động, không còn nỗi lo hầm chân khó chịu', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (135, N'Giày Special AG06', 79, 279000, NULL, 1, N'giayNam15.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái vận động, không còn nỗi lo hầm chân khó chịu', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (136, N'Giày Casual 12VAHDT Vạn Xuân Kiến Quốc Ver3', 82, 400000, NULL, 1, N'giayNam16.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (137, N'Giày Đơn Giản X01', 88, 259000, NULL, 1, N'giayNam17.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (138, N'Giày Đơn Giản X02', 57, 400000, NULL, 1, N'giayNam18.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (139, N'Giày Special BD-A42', 100, 425000, NULL, 1, N'giayNam19.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (140, N'Giày Đơn Giản X03', 76, 379000, NULL, 1, N'giayNam20.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (141, N'Giày Tây Cột Dây Đơn Giản AM09', 54, 315000, NULL, 1, N'giayNam21.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (142, N'Giày Casual 12VAHDT Vạn Xuân Kiến Quốc Ver1', 80, 349000, NULL, 1, N'giayNam22.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (143, N'Giày Đơn Giản AD04 BD-A62', 61, 379000, NULL, 1, N'giayNam23.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (144, N'Giày Tây Cột Dây Đơn Giản AM10', 77, 299000, NULL, 1, N'giayNam24.jpg', N'SANG TRỌNG - LỊCH LÃM, Giày cột dây (Oxford), Chất liệu: Da bò thật, Đế: Cao su', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (145, N'Giày Casual Universal 4 Element Ver1', 95, 379000, NULL, 1, N'giayNam25.jpg', N'Chất liệu:Vật tư chính: Microfiber, Lót Mousse 3mm +Mesh, Dây đai cotton in chữ, dế cao su, Logo VHCB thêu kim tuyến và đen, Dây giày cotton tròn 4mm trắng', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (146, N'Giày Special M4', 96, 299000, NULL, 1, N'giayNam26.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (147, N'Giày Đơn Giản A73', 71, 350000, NULL, 1, N'giayNam27.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (148, N'Giày Đơn Giản A74', 59, 450000, NULL, 1, N'giayNam28.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (149, N'Giày Đơn Giản A75', 78, 349000, NULL, 1, N'giayNam29.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (150, N'Giày Đơn Giản A76', 90, 379000, NULL, 1, N'giayNam30.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (151, N'Giày Đơn Giản A77', 60, 340000, NULL, 1, N'giayNam31.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (152, N'Giày Special AD08', 91, 390000, NULL, 1, N'giayNam32.jpg', N'Đế giày được làm từ chất liệu Phylon siêu nhẹ, Cao su đế có lớp chống trơn trượt. Phần giày sử dụng loại sợi polyester 100% không bị co khi giặt, Sử dụng vải Knit tạo form tốt, ôm chân. Vải lưới thoáng mát, thoải mái', N'1', 6)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (153, N'Vớ Đơn Giản V02', 69, 349000, NULL, 1, N'phuKien1.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (154, N'Vớ Đơn Giản V03', 97, 325000, NULL, 1, N'phuKien2.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (155, N'Găng Tay Đơn Giản A01', 99, 310000, NULL, 1, N'phuKien3.jpg', N'Chất liệu: 90% cotton 10% spandex, Thiết kế xỏ ngón tay giúp bạn dễ dàng điều khiển phương tiện. Form ôm sát cánh tay vừa vặn phong cách trẻ trung, cá tính cho người dùng. Chất liệu dày dặn, co giãn đa chiều, độ đàn hồi cao.', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (156, N'Underwear Đơn Giản A02', 82, 279000, NULL, 1, N'phuKien4.jpg', N'Chất liệu: 90% cotton 10% spandex, Thiết kế xỏ ngón tay giúp bạn dễ dàng điều khiển phương tiện. Form ôm sát cánh tay vừa vặn phong cách trẻ trung, cá tính cho người dùng. Chất liệu dày dặn, co giãn đa chiều, độ đàn hồi cao.', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (157, N'Vớ Đơn Giản V04', 63, 380000, NULL, 1, N'phuKien5.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (158, N'Ví Đơn Giản V14', 94, 420000, NULL, 1, N'phuKien6.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (159, N'Găng Tay Đơn Giản A02', 60, 445000, NULL, 1, N'phuKien7.jpg', N'Chất liệu: 90% cotton 10% spandex, Thiết kế xỏ ngón tay giúp bạn dễ dàng điều khiển phương tiện. Form ôm sát cánh tay vừa vặn phong cách trẻ trung, cá tính cho người dùng. Chất liệu dày dặn, co giãn đa chiều, độ đàn hồi cao.', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (160, N'Nón Đơn Giản A21', 87, 389000, NULL, 1, N'phuKien8.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (161, N'Vớ Đơn Giản V05', 64, 350000, NULL, 1, N'phuKien9.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (162, N'Nón Phản Quang A22', 71, 350000, NULL, 1, N'phuKien10.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (163, N'Ví Đơn Giản V15', 63, 439000, NULL, 1, N'phuKien11.jpg', N'Chất liệu : Da Bò Thật 100%, Thiết kế: Thời trang, phong cách, linh động, lịch lãm,…, Màu sắc đa dạng trẻ trung, sang trọng, Sở hữu các tính năng hoàn hảo: chống nước, chống trầy xước, chống bụi,…', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (164, N'Ví Đơn Giản V16', 88, 430000, NULL, 1, N'phuKien12.jpg', N'Chất liệu : Da Bò Thật 100%, Thiết kế: Thời trang, phong cách, linh động, lịch lãm,…, Màu sắc đa dạng trẻ trung, sang trọng, Sở hữu các tính năng hoàn hảo: chống nước, chống trầy xước, chống bụi,…', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (165, N'Nón 12VAHDT Kỳ Lau Vạn Định Ver1', 73, 399000, NULL, 1, N'phuKien13.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (166, N'Dây Nịt Đơn Giản M15', 77, 279000, NULL, 1, N'phuKien14.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (167, N'Dây Nịt Đơn Giản M16', 55, 340000, NULL, 1, N'phuKien15.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (168, N'Dây Nịt Đơn Giản M17', 96, 260000, NULL, 1, N'phuKien16.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (169, N'Dây Nịt Đơn Giản M18', 90, 325000, NULL, 1, N'phuKien17.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (170, N'Nón 12VAHDT Kỳ Lau Vạn Định Ver2', 51, 379000, NULL, 1, N'phuKien18.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (171, N'Ví Thần Cổ Đại Anubis Ver1', 66, 345000, NULL, 1, N'phuKien19.jpg', N'Chất liệu : Da Bò Thật 100%, Thiết kế: Thời trang, phong cách, linh động, lịch lãm,…, Màu sắc đa dạng trẻ trung, sang trọng, Sở hữu các tính năng hoàn hảo: chống nước, chống trầy xước, chống bụi,…', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (172, N'Dây Nịt Đơn Giản M18', 56, 265000, NULL, 1, N'phuKien20.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (173, N'Dây Nịt Đơn Giản M20', 67, 275000, NULL, 1, N'phuKien21.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (174, N'Dây Nịt Đơn Giản M21', 97, 425000, NULL, 1, N'phuKien22.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (175, N'Nón Thiên Nhiên Kì Vĩ Darkness Hunters Ver1', 81, 449000, NULL, 1, N'phuKien23.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton, Thành phần: 100% cotton, Phản quang hình in dơi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (176, N'Túi Giặt M2', 96, 420000, NULL, 1, N'phuKien24.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (177, N'Dây Nịt Đơn Giản M22', 88, 445000, NULL, 1, N'phuKien25.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (178, N'Dây Nịt Đơn Giản M23', 54, 429000, NULL, 1, N'phuKien26.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (179, N'Nón Thần Cổ Đại Horus Ver1', 87, 360000, NULL, 1, N'phuKien27.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton, Thành phần: 100% cotton, Phản quang hình in dơi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (180, N'Dây Nịt Đơn Giản M24', 66, 300000, NULL, 1, N'phuKien28.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (181, N'Dây Nịt Đơn Giản M25', 83, 335000, NULL, 1, N'phuKien29.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (182, N'Dây Nịt Đơn Giản M26', 98, 260000, NULL, 1, N'phuKien30.jpg', N'Da Bò Thật 100%, thiết kế độc đáo và sáng tạo, Mặt khóa chất liệu hợp kim kẽm nguyên khối được gia công tỷ mỷ, sáng bóng và không rỉ sét', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (183, N'Nón 12VAHDT Vạn Xuân Kiến Quốc Ver2', 85, 325000, NULL, 1, N'phuKien31.jpg', N'Chất liệu : Kaki, Thành phần: 100% cotton, Thành phần: 100% cotton, Phản quang hình in dơi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (184, N'Vớ Đơn Giản V09', 91, 320000, NULL, 1, N'phuKien32.jpg', N'Thành phần: 90% Cotton 10% Spandex, Mềm mại, bó sát cổ chân, Thoáng khí, Co giãn, đàn hồi cao, Khử mùi', N'1', 9)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (185, N'Quần Dài Tây Đơn Giản HG1', 89, 300000, NULL, 1, N'quanDai1.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (186, N'Quần Dài Tây Đơn Giản HG2', 79, 250000, NULL, 1, N'quanDai2.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (187, N'Quần Dài Jogger Đơn Giản M3', 51, 310000, NULL, 1, N'quanDai3.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (188, N'Quần Dài Tây Đơn Giản HG3', 72, 420000, NULL, 1, N'quanDai4.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (189, N'Quần Dài Jogger Special Drama Ver1', 96, 379000, NULL, 1, N'quanDai5.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (190, N'Quần Dài Tây Đơn Giản HG4', 71, 250000, NULL, 1, N'quanDai6.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (191, N'Quần Dài Tây Đơn Giản HG5', 95, 370000, NULL, 1, N'quanDai7.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (192, N'Quần Dài Jogger Đơn Giản G01', 51, 379000, NULL, 1, N'quanDai8.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (193, N'Quần Dài Jogger Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M2', 86, 335000, NULL, 1, N'quanDai9.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (194, N'Quần Dài Jogger Đơn Giản 12VAHDT Văn Hiến Chi Bang M2', 62, 360000, NULL, 1, N'quanDai10.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (195, N'Quần Dài Jogger Special G01', 69, 430000, NULL, 1, N'quanDai11.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (196, N'Quần Dài Jogger Special A05', 94, 270000, NULL, 1, N'quanDai12.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (197, N'Quần Dài Tây Đơn Giản HG6', 79, 345000, NULL, 1, N'quanDai13.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (198, N'Quần Dài Jogger Special C06', 66, 315000, NULL, 1, N'quanDai14.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (199, N'Quần Dài Jogger Special C07', 74, 415000, NULL, 1, N'quanDai15.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
GO
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (200, N'Quần Dài Jogger Special C08', 94, 405000, NULL, 1, N'quanDai16.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (201, N'Quần Dài Jogger Đơn Giản 12VAHDT Văn Hiến Chi Bang M3', 60, 370000, NULL, 1, N'quanDai17.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (202, N'Quần Dài Tây Đơn Giản HG7', 70, 425000, NULL, 1, N'quanDai18.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (203, N'Quần Dài Tây Đơn Giản HG8', 67, 305000, NULL, 1, N'quanDai19.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (204, N'Quần Dài Jogger Special G02', 99, 379000, NULL, 1, N'quanDai20.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (205, N'Quần Dài Jogger Special G05', 63, 430000, NULL, 1, N'quanDai21.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (206, N'Quần Dài Tây Đơn Giản HG9', 89, 435000, NULL, 1, N'quanDai22.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (207, N'Quần Dài Jogger Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M1', 92, 250000, NULL, 1, N'quanDai23.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (208, N'Quần Dài Jogger Special G04', 61, 300000, NULL, 1, N'quanDai24.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (209, N'Quần Dài Jogger Special C07', 84, 399000, NULL, 1, N'quanDai25.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (210, N'Quần Dài Jogger Special C08', 95, 299000, NULL, 1, N'quanDai26.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (211, N'Quần Dài Jogger Special C09', 97, 335000, NULL, 1, N'quanDai27.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (212, N'Quần Dài Tây Đơn Giản HG10', 52, 435000, NULL, 1, N'quanDai28.jpg', N'Chất liệu: cotton cao cấp mang đến sự mềm mịn và dễ chịu dù mặc cả ngày, Form: Slim Fit ôm vừa cơ thể tạo vẻ ngoài chỉn chu, thanh lịch, Thiết kế: cực thích với lưng phối thun, vừa co giãn tốt vừa đem lại sự thoải mái cho người mặc. ', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (213, N'Quần Dài Jogger Special A10', 63, 325000, NULL, 1, N'quanDai29.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (214, N'Quần Dài Jogger Special C11', 66, 379000, NULL, 1, N'quanDai30.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (215, N'Quần Dài Jogger Special C12', 75, 405000, NULL, 1, N'quanDai31.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (216, N'Quần Dài Jogger Special C13', 76, 350000, NULL, 1, N'quanDai32.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 4)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (217, N'Quần Dài Jean Slimfit Đơn Giản M3', 69, 375000, NULL, 1, N'quanJean1.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (218, N'Quần Dài Jean Slimfit Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc Ver2', 88, 250000, NULL, 1, N'quanJean2.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (219, N'Quần Dài Jean Slimfit Đơn Giản M4', 59, 320000, NULL, 1, N'quanJean3.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (220, N'Quần Dài Jean Slimfit Đơn Giản M5', 56, 365000, NULL, 1, N'quanJean4.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (221, N'Quần Dài Jean Slimfit Đơn Giản M6', 64, 430000, NULL, 1, N'quanJean5.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (222, N'Quần Dài Jean Slimfit Đơn Giản M7', 64, 359000, NULL, 1, N'quanJean6.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (223, N'Quần Dài Jean Slimfit Đơn Giản M8', 58, 315000, NULL, 1, N'quanJean7.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (224, N'Quần Dài Jean Slimfit Đơn Giản M9', 66, 260000, NULL, 1, N'quanJean8.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (225, N'Quần Dài Jean Slimfit Đơn Giản M10', 70, 400000, NULL, 1, N'quanJean9.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (226, N'Quần Dài Jean Slimfit Đơn Giản M11', 65, 420000, NULL, 1, N'quanJean10.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (227, N'Quần Dài Jean Slimfit Đơn Giản M12', 77, 445000, NULL, 1, N'quanJean11.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (228, N'Quần Dài Jean Slimfit Đơn Giản M13', 75, 310000, NULL, 1, N'quanJean12.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (229, N'Quần Dài Jean Slimfit Đơn Giản M14', 57, 250000, NULL, 1, N'quanJean13.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (230, N'Quần Dài Jean Slimfit Đơn Giản M15', 82, 420000, NULL, 1, N'quanJean14.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (231, N'Quần Dài Jean Slimfit Đơn Giản M16', 69, 305000, NULL, 1, N'quanJean15.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (232, N'Quần Dài Jean Slimfit Đơn Giản M17', 92, 259000, NULL, 1, N'quanJean16.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (233, N'Quần Dài Jean Slimfit Đơn Giản M18', 80, 250000, NULL, 1, N'quanJean17.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (234, N'Quần Dài Jean Slimfit Đơn Giản M19', 77, 330000, NULL, 1, N'quanJean18.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (235, N'Quần Dài Jean Slimfit Đơn Giản M20', 66, 279000, NULL, 1, N'quanJean19.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (236, N'Quần Dài Jogger Special A07', 73, 270000, NULL, 1, N'quanJean20.jpg', N'Chất liệu:MINI ZURRY, Thành Phần:  94% COTTON, Thân thiện, Thấm hút thoát ẩm, Mềm mại, Ít nhăn, Họa tiết in dẻo', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (237, N'Quần Dài Jean Slimfit Đơn Giản M21', 94, 420000, NULL, 1, N'quanJean21.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (238, N'Quần Dài Jean Slimfit Đơn Giản M22', 91, 290000, NULL, 1, N'quanJean22.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (239, N'Quần Dài Jean Slimfit Đơn Giản M23', 77, 285000, NULL, 1, N'quanJean23.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (240, N'Quần Dài Jean Slimfit Đơn Giản M24', 57, 425000, NULL, 1, N'quanJean24.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (241, N'Quần Dài Jean Slimfit Đơn Giản M25', 87, 299000, NULL, 1, N'quanJean25.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (242, N'Quần Dài Jean Slimfit Đơn Giản M26', 73, 250000, NULL, 1, N'quanJean26.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (243, N'Quần Dài Jean Slimfit Đơn Giản M27', 67, 440000, NULL, 1, N'quanJean27.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (244, N'Quần Dài Jean Slimfit Đơn Giản M28', 84, 300000, NULL, 1, N'quanJean28.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (245, N'Quần Dài Jean Slimfit Đơn Giản M29', 62, 329000, NULL, 1, N'quanJean29.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (246, N'Quần Dài Jean Slimfit Đơn Giản M30', 50, 445000, NULL, 1, N'quanJean30.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (247, N'Quần Dài Jean Slimfit Đơn Giản M31', 59, 335000, NULL, 1, N'quanJean31.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (248, N'Quần Dài Jean Slimfit Đơn Giản M32', 69, 389000, NULL, 1, N'quanJean32.jpg', N'Chất liệu: Jean Cotton, Thành phần: 99% cotton 1% spandex,  Mềm mại, Thoáng mát, vải cao cấp, mềm mịn, co giãn tốt, mặc cực thoải mái, Không ra màu, không xù lông,thấm hút mồ hôi, Có thể mặc đi làm, đi chơi, dễ phối đồ, không kén người mặc', N'1', 3)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (249, N'Quần Short Đơn Giản M1', 57, 350000, NULL, 1, N'quanShort1.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (250, N'Quần Short Đơn Giản M2', 97, 325000, NULL, 1, N'quanShort2.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (251, N'Quần Short Đơn Giản M3', 96, 345000, NULL, 1, N'quanShort3.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (252, N'Quần Short Đơn Giản M4', 52, 350000, NULL, 1, N'quanShort4.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (253, N'Quần Short Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M2', 85, 275000, NULL, 1, N'quanShort5.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (254, N'Quần Short Đơn Giản M5', 90, 390000, NULL, 1, N'quanShort6.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (255, N'Quần Short Đơn Giản M6', 85, 350000, NULL, 1, N'quanShort7.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (256, N'Quần Short Đơn Giản 12VAHDT Vạn Xuân Kiến Quốc M1', 97, 425000, NULL, 1, N'quanShort8.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (257, N'Quần Short Đơn Giản 12VAHDT Văn Hiến Chi Bang M3', 61, 405000, NULL, 1, N'quanShort9.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (258, N'Quần Short Special B1ST13', 70, 260000, NULL, 1, N'quanShort10.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (259, N'Quần Short Đơn Giản B2KM01', 81, 250000, NULL, 1, N'quanShort11.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (260, N'Quần Short Special A10', 81, 260000, NULL, 1, N'quanShort12.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (261, N'Quần Short Đơn Giản M7', 55, 379000, NULL, 1, N'quanShort13.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (262, N'Quần Short Special A10', 66, 445000, NULL, 1, N'quanShort14.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (263, N'Quần Short Đơn Giản M8', 90, 325000, NULL, 1, N'quanShort15.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (264, N'Quần Short Special A11', 98, 318000, NULL, 1, N'quanShort16.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (265, N'Quần Short Special C11', 63, 420000, NULL, 1, N'quanShort17.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (266, N'Quần Short Special B1A63', 69, 270000, NULL, 1, N'quanShort18.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (267, N'Quần Short Đơn Giản M9', 59, 380000, NULL, 1, N'quanShort19.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (268, N'Quần Short Special C02', 57, 250000, NULL, 1, N'quanShort20.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (269, N'Quần Short Special C03', 63, 350000, NULL, 1, N'quanShort21.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (270, N'Quần Short Đơn Giản B2HG03', 70, 320000, NULL, 1, N'quanShort22.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (271, N'Quần Short Special B1A64', 91, 279000, NULL, 1, N'quanShort23.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (272, N'Quần Short Special B1A65', 65, 345000, NULL, 1, N'quanShort24.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (273, N'Quần Short Special B1A66', 82, 365000, NULL, 1, N'quanShort25.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (274, N'Quần Short Đơn Giản 12VAHDT Văn Hiến Chi Bang M4', 57, 270000, NULL, 1, N'quanShort26.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (275, N'Quần Short Đơn Giản ST09', 53, 399000, NULL, 1, N'quanShort27.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (276, N'Quần Short Đơn Giản ST010', 61, 410000, NULL, 1, N'quanShort28.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (277, N'Quần Short Special B1A67', 75, 380000, NULL, 1, N'quanShort29.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (278, N'Quần Short Special B1A68', 70, 399000, NULL, 1, N'quanShort30.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (279, N'Quần Short Special B1A69', 59, 420000, NULL, 1, N'quanShort31.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
INSERT [dbo].[SANPHAM] ([MASANPHAM], [TENSANPHAM], [SOLUONGTON], [DONGIA], [DONVITINH], [TRANGTHAI], [HINHANH], [MOTA], [MAVACH], [MALOAISANPHAM]) VALUES (280, N'Quần Short Đơn Giản ST11', 54, 440000, NULL, 1, N'quanShort32.jpg', N'Chất liệu: Jean Cotton, Thành phần: 100% cotton, Độ bền cao, Mặc rất thoải mái. Màu sắc: đa dạng gam màu trendy của năm, chưa từng lỗi mode, kết hợp áo thun graphic hoặc tanktop cực đẹp.', N'1', 5)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
SET IDENTITY_INSERT [dbo].[TAIKHOANNHANVIEN] ON 

INSERT [dbo].[TAIKHOANNHANVIEN] ([MATAIKHOAN], [NGAYTAO], [TENTAIKHOAN], [MATKHAU], [TRANGTHAI], [MANHANVIEN]) VALUES (1, CAST(0x79420B00 AS Date), N'TAIKHOAN1', N'123456', 1, 5)
INSERT [dbo].[TAIKHOANNHANVIEN] ([MATAIKHOAN], [NGAYTAO], [TENTAIKHOAN], [MATKHAU], [TRANGTHAI], [MANHANVIEN]) VALUES (2, CAST(0x79420B00 AS Date), N'TAIKHOAN2', N'123456', 1, 6)
INSERT [dbo].[TAIKHOANNHANVIEN] ([MATAIKHOAN], [NGAYTAO], [TENTAIKHOAN], [MATKHAU], [TRANGTHAI], [MANHANVIEN]) VALUES (3, CAST(0x79420B00 AS Date), N'TAIKHOAN3', N'123456', 1, 7)
INSERT [dbo].[TAIKHOANNHANVIEN] ([MATAIKHOAN], [NGAYTAO], [TENTAIKHOAN], [MATKHAU], [TRANGTHAI], [MANHANVIEN]) VALUES (4, CAST(0x79420B00 AS Date), N'TAIKHOAN4', N'123456', 1, 9)
SET IDENTITY_INSERT [dbo].[TAIKHOANNHANVIEN] OFF
/****** Object:  Index [UQ__TAIKHOAN__7E46DD90B63E38CB]    Script Date: 5/18/2021 10:34:38 PM ******/
ALTER TABLE [dbo].[TAIKHOANNHANVIEN] ADD UNIQUE NONCLUSTERED 
(
	[MANHANVIEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MAHOADON])
REFERENCES [dbo].[HOADON] ([MAHOADON])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SP] FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SANPHAM] ([MASANPHAM])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CTHD_SP]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_KH] FOREIGN KEY([MAKHACHHANG])
REFERENCES [dbo].[KHACHHANG] ([MAKHACHHANG])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_KH]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HD_NV] FOREIGN KEY([MANHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([MANHANVIEN])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HD_NV]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_SP_LSP] FOREIGN KEY([MALOAISANPHAM])
REFERENCES [dbo].[LOAISANPHAM] ([MALOAISANPHAM])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_SP_LSP]
GO
ALTER TABLE [dbo].[TAIKHOANNHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_TK_NV] FOREIGN KEY([MANHANVIEN])
REFERENCES [dbo].[NHANVIEN] ([MANHANVIEN])
GO
ALTER TABLE [dbo].[TAIKHOANNHANVIEN] CHECK CONSTRAINT [FK_TK_NV]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "HOADON"
            Begin Extent = 
               Top = 9
               Left = 57
               Bottom = 206
               Right = 298
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "KHACHHANG"
            Begin Extent = 
               Top = 9
               Left = 355
               Bottom = 206
               Right = 599
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "NHANVIEN"
            Begin Extent = 
               Top = 9
               Left = 656
               Bottom = 206
               Right = 880
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_HoaDon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_HoaDon'
GO

------------
--Trigger cập nhật trạng thái tài khoản của nhân viên cửa hàng
create trigger update_statusAccount
on NHANVIEN
for update,delete
as
	begin
		if N'DaHoatDong' not in (select tinhTrang from inserted)
			begin
				update TAIKHOANNHANVIEN
				set TRANGTHAI = 0
				where MANHANVIEN in (select maNhanVien from inserted)
			end
		if N'DaHoatDong' not in (select tinhTrang from deleted)
			begin
				update TAIKHOANNHANVIEN
				set TRANGTHAI = 0
				where MANHANVIEN in (select maNhanVien from deleted)
			end
	end
go 
--Trigger cập nhật Chi tiết hóa đơn, sản phẩm và hóa đơn
CREATE trigger update_DonGiaChiTiet
on ChitietHoaDon
for insert,update,delete
as
	begin
		update CHITIETHOADON
		--Lay don gia ban san pham khi them CTHD
		set DONGIABAN = (Select dongia from SanPham,inserted
							where SANPHAM.MASANPHAM = inserted.MASANPHAM)
		From ChitietHoadon join inserted
		on CHITIETHOADON.MACHITIET = inserted.MACHITIET
		--Cap nhat tong tien CTHD khi them
		update CHITIETHOADON
		set TongTien = (select ChitietHoaDon.DONGIABAN*ChitietHoaDon.SOLUONG-ChitietHoaDon.KHUYENMAI
							from inserted
							where ChitietHoaDon.MACHITIET = inserted.MACHITIET
						)
		From ChitietHoadon join inserted
		on CHITIETHOADON.MACHITIET = inserted.MACHITIET
	end
go
--Trigger cập nhật thành tiền hóa đơn
create trigger capNhatHoaDon
on ChiTietHoaDon
for insert,delete,update
as	
	begin
		--Cap nhat thanh tien hoa don khi them CTHD
		declare @num int = (Select sum(Chitiethoadon.tongTien) from CHITIETHOADON
							where Chitiethoadon.mahoadon in (select MAHOADON from inserted))
		declare @ma int = (select mahoadon from inserted)
		declare @ma1 int = (select mahoadon from deleted)
		declare @num1 int = (Select sum(Chitiethoadon.tongTien) from CHITIETHOADON
							where Chitiethoadon.mahoadon in (select MAHOADON from deleted))
		update Hoadon
		set thanhTien= @num
		where MAHOADON = @ma
		update Hoadon
		set thanhTien= @num1
		where MAHOADON = @ma1
	end
GO 
--Trigger cập nhật số lượng tồn sản phẩm
create trigger capNhatSLT
on Chitiethoadon
for insert,delete,update
as	
	begin
		
		declare @num int = (Select sum(Chitiethoadon.SOLUONG) from CHITIETHOADON
							where Chitiethoadon.MaSanPham in (select MaSanPham from inserted))
		declare @ma int = (select mahoadon from inserted)
		declare @ma1 int = (select mahoadon from deleted)
		declare @num1 int = (Select sum(Chitiethoadon.Soluong) from CHITIETHOADON
							where Chitiethoadon.MaSanPham in (select MaSanPham from deleted))
		update SanPham
		set SOLUONGTON= SOLUONGTON - @num
		where MASANPHAM = @ma
		update SANPHAM
		set SOLUONGTON= SOLUONGTON + @num1
		where MASANPHAM = @ma1
	end
GO 
-------------