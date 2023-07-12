create table thong_tin_hoc_sinh (
    ma_hoc_sinh int,
    ho_va_ten varchar(50),
    gioi_tinh boolean,
    dia_chi varchar(100),
    nam_sinh date
) create table lop_hoc(
    ma_lop varchar(5),
    ten_lop varchar(5),
    giao_vien_chu_nhiem varchar(30)
) create table lop_hoc_hoc_sinh(ma_hoc_sinh int, ma_lop varchar(5))
insert into thong_tin_hoc_sinh(
        ho_va_ten,
        gioi_tinh,
        ma_hoc_sinh,
        dia_chi,
        nam_sinh
    )
values ('hoat', 0, 001, 'quan2', '1997-11-13')
select S.ho_ten_sinh_vien,
    K.ten_khoa
from Sinh_Vien S,
    TBL_Khoa k
where S.ma_khoa = K.ma_khoa
select S.ho_ten_sinh_vien,
    DT.ten_de_tai
from Sinh_Vien S,
    De_Tai DT,
    Huong_Dan HD
where S.ma_sinh_vien = hd.ma_sinh_vien
    and HD.ma_de_tai = dt.ma_de_tai
select S.ho_ten_sinh_vien,
    DT.ten_de_tai
from Sinh_Vien S
    inner join Huong_Dan HD on s.ma_sinh_vien = hd.ma_sinh_vien
    inner join De_Tai DT on hd.ma_de_tai = dt.ma_de_tai
select DT.ten_de_tai,
    GV.ho_ten_GV,
    SV.ho_ten_sinh_vien
from De_Tai DT,
    TBL_Giang_Vien GV,
    Huong_Dan HD,
    Sinh_Vien SV
where DT.ma_de_tai = hd.ma_de_tai
    and hd.ma_GV = gv.ma_GV
    and hd.ma_sinh_vien = SV.ma_sinh_vien -- 8.Cho biết số điện thoại của khoa mà sinh viên có tên ‘Le van son’ đang theo học.
select K.dien_thoai,
    K.ten_khoa,
    SV.ho_ten_sinh_vien
from TBL_Khoa K
    inner join Sinh_Vien SV on K.ma_khoa = SV.ma_khoa
where SV.ho_ten_sinh_vien = 'Le van son';
-- 9.Cho biết mã số và tên của các đề tài do giảng viên ‘Tran son’ hướng dẫn
select dt.ma_de_tai,
    dt.ten_de_tai,
    GV.ho_ten_GV
from De_Tai DT
    inner join TBL_Giang_Vien GV on dt.ma_de_tai = dt.ma_de_tai
    inner join Huong_Dan HD on hd.ma_GV = gv.ma_GV
where gv.ho_ten_GV = 'Tran son' -- 7.Đưa ra mã khoa, tên khoa và số giảng viên của mỗi khoa.
select K.ma_khoa,
    K.ten_khoa,
    GV.ho_ten_GV
from TBL_Khoa K
    inner join TBL_Giang_Vien GV on k.ma_khoa = gv.ma_khoa -- 16.Cho biết thông tin về các sinh viên thực tập tại quê nhà
select sv.ma_sinh_vien,
    sv.ho_ten_sinh_vien,
    sv.ma_khoa,
    sv.nam_sinh,
    sv.noi_sinh,
    from sinh_vien sv SV,
    de_tai dt DT,
    huong_dan HD -- thực tập
    -- tạo bảng khoa
    create table TBL_Khoa (
        ma_khoa varchar(20),
        ten_khoa varchar(20),
        dien_thoai varchar(10)
    ) --  tạo bảng giảng viên
    create table TBL_Giang_Vien(
        ma_GV int,
        ho_ten_GV char(30),
        luong_GV decimal(5, 2),
        ma_khoa char(10)
    ) -- tạo bảng sinh viên
    create table Sinh_Vien(
        ma_sinh_vien int,
        ho_ten_sinh_vien char(30),
        ma_khoa varchar(10),
        nam_sinh int,
        noi_sinh char(30)
    ) -- tạo bảng đề tài
    create table De_Tai(
        ma_de_tai char(10),
        ten_de_tai char(30),
        kinh_phi int,
        noi_thuc_tap char(30)
    ) -- tạo bảng hướng dẫn
    create table Huong_Dan(
        ma_sinh_vien int,
        ma_de_tai char(10),
        ma_GV int,
        ket_qua decimal(5, 2)
    ) -- nhập data vào bảng khoa
INSERT INTO TBL_Khoa (ma_khoa, ten_khoa, dien_thoai)
VALUES ('001', 'Dia ly va QLTN', 3855413),
    ('002', 'Toan', 3855411),
    ('004', 'Cong nghe Sinh hoc', 3855412);
