-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-22 02:42:52.851

CREATE DATABASE ThucNVPH03487_QLBH



-- tables
-- Table: CT_Hoa_Don
CREATE TABLE CT_Hoa_Don (
    MaHD nvarchar(10)  NOT NULL,
    MaSP nvarchar(10)  NOT NULL,
    SoLuong int  NOT NULL,
    Gia money  NOT NULL
)
;





-- Table: Hoa_Don
CREATE TABLE Hoa_Don (
    MaHD nvarchar(10)  NOT NULL,
    GiaSp money  NOT NULL,
    MaKH nvarchar(10)  NOT NULL,
    CONSTRAINT Hoa_Don_pk PRIMARY KEY  (MaHD)
)
;





-- Table: Khach_Hang
CREATE TABLE Khach_Hang (
    MaKH nvarchar(10)  NOT NULL,
    TenKH nvarchar(50)  NOT NULL,
    Email nvarchar(80)  NOT NULL,
    SDT int  NOT NULL,
    DiaChi varchar(255)  NOT NULL,
    CONSTRAINT Khach_Hang_pk PRIMARY KEY  (MaKH)
)
;





-- Table: Loai_San_Pham
CREATE TABLE Loai_San_Pham (
    MaLoaiSP nvarchar(10)  NOT NULL,
    TenLoaiSP nvarchar(50)  NOT NULL,
    CONSTRAINT Loai_San_Pham_pk PRIMARY KEY  (MaLoaiSP)
)
;





-- Table: San_Pham
CREATE TABLE San_Pham (
    MaSP nvarchar(10)  NOT NULL,
    MaLoaiSP nvarchar(10)  NOT NULL,
    TenSP nvarchar(50)  NOT NULL,
    GiaSP money  NOT NULL,
    MotaSP nvarchar(50)  NOT NULL,
    CONSTRAINT San_Pham_pk PRIMARY KEY  (MaSP)
)
;









-- foreign keys
-- Reference:  client_purchase (table: Hoa_Don)

ALTER TABLE Hoa_Don ADD CONSTRAINT client_purchase 
    FOREIGN KEY (MaKH)
    REFERENCES Khach_Hang (MaKH)
;

-- Reference:  product_category_product (table: San_Pham)

ALTER TABLE San_Pham ADD CONSTRAINT product_category_product 
    FOREIGN KEY (MaLoaiSP)
    REFERENCES Loai_San_Pham (MaLoaiSP)
;

-- Reference:  product_purchase_item (table: CT_Hoa_Don)

ALTER TABLE CT_Hoa_Don ADD CONSTRAINT product_purchase_item 
    FOREIGN KEY (MaSP)
    REFERENCES San_Pham (MaSP)
;

-- Reference:  purchase_purchase_item (table: CT_Hoa_Don)

ALTER TABLE CT_Hoa_Don ADD CONSTRAINT purchase_purchase_item 
    FOREIGN KEY (MaHD)
    REFERENCES Hoa_Don (MaHD)
;

--them du lieu Khach_Hang
DELETE dbo.Khach_Hang
INSERT INTO Khach_Hang VALUES (N'MAKH01',N'NguyenVanThuc',N'nguyenvanthuc@gmailcom',0168992230,'HaNoi')
INSERT INTO Khach_Hang VALUES (N'MAKH02',N'NguyenVanCuong',N'nguyenvancuong@gmailcom',0987564841,'HoaBinh')
INSERT INTO Khach_Hang VALUES (N'MAKH03',N'TranTriDung',N'trantridung@gmailcom',01215478921,'LaiChau')
INSERT INTO Khach_Hang VALUES (N'MAKH04',N'TruongManhDat',N'truongmanhdat@gmailcom',01678925412,'Hue')
INSERT INTO Khach_Hang VALUES (N'MAKH05',N'ChauTinhTri',N'chautinhtri@gmailcom',01686987412,'LongAn')

--them du lieu Hoa_Don
DELETE dbo.Hoa_Don
INSERT INTO Hoa_Don VALUES (N'MAHD01',2000,N'MAKH01')
INSERT INTO Hoa_Don VALUES (N'MAHD02',3000,N'MAKH02')
INSERT INTO Hoa_Don VALUES (N'MAHD03',4000,N'MAKH03')
INSERT INTO Hoa_Don VALUES (N'MAHD04',5000,N'MAKH04')
INSERT INTO Hoa_Don VALUES (N'MAHD05',6000,N'MAKH05')

--them du lieu Loai_San_Pham
DELETE dbo.Loai_San_Pham
INSERT INTO Loai_San_Pham VALUES (N'MALoaiSP01',N'TenLoaiSP01')
INSERT INTO Loai_San_Pham VALUES (N'MALoaiSP02',N'TenLoaiSP02')
INSERT INTO Loai_San_Pham VALUES (N'MALoaiSP03',N'TenLoaiSP03')
INSERT INTO Loai_San_Pham VALUES (N'MALoaiSP04',N'TenLoaiSP04')
INSERT INTO Loai_San_Pham VALUES (N'MALoaiSP05',N'TenLoaiSP05')


--them du lieu San_Pham
DELETE dbo.San_Pham
INSERT INTO San_Pham VALUES (N'MASP01',N'MaLoaiSP01',N'ao thun',3000,N'mau xanh')
INSERT INTO San_Pham VALUES (N'MASP02',N'MaLoaiSP02',N'ao len',4000,N'mau do')
INSERT INTO San_Pham VALUES (N'MASP03',N'MaLoaiSP03',N'ao coc',5000,N'mau den')
INSERT INTO San_Pham VALUES (N'MASP04',N'MaLoaiSP04',N'ao khoac',6000,N'mau vang')
INSERT INTO San_Pham VALUES (N'MASP05',N'MaLoaiSP05',N'ao lot',7000,N'mau trang')

--them du lieu CT_Hoa_Don
DELETE dbo.CT_Hoa_Don
INSERT INTO CT_Hoa_Don VALUES (N'MAHD01',N'MASP01',1,5000)
INSERT INTO CT_Hoa_Don VALUES (N'MAHD02',N'MASP02',2,6000)
INSERT INTO CT_Hoa_Don VALUES (N'MAHD03',N'MASP03',3,7000)
INSERT INTO CT_Hoa_Don VALUES (N'MAHD04',N'MASP04',4,8000)
INSERT INTO CT_Hoa_Don VALUES (N'MAHD05',N'MASP05',5,9000)






-- End of file.


select * from CT_Hoa_Don
select * from dbo.Hoa_Don
select * from dbo.Khach_Hang
select * from dbo.Loai_San_Pham
select * from dbo.San_Pham
