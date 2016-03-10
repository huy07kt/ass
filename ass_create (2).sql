-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:22:15.49




-- tables
-- Table: Nhan_vien
CREATE TABLE Nhan_vien (
    MaNV nchar(10)  NOT NULL,
    TenNV nvarchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh nvarchar(10)  NOT NULL,
    Email nchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    Phong_Ban_MaPhong nchar(10)  NOT NULL,
    CONSTRAINT Nhan_vien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: Phong_Ban
CREATE TABLE Phong_Ban (
    MaPhong nchar(10)  NOT NULL,
    Tenphong Nvarchar(50)  NOT NULL,
    CONSTRAINT Phong_Ban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  Nhan_vien_Phong_Ban (table: Nhan_vien)

ALTER TABLE Nhan_vien ADD CONSTRAINT Nhan_vien_Phong_Ban 
    FOREIGN KEY (Phong_Ban_MaPhong)
    REFERENCES Phong_Ban (MaPhong)
;





-- End of file.

