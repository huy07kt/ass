-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:14:52.971




-- tables
-- Table: TNhanvien 
CREATE TABLE TNhanvien  (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(50)   NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh nvarchar(10)  NOT NULL,
    Email nchar(50)  NOT NULL,
    Mucluong money  NOT NULL,
    TPhongban _MaPhong nchar(10)  NOT NULL,
    CONSTRAINT TNhanvien _pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban 
CREATE TABLE TPhongban  (
    MaPhong nchar(10)  NOT NULL,
    Tenphong Nvarchar(50)  NOT NULL,
    CONSTRAINT TPhongban _pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien _TPhongban  (table: TNhanvien )

ALTER TABLE TNhanvien  ADD CONSTRAINT TNhanvien _TPhongban  
    FOREIGN KEY (TPhongban _MaPhong)
    REFERENCES TPhongban  (MaPhong)
;





-- End of file.

