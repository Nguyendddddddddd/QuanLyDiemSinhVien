create database QLDiemSinhVien
ON PRIMARY
 ( NAME='QLDiemSinhVien_data',
   FILENAME='D:\DoAnC#\QuanLyDiemSinhVien\DataBase\QLDiemSinhVien.mdf',
   SIZE=4MB,
   MAXSIZE=10MB,
   FILEGROWTH=1MB)
LOG ON
 ( NAME='QLDiemSinhVien_log',
   FILENAME ='D:\DoAnC#\QuanLyDiemSinhVien\DataBase\QLDiemSinhVien.ldf',
   SIZE=1MB,
   MAXSIZE=10MB,
   FILEGROWTH=1MB);

   use QLDiemSinhVien

   
	create table LoaiQuyen(
		MaQuyen char(2) primary key,
		TenQuyen nvarchar(30) not null unique
	)
	
	create table TaiKhoang(
		TenDangNhap nvarchar(255) primary key,
		MatKhau nvarchar(255) not null,
		MaQuyen char(2),
		FOREIGN KEY (MaQuyen)
		REFERENCES LoaiQuyen(MaQuyen)
	)
	create table SinhVien(
		MSSV char(9) primary key,
		HotLot nvarchar(50) not null,
		Ten nvarchar(30) not null,
		NgaySinh date not null,
		Phai nvarchar(3) not null,
		CCCD nvarchar(20) unique not null,
	)
	create table CCCD(
		SoCCCD nvarchar(20) primary key,
		MSSV char(9)
	)