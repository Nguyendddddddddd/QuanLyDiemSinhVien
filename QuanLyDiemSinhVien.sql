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
		REFERENCES LoaiQuyen(MaQuyen)