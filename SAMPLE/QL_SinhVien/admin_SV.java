package QL_SinhVien;

import java.util.Scanner;

public class admin_SV {
    public SinhVien[] danhSachSinhVien;

    public admin_SV(SinhVien[] ds) {
        this.danhSachSinhVien = ds;
    }

    // nhập danh sách sinh viên.
    public void nhapDanhSach() {
        System.out.println("NHAP DANH SACH:");
        System.out.println("NHAP SO LUONG SINH VIEN:");
        Scanner scanner = new Scanner(System.in);

        Integer soLuongNhap = scanner.nextInt();
        this.danhSachSinhVien = new SinhVien[soLuongNhap];
        SinhVien sinhVienNhap;

        for (int i = 0; i < danhSachSinhVien.length; i++) {
            sinhVienNhap = new SinhVien(0, "", "", 0, "");
            sinhVienNhap.nhapThongTin();
            danhSachSinhVien[i] = sinhVienNhap;
        }
    }

    // hiển thị danh sách sinh vien.
    public void hienThiDanhSach() {
        System.out.println("DANH SACH SINH VIEN:");

        for (int i = 0; i < this.danhSachSinhVien.length; i++) {
            danhSachSinhVien[i].hienThi();
        }
    }

    // bai tập sắp xếp nam trái nữ phải.
    // public void sapXepNamTraiNuPhai() {
    //     SinhVien hocSinhTemp;
    //     for (int i = 0; i < this.danhSachSinhVien.length; i++) {
    //         for (int j = i + 1; j < this.danhSachSinhVien.length; j++) {
    //             // Neu hoc sinh tai vi tri [j] co gioi tinh NAM thi doi cho
    //             if (this.danhSachSinhVien[j].getgioiTinhSV().equals("NAM")) {
    //                 // doi cho
    //                 hocSinhTemp = this.danhSachSinhVien[i];
    //                 this.danhSachSinhVien[i] = this.danhSachSinhVien[j];
    //                 this.danhSachSinhVien[j] = hocSinhTemp;
    //             }
    //         }
    //     }
    // }

    // bai tập sắp xếp nam phải nữ trái.
    // public void sapXepNuTraiNamPhai() {
    //     SinhVien hocSinhTemp;
    //     for (int i = 0; i < this.danhSachSinhVien.length; i++) {
    //         for (int j = i + 1; j < this.danhSachSinhVien.length; j++) {
    //             // Neu hoc sinh tai vi tri [j] co gioi tinh NU thi doi cho
    //             if (this.danhSachSinhVien[j].getgioiTinhSV().equals("NU")) {
    //                 // doi cho
    //                 hocSinhTemp = this.danhSachSinhVien[i];
    //                 this.danhSachSinhVien[i] = this.danhSachSinhVien[j];
    //                 this.danhSachSinhVien[j] = hocSinhTemp;
    //             }
    //         }
    //     }
    // }


}
