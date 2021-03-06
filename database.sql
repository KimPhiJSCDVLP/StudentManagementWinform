USE [S4_N10_QLDiemSV]
GO
/****** Object:  User [evolution]    Script Date: 2/23/2021 10:26:48 PM ******/
CREATE USER [evolution] FOR LOGIN [evolution] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [evolution]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GiangVien](
	[IDGV] [char](10) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[IDKhoa] [char](10) NULL,
 CONSTRAINT [IDGV_pk] PRIMARY KEY CLUSTERED 
(
	[IDGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocKy]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocKy](
	[IDHocKy] [char](10) NOT NULL,
	[ThoiGianBatDau] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
 CONSTRAINT [IDHocKy_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocKy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HocPhan]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HocPhan](
	[IDHocPhan] [char](10) NOT NULL,
	[TenHocPhan] [nvarchar](100) NULL,
	[SoTiet] [float] NULL,
	[SoTC] [int] NULL,
	[HinhThucThi] [nvarchar](50) NULL,
 CONSTRAINT [IDMonHoc_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocPhan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaHP]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaHP](
	[IDSinhVien] [char](10) NOT NULL,
	[IDHocPhan] [char](10) NOT NULL,
	[DiemCC] [float] NULL,
	[DiemTX] [float] NULL,
	[DiemThi] [float] NULL,
	[DiemHe10] [float] NULL,
	[DiemHe4] [float] NULL,
	[DiemChu] [char](10) NULL,
 CONSTRAINT [IDSinhVien_IDHocPhan_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocPhan] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KetQuaLopHP]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaLopHP](
	[IDSinhVien] [char](10) NOT NULL,
	[IDLopHP] [char](10) NOT NULL,
	[DiemCC] [float] NULL,
	[DiemTX] [float] NULL,
	[DiemThi] [float] NULL,
	[DiemHe10] [float] NULL,
	[DiemHe4] [float] NULL,
	[DiemChu] [char](10) NULL,
 CONSTRAINT [IDSinhVien_IDLopHP_pk] PRIMARY KEY CLUSTERED 
(
	[IDLopHP] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Khoa](
	[IDKhoa] [char](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [IDKhoa_pk] PRIMARY KEY CLUSTERED 
(
	[IDKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lop]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[IDLop] [char](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
	[SiSo] [int] NULL,
	[NienKhoa] [varchar](50) NULL,
	[IDKhoa] [char](10) NULL,
 CONSTRAINT [IDLop_pk] PRIMARY KEY CLUSTERED 
(
	[IDLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LopHP]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LopHP](
	[IDLopHP] [char](10) NOT NULL,
	[PhongHoc] [nvarchar](50) NULL,
	[NgayThi] [datetime] NULL,
	[TongSoSV] [int] NULL,
	[IDHocPhan] [char](10) NULL,
	[IDHocKy] [char](10) NULL,
	[IDGV] [char](10) NULL,
 CONSTRAINT [IDLopHP_pk] PRIMARY KEY CLUSTERED 
(
	[IDLopHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[IDSinhVien] [char](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[QueQuan] [nvarchar](200) NULL,
	[DiaChiHT] [nvarchar](200) NULL,
	[KhoaDKi] [char](10) NULL,
	[SoTCDaDat] [int] NULL,
	[SoTCDaDKi] [int] NULL,
	[DiemTichLuy] [float] NULL,
	[IDLop] [char](10) NULL,
 CONSTRAINT [IDSinhVien_pk] PRIMARY KEY CLUSTERED 
(
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TongKetKy]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TongKetKy](
	[IDSinhVien] [char](10) NOT NULL,
	[IDHocKy] [char](10) NOT NULL,
	[DiemTBC] [float] NULL,
	[SoTCDKi] [int] NULL,
	[SoTCNo] [int] NULL,
	[XepLoai] [nvarchar](50) NULL,
 CONSTRAINT [IDSinhVien_IDHocKy_pk] PRIMARY KEY CLUSTERED 
(
	[IDHocKy] ASC,
	[IDSinhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[DANH_SACH_DIEM_CHU_HP_TRR]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DANH_SACH_DIEM_CHU_HP_TRR] AS
SELECT K.IDSinhVien ,HoTen, NgaySinh, GioiTinh, DiemChu 
FROM SinhVien S, KetQuaLopHP K,LopHP L, HocPhan H
WHERE S.IDSinhVien=K.IDSinhVien AND K.IDLopHP=L.IDLopHP AND L.IDHocPhan=H.IDHocPhan AND TenHocPhan LIKE N'Toán rời rạc'


GO
/****** Object:  View [dbo].[DANH_SACH_DIEM_HP_TTCSDL]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[DANH_SACH_DIEM_HP_TTCSDL] AS
SELECT kq.IDSinhVien, HoTen, DiemCC, DiemTX,DiemThi, DiemHe10 ,L.TenLop,K.TenKhoa
FROM SinhVien S, KetQuaHP kq, HocPhan H,Lop L,Khoa K
WHERE S.IDSinhVien=kq.IDSinhVien AND kq.IDHocPhan=H.IDHocPhan AND S.IDLop = L.IDLop AND L.IDKhoa = K.IDKhoa AND TenHocPhan LIKE N'Thực tập cơ sở dữ liệu'


GO
/****** Object:  View [dbo].[SINHVIEN_TruotMon_VIEW]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SINHVIEN_TruotMon_VIEW] AS
SELECT SinhVien.IDSinhVien as 'Mã Sinh Viên', 
		SinhVien.HoTen as 'Họ tên sinh viên', 
		LopHP.IDHocPhan as 'Mã lớp học phần ', 
		DiemCC 'Điểm chuyên cần', 
		DiemTX 'Điểm thường xuyên', 
		DiemThi 'Điểm thi',
		DiemHe10 'Điểm hệ 10',
		DiemHe4 'Điểm hệ 4', 
		DiemChu 'Điểm hệ chữ'
from KetQuaLopHP, LopHP, SinhVien
where KetQuaLopHP.IDLopHP = LopHP.IDLopHP 
	and IDHocPhan ='MH02'
	and KetQuaLopHP.IDSinhVien = SinhVien.IDSinhVien

GO
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'GV01      ', N'Hoàng Anh', N'CNTT      ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'GV02      ', N'Khuất Văn Thành', N'CNTT      ')
INSERT [dbo].[GiangVien] ([IDGV], [TenGV], [IDKhoa]) VALUES (N'GV03      ', N'Lưu Hồng Dũng', N'CNTT      ')
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'1         ', CAST(N'2019-08-13' AS Date), CAST(N'2020-11-24' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'2         ', CAST(N'2018-01-15' AS Date), CAST(N'2019-05-11' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'3         ', CAST(N'2016-08-13' AS Date), CAST(N'2017-11-24' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'4         ', CAST(N'2017-01-15' AS Date), CAST(N'2017-05-11' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'5         ', CAST(N'2017-08-13' AS Date), CAST(N'2017-11-24' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'6         ', CAST(N'2018-01-15' AS Date), CAST(N'2018-05-11' AS Date))
INSERT [dbo].[HocKy] ([IDHocKy], [ThoiGianBatDau], [ThoiGianKetThuc]) VALUES (N'7         ', CAST(N'2019-08-13' AS Date), CAST(N'2019-11-24' AS Date))
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH01      ', N'Toán Rời Rạc', 70, 3, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH02      ', N'Thực Tập Nhóm', 66, 3, N'Vấn Ðáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH03      ', N'Dung sai & BTL', 80, 3, N'Vấn Đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH04      ', N'Giải Tích 2', 80, 4, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH05      ', N'Vật Lý Đại Cương 1', 80, 4, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH06      ', N'Giải Tích 1', 80, 4, N'Viết')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH07      ', N'Thực Tập CSDL', 70, 3, N'Vấn Đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH08      ', N'Mạng Máy Tính', 80, 3, N'Vấn Đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH09      ', N'Cơ Sở Dữ Liệu', 80, 4, N'Vấn Đáp')
INSERT [dbo].[HocPhan] ([IDHocPhan], [TenHocPhan], [SoTiet], [SoTC], [HinhThucThi]) VALUES (N'MH10      ', N'Lý Thuyết Hệ Điều Hành', 70, 3, N'Viết')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH01      ', 5, 6, 7.5, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH01      ', 5, 6, 7, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH01      ', 5, 6, 7, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH01      ', 5, 5, 10, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH01      ', 10, 10, 10, 10, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150001  ', N'MH02      ', 3, 4, 5, NULL, NULL, NULL)
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH02      ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH02      ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH02      ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH02      ', 5, 6, 9, 7.7, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH02      ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH03      ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH03      ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH03      ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH03      ', 5, 7, 8, 7.4, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH03      ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH04      ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH04      ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH04      ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH04      ', 5, 6, 10, 8.3, 3.5, N'B+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH04      ', 10, 10, 10, 10, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH05      ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH05      ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH05      ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH05      ', 6, 6, 9, 7.799999999999998, 3, N'B         ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH05      ', 10, 10, 9, 9.3999999999999986, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'MH06      ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'MH06      ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH06      ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'MH06      ', 9, 8, 10, 9.3, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'MH06      ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaHP] ([IDSinhVien], [IDHocPhan], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'MH08      ', 3, 4, 4, NULL, NULL, NULL)
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP01     ', 5, 6, 7, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP01     ', 5, 6, 7, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP01     ', 5, 6, 7, 6.5, 2.5, N'C+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP01     ', 5, 5, 10, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP01     ', 10, 10, 10, 10, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP02     ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP02     ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP02     ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP02     ', 5, 6, 9, 7.7, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP02     ', 9, 9, 9, 9, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP03     ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP03     ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP03     ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP03     ', 5, 7, 8, 7.4, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP03     ', 8, 8, 8, 8, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP04     ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP04     ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP04     ', 7, 8, 7, 7.3, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP04     ', 5, 6, 10, 8.3, 3.5, N'B+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP04     ', 10, 10, 10, 10, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP05     ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP05     ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP05     ', 5, 9, 9, 8.6, 3.7, N'A         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP05     ', 6, 6, 9, 7.799999999999998, 3, N'B         ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP05     ', 10, 10, 9, 9.3999999999999986, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150077  ', N'LHP06     ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150123  ', N'LHP06     ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150124  ', N'LHP06     ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16150348  ', N'LHP06     ', 9, 8, 10, 9.3, 4, N'A+        ')
INSERT [dbo].[KetQuaLopHP] ([IDSinhVien], [IDLopHP], [DiemCC], [DiemTX], [DiemThi], [DiemHe10], [DiemHe4], [DiemChu]) VALUES (N'16151234  ', N'LHP06     ', 9, 9, 10, 9.6, 4, N'A+        ')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'CDT       ', N'Kỹ thuật cơ điện tử')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'DKTDH     ', N'Kỹ thuật điều khiển và tự động hóa')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'DTVT      ', N'Kỹ thuật điện tử - viễn thông')
INSERT [dbo].[Khoa] ([IDKhoa], [TenKhoa]) VALUES (N'KHMT      ', N'Khoa học máy tính')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'CDT15     ', N'Cơ điện tử 15', NULL, N'2016-2021', N'CDT       ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'CNTT15    ', N'Công nghệ thông tin 15', NULL, N'2016-2021', N'CNTT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'CNTT16    ', N'Công nghệ thông tin 16', NULL, N'2017-2022', N'CNTT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'DTVT16    ', N'Điện tử viễn thông 16', NULL, N'2017-2022', N'DTVT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'KHMT15    ', N'Khoa học máy tính 15', NULL, N'2016-2021', N'CNTT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'KHMT16    ', N'Khoa học máy tính 16', NULL, N'2017-2022', N'CNTT      ')
INSERT [dbo].[Lop] ([IDLop], [TenLop], [SiSo], [NienKhoa], [IDKhoa]) VALUES (N'MMT15     ', N'Mạng máy tính 15', NULL, N'2016-2021', N'CNTT      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP01     ', N'H9301', CAST(N'2018-01-01 00:00:00.000' AS DateTime), NULL, N'MH01      ', N'1         ', N'GV01      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP02     ', N'H9501', CAST(N'2017-01-01 00:00:00.000' AS DateTime), NULL, N'MH02      ', N'1         ', N'GV02      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP03     ', N'H9302', CAST(N'2019-08-01 00:00:00.000' AS DateTime), NULL, N'MH03      ', N'1         ', N'GV03      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP04     ', N'H5311', CAST(N'2018-04-07 00:00:00.000' AS DateTime), NULL, N'MH04      ', N'1         ', N'GV03      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP05     ', N'H5211', CAST(N'2018-07-07 00:00:00.000' AS DateTime), NULL, N'MH05      ', N'1         ', N'GV03      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP06     ', N'H9302', CAST(N'2019-08-01 00:00:00.000' AS DateTime), NULL, N'MH06      ', N'1         ', N'GV01      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP07     ', N'H9334', CAST(N'2019-04-01 00:00:00.000' AS DateTime), NULL, N'MH09      ', N'1         ', N'GV02      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP08     ', N'H5321', CAST(N'2019-04-05 00:00:00.000' AS DateTime), NULL, N'MH08      ', N'1         ', N'GV03      ')
INSERT [dbo].[LopHP] ([IDLopHP], [PhongHoc], [NgayThi], [TongSoSV], [IDHocPhan], [IDHocKy], [IDGV]) VALUES (N'LHP09     ', N'H1234', CAST(N'2020-04-04 00:00:00.000' AS DateTime), NULL, N'MH07      ', N'1         ', N'GV02      ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'14150012  ', N'Kim Dung2ư213', CAST(N'1997-07-07' AS Date), N'Nữ', N'Vĩnh Yên', N'Hoàng Quốc Việt', NULL, 0, 0, 0, N'CNTT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150001  ', N'Việt Hoàng', CAST(N'1998-07-07' AS Date), N'Nam', N'Vĩnh Phúc', N'Mai Dịch', NULL, 0, 0, 0, N'DTVT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150012  ', N'Thanh Tùng', CAST(N'1998-08-07' AS Date), N'Nam', N'Hải Dương', N'Trần Cung', NULL, 0, 0, 0, N'CNTT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150023  ', N'Hoàng Anh', CAST(N'1998-04-12' AS Date), N'Nam', N'Hà Nội', N'Hà Nội', NULL, 0, 0, 0, N'KHMT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150076  ', N'Nguyễn Việt Anh', CAST(N'1998-01-29' AS Date), N'Nam', N'Việt Trì', N'Trần Cung', NULL, 0, 0, 0, N'CNTT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150077  ', N'Kim Anh', CAST(N'1998-01-29' AS Date), N'Nữ', N'Nam Định', N'KTX Mỹ Đình', NULL, 39, 42, 3.4051282051282055, N'MMT15     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150123  ', N'Lê Kim Phi', CAST(N'1997-12-12' AS Date), N'Nam', N'Phú Thọ', N'Trần Cung', NULL, 27, 30, 3.1407407407407408, N'MMT15     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150124  ', N'Lê Quốc Phong', CAST(N'1998-07-01' AS Date), N'Nam', N'Yên Bái', N'Trần Cung', NULL, 39, 39, 3.3666666666666671, N'MMT15     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16150348  ', N'Liên Doãn', CAST(N'1998-04-02' AS Date), N'Nữ', N'Nam Định', N'Trần Cung', NULL, 21, 21, 3.3571428571428572, N'MMT15     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16151234  ', N'Hương Giang', CAST(N'1998-07-01' AS Date), N'Nữ', N'Văn Chấn', N'KTX Mỹ Đình', NULL, 21, 21, 3.9285714285714288, N'MMT15     ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16152232  ', N'Hải Đăng', CAST(N'1998-07-07' AS Date), N'Nam', N'Hà Nội', N'Trần Cung', NULL, 0, 0, 0, N'KHMT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'16161602  ', N'Đăng Chu', CAST(N'1998-09-07' AS Date), N'Nam', N'Hà Nội', N'Hà Đông', NULL, 0, 0, 0, N'KHMT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'17150012  ', N'Linh Nguyễn', CAST(N'1999-09-09' AS Date), N'Nam', N'Hưng Yên', N'Hoàng Quốc Việt', NULL, 0, 0, 0, N'CNTT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'17151101  ', N'Hoàng Tung', CAST(N'1998-08-08' AS Date), N'Nam', N'Hải Dương', N'Cổ Nhuế', NULL, 0, 0, 0, N'CNTT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'17151122  ', N'Hoàng Thương', CAST(N'1997-02-01' AS Date), N'Nữ', N'Vĩnh Phúc', N'Mai Dịch', NULL, 0, 0, 0, N'DTVT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'17151998  ', N'Hồ Hà', CAST(N'1999-02-01' AS Date), N'Nữ', N'Quảng Ninh', N'Cầu Giấy', NULL, 0, 0, 0, N'CNTT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'17155454  ', N'Phương Dung', CAST(N'1999-07-07' AS Date), N'Nữ', N'Lào Cai', N'Cổ Nhuế', NULL, 0, 0, 0, N'DTVT16    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'214r324321', N'sadas', CAST(N'2020-04-06' AS Date), N'Nam', N'đá', N'ád', NULL, NULL, NULL, NULL, N'CNTT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'34214234  ', N'Nguyễn Thị B', CAST(N'2020-04-06' AS Date), N'Khác', N'adsa', N'ád', NULL, NULL, NULL, NULL, N'CNTT15    ')
INSERT [dbo].[SinhVien] ([IDSinhVien], [HoTen], [NgaySinh], [GioiTinh], [QueQuan], [DiaChiHT], [KhoaDKi], [SoTCDaDat], [SoTCDaDKi], [DiemTichLuy], [IDLop]) VALUES (N'41234324  ', N'Nguyễn Quang Ngọc', CAST(N'1997-12-12' AS Date), N'Nam', N'Phú Thọ', N'Trần Cung', NULL, NULL, NULL, NULL, N'MMT15     ')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'14150012  ', N'1         ', NULL, NULL, 0, NULL)
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16150012  ', N'1         ', NULL, NULL, 0, N'TB')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16150077  ', N'1         ', 3.47, 21, 0, N'Giỏi')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16150123  ', N'1         ', 3.47, 21, 0, N'Giỏi')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16150124  ', N'1         ', 3.07, 21, 0, N'Khá')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16150348  ', N'1         ', 3.36, 21, 0, N'Giỏi')
INSERT [dbo].[TongKetKy] ([IDSinhVien], [IDHocKy], [DiemTBC], [SoTCDKi], [SoTCNo], [XepLoai]) VALUES (N'16151234  ', N'1         ', 3.93, 21, 0, N'Xuất sắc')
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [fk_IDKhoa_GV] FOREIGN KEY([IDKhoa])
REFERENCES [dbo].[Khoa] ([IDKhoa])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [fk_IDKhoa_GV]
GO
ALTER TABLE [dbo].[KetQuaHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocPhan_KQHP] FOREIGN KEY([IDHocPhan])
REFERENCES [dbo].[HocPhan] ([IDHocPhan])
GO
ALTER TABLE [dbo].[KetQuaHP] CHECK CONSTRAINT [fk_IDHocPhan_KQHP]
GO
ALTER TABLE [dbo].[KetQuaHP]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_KQHP] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[KetQuaHP] CHECK CONSTRAINT [fk_IDSinhVien_KQHP]
GO
ALTER TABLE [dbo].[KetQuaLopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDLopHP_KQLHP] FOREIGN KEY([IDLopHP])
REFERENCES [dbo].[LopHP] ([IDLopHP])
GO
ALTER TABLE [dbo].[KetQuaLopHP] CHECK CONSTRAINT [fk_IDLopHP_KQLHP]
GO
ALTER TABLE [dbo].[KetQuaLopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_KQLHP] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[KetQuaLopHP] CHECK CONSTRAINT [fk_IDSinhVien_KQLHP]
GO
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [fk_IDKhoa_Lop] FOREIGN KEY([IDKhoa])
REFERENCES [dbo].[Khoa] ([IDKhoa])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [fk_IDKhoa_Lop]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDGV_LHP] FOREIGN KEY([IDGV])
REFERENCES [dbo].[GiangVien] ([IDGV])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDGV_LHP]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocKy_LHP] FOREIGN KEY([IDHocKy])
REFERENCES [dbo].[HocKy] ([IDHocKy])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDHocKy_LHP]
GO
ALTER TABLE [dbo].[LopHP]  WITH CHECK ADD  CONSTRAINT [fk_IDHocPhan_LHP] FOREIGN KEY([IDHocPhan])
REFERENCES [dbo].[HocPhan] ([IDHocPhan])
GO
ALTER TABLE [dbo].[LopHP] CHECK CONSTRAINT [fk_IDHocPhan_LHP]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [fk_IDLop_SV] FOREIGN KEY([IDLop])
REFERENCES [dbo].[Lop] ([IDLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [fk_IDLop_SV]
GO
ALTER TABLE [dbo].[TongKetKy]  WITH CHECK ADD  CONSTRAINT [fk_IDHocKy_TKK] FOREIGN KEY([IDHocKy])
REFERENCES [dbo].[HocKy] ([IDHocKy])
GO
ALTER TABLE [dbo].[TongKetKy] CHECK CONSTRAINT [fk_IDHocKy_TKK]
GO
ALTER TABLE [dbo].[TongKetKy]  WITH CHECK ADD  CONSTRAINT [fk_IDSinhVien_TKK] FOREIGN KEY([IDSinhVien])
REFERENCES [dbo].[SinhVien] ([IDSinhVien])
GO
ALTER TABLE [dbo].[TongKetKy] CHECK CONSTRAINT [fk_IDSinhVien_TKK]
GO
/****** Object:  StoredProcedure [dbo].[bieumau_BangDiem_CaNhan]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[bieumau_BangDiem_CaNhan] 
	@idSV char(10)
as
begin
Declare @STT char(5), 
		@tensv nvarchar(50),
		@quequan nvarchar(50),
		@gioitinh nvarchar(50),
		@1Khoa nvarchar(50), 
		@1Lop nvarchar(30),
		@maMH char(10), 
		@ngaysinh datetime,
		@TenMH nvarchar(50),
		@soTiet int, 
		@soTC int,
		@diemCC float,
		@diemTX float,
		@diemThi float
		
select @tensv= SinhVien.HoTen, 
		@1Khoa=TenKhoa, 
		@1Lop = TenLop, 
		@quequan = SinhVien.QueQuan, 
		@gioitinh = SinhVien.GioiTinh, 
		@ngaysinh = SinhVien.NgaySinh
from SinhVien,Khoa,Lop
where SinhVien.IDSinhVien = @idSV
		and SinhVien.IDLop = Lop.IDLop and Lop.IDKhoa = Khoa.IDKhoa

DECLARE cur_sor CURSOR GLOBAL FOR  -- khai báo con trỏ cursorProduct	
SELECT KetQuaHP.IDHocPhan, HocPhan.TenHocPhan, HocPhan.SoTiet, HocPhan.SoTC, KetQuaHP.DiemCC, KetQuaHP.DiemTX, KetQuaHP.DiemThi
from KetQuaHP, HocPhan
where KetQuaHP.IDSinhVien = @idSV
	and KetQuaHP.IDHocPhan = HocPhan.IDHocPhan
	order by HocPhan.SoTC desc;

OPEN cur_sor     --mở con trỏ
print N' Học Viện Kỹ Thuật Quân Sự													        '
print N' Phòng Đào Tạo																	    ' 
PRINT N''
print N'								 BẢNG ĐIỂM CÁ NHÂN                                   '
PRINT N''
Print N' Họ và tên: ' + @tensv
--Print N'Ngày sinh: ' + @ngaysinh
Print N' Giới tính: ' + @gioitinh
Print N' Quê quán: ' + @quequan
print N' Khoa:'+@1Khoa+ N'                                   Lớp: '+ @1Lop
FETCH NEXT FROM cur_sor     -- Đọc dòng đầu tiên
INTO @maMH,@TenMH, @soTiet,@soTC,@diemCC, @diemTX, @diemThi
PRINT N''
PRINT N' ____________________________________________________________________________________________________'
print N'| STT | Mã môn học  |      Tên môn học      | Số tiết |  Số tín chỉ | Điểm CC | Điểm TX |  Điểm thi  |'
PRINT N' ----------------------------------------------------------------------------------------------------'

set @STT=1
WHILE (@@FETCH_STATUS = 0 )         --vòng lặp WHILE khi đọc Cursor thành công
	BEGIN
	--in kết quả
--PRINT N'________________________________________________________________________________________________________'
PRINT '|'+  CAST(@STT as nchar(5)) + '|' + CAST(@maMH as nchar(13)) + '|' +CAST (@TenMH as nchar(23))+'|' +CAST(@soTiet as nchar(9)) + '|' + CAST(@soTC as nchar(13)) + '|' + CAST(@diemCC as nchar(10)) + '|' + CAST(@diemTX as nchar(10) )+ '|' + CAST(@diemThi as nchar(10) )+ '|'
			if @@FETCH_STATUS <> 0 
			break
		set @STT=@STT+1
		FETCH NEXT FROM cur_sor -- Đọc dòng tiếp
			  INTO @maMH,@TenMH, @soTiet,@soTC,@diemCC, @diemTX, @diemThi
	END	
PRINT N' ----------------------------------------------------------------------------------------------------'

	CLOSE cur_sor              -- Đóng Cursor
	DEALLOCATE cur_sor			-- giải phóng tài nguyên
	end 


GO
/****** Object:  StoredProcedure [dbo].[DS_XLYEU]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DS_XLYEU] (@TenKhoa nvarchar(50)) AS BEGIN
SELECT S.IDSinhVien, HoTen, NgaySinh, TenLop
FROM SinhVien S, TongKetKy T, Lop L, Khoa K
WHERE S.IDSinhVien=T.IDSinhVien AND S.IDLop=L.IDLop AND L.IDKhoa=K.IDKhoa AND XepLoai LIKE N'Yếu' AND TENKHOA=@TenKhoa
END

GO
/****** Object:  StoredProcedure [dbo].[pr_BangDiemSinhVien]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[pr_BangDiemSinhVien]
@IDSV char(10)
AS
BEGIN
	SELECT HoTen N'Họ và tên',
			SinhVien.IDSinhVien N'Mã sinh viên',
			TenHocPhan N'Tên học phần',
			DiemHe10 N'Điểm hệ 10',
			DiemHe4 N'Điểm hệ 4',
			DiemChu N'Điểm chữ'
	FROM  SinhVien,KetQuaHP, HocPhan
	where SinhVien.IDSinhVien = KetQuaHP.IDSinhVien 
			and HocPhan.IDHocPhan = KetQuaHP.IDHocPhan
			and SinhVien.IDSinhVien = @IDSV
	order by DiemHe10 DESC;
END

GO
/****** Object:  StoredProcedure [dbo].[STUDENT_GET_PAGING_WITH_POINT_F]    Script Date: 2/23/2021 10:26:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[STUDENT_GET_PAGING_WITH_POINT_F]
(
	@InWhere      NVARCHAR(MAX)  = '', 
	 @StartRow     INT            = 0,
	 @Keywords     NVARCHAR(MAX)  = '', 
	 @PageSize     INT            = 10
	--  @TotalRecords INT OUTPUT,
	-- @ErrorCode    NVARCHAR(100) OUTPUT,
	--@ErrorMessage NVARCHAR(4000) OUTPUT
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @query NVARCHAR(MAX)= '';
    DECLARE @queryRowCount NVARCHAR(MAX)= '';
	BEGIN TRY
			DECLARE @ROWS NVARCHAR(50) = '';
			SET @ROWS = CONVERT(NVARCHAR, ((@StartRow - 1) * @PageSize));
		BEGIN
			SET @query = 'SELECT sv.IDSinhVien, sv.HoTen, sv.NgaySinh 
							FROM SinhVien sv
							LEFT JOIN KetQuaHP kq on kq.IDSinhVien=sv.IDSinhVien
							INNER JOIN HocPhan hp on kq.IDHocPhan=hp.IDHocPhan
							WHERE TenHocPhan = ' + @InWhere + ' ORDER BY sv.IDSinhVien DESC ' + ' OFFSET ' + @ROWS + ' ROWS ' + ' FETCH NEXT ' + CAST(@PageSize AS NVARCHAR(10)) + ' ROWS ONLY ';
			EXEC SP_EXECUTESQL @query;
        --    SET @queryRowCount = 'SELECT @TotalRecords = COUNT(sv.IDSinhVien)
								--FROM SinhVien sv
								--LEFT JOIN KetQuaHP kq on kq.IDSinhVien=sv.IDSinhVien
								--INNER JOIN HocPhan hp on kq.IDHocPhan=hp.IDHocPhan
								--WHERE TenHocPhan = ' + @InWhere ;
        --    EXEC SP_EXECUTESQL @queryRowCount, N'@TotalRecords INT OUTPUT', @TotalRecords = @TotalRecords OUTPUT;
			--SET @ErrorCode = N'0';
			--SET @ErrorMessage = N'Lấy dữ liệu thành công';
		END
	END TRY
	BEGIN CATCH
		--SET @ErrorCode = ERROR_MESSAGE();
  --      SET @ErrorMessage = ERROR_MESSAGE();
	END CATCH

    SET NOCOUNT OFF;
END


GO