-- nhập data vào bảng giáo viên
INSERT INTO TBL_Giang_Vien (ma_GV int, ho_ten_GV, luong_GV, ma_khoa)
VALUES (11, 'Thanh Binh', 700, 'Geo'),
    (12, 'Thu Huong', 500, 'Math'),
    (13, 'Chu Vinh', 650, 'Geo'),
    (14, 'Le Thi Ly', 500, 'Bio'),
    (15, 'Tran Son', 900, 'Math');
-- nhập data vào bảng sinh viên
INSERT INTO Sinh_Vien (
        ma_sinh_vien,
        ho_ten_sinh_vien,
        ma_khoa,
        nam_sinh,
        noi_sinh
    )
VALUES (1, 'Le Van Son', 'Bio', 1990, 'Nghe An'),
    (2, 'Nguyen Thi Mai', 'Geo', 1990, 'Thanh Hoa'),
    (3, 'Bui Xuan Duc', 'Math', 1992, 'Ha Noi'),
    (4, 'Nguyen Van Tung', 'Bio', null, 'Ha Tinh'),
    (5, 'Le Khanh Linh', 'Bio', 1989, 'Ha Nam'),
    (6, 'Tran Khac Trong', 'Geo', 1991, 'Thanh Hoa'),
    (7, 'Le Thi Van', 'Math', null, 'null'),
    (8, 'Hoang Van Duc', 'Bio', 1992, 'Nghe An');
-- nhập data vào bảng đề tài
INSERT INTO De_Tai (ma_de_tai, ten_de_tai, kinh_phi, noi_thuc_tap)
VALUES ('Dt01', 'GIS', 100, 'Nghe An'),
    ('Dt02', 'ARC GIS', 500, 'Nam Dinh'),
    ('Dt03', 'Spatial DB', 100, 'Ha Tinh'),
    ('Dt04', 'MAP', 300, 'Quang Binh');
-- nhập data vào bảng hướng dẫn
INSERT INTO Huong_Dan (ma_sinh_vien, ma_de_tai, ma_GV, ket_qua)
VALUES (1, 'Dt01', 13, 8),
    (2, 'Dt03', 14, 0),
    (3, 'Dt03', 12, 10),
    (5, 'Dt04', 14, 7),
    (6, 'Dt01', 13, Null),
    (7, 'Dt04', 11, 10),
    (8, 'Dt03', 15, 6);
-- 1.Đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên.
select ma_GV,
    ho_ten_GV,
    ten_khoa
from TBL_Giang_Vien,
    TBL_Khoa;
-- 2.Đưa ra thông tin gồm mã số, họ tên và tên khoa của các giảng viên của khoa ‘DIA LY va QLTN’.
select ma_GV,
    ho_ten_GV,
    ten_khoa
from TBL_Giang_Vien,
    TBL_Khoa
where ten_khoa = 'Dia ly va QLTN';
-- 3.Cho biết số sinh viên của khoa ‘CONG NGHE SINH HOC’.
select count(ho_ten_sinh_vien) as so_SV,
    ten_khoa
from Sinh_Vien SV,
    TBL_Khoa K
where SV.ma_sinh_vien = K.ma_khoa
    and K.ten_khoa = 'CONG NGHE SINH HOC';
-- 4.Đưa ra danh sách gồm mã số, họ tên và tuổi của các sinh viên khoa ‘TOAN’.
select sv.ma_sinh_vien,
    sv.ho_ten_sinh_vien,
    sv.nam_sinh,
    K.ten_khoa
from Sinh_Vien SV,
    TBL_Khoa K
where sv.ma_khoa = K.ten_khoa
    and K.ten_khoa = 'Toan';
-- 5.Cho biết số giảng viên của khoa ‘CONG NGHE SINH HOC’.
select ho_ten_GV,
    ten_khoa
from TBL_Giang_Vien,
    TBL_Khoa
where ten_khoa = 'CONG NGHE SINH HOC';
-- 6.Cho biết thông tin về sinh viên không tham gia thực tập.
-- 10.Cho biết tên đề tài không có sinh viên nào thực tập
-- 11.Cho biết mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 3 sinh viên trở lên.
select count(ma_sinh_vien),
    ma_GV
from huong_dan hd
group by ma_GV -- 12.Cho biết mã số, tên đề tài của đề tài có kinh phí cao nhất
    -- 13.Cho biết mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập
    -- 14.Đưa ra mã số, họ tên và điểm của các sinh viên khoa ‘DIALY và QLTN’
    -- 15.Đưa ra tên khoa, số lượng sinh viên của mỗi khoa
    -- 17.Hãy cho biết thông tin về những sinh viên chưa có điểm thực tập
    -- 18.Đưa ra danh sách gồm mã số, họ tên các sinh viên có điểm thực tập bằng 0