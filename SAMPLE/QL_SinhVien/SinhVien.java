package QL_SinhVien;

import java.util.Scanner;

public class SinhVien {
    public Integer maSV;
    public String hoTenSV;
    public String gioiTinhSV;
    public Integer namsinhSV;
    public String noisinhSV;

    public SinhVien(Integer maSV, String hoTenSV, String gioiTinhSV, Integer namsinhSV, String noisinhSV) {
        this.maSV = maSV;
        this.hoTenSV = hoTenSV;
        this.gioiTinhSV = gioiTinhSV;
        this.namsinhSV = namsinhSV;
        this.noisinhSV = noisinhSV;

    }

    public void nhapThongTin() {
        String giaTriNhap;
        Scanner scanner = new Scanner(System.in);
        System.out.println("NHAP THONG TIN HOC SINH:");

        
        System.out.println("MA SINH VIEN: ");
        this.maSV = scanner.nextInt();
        
        System.out.println("HO TEN SINH VIEN:");
        scanner.nextLine();
        this.hoTenSV = scanner.nextLine();

        System.out.println("GIOI TINH SINH VIEN:");
        this.gioiTinhSV = scanner.next();

        System.out.println("NAM SINH SINH VIEN:");
        this.namsinhSV = scanner.nextInt();

        System.out.println("NOI SINH SINH VIEN:");
        this.noisinhSV = scanner.next();

    }

    public void hienThi() {
        System.out.println("MA SINH VIEN : " + this.maSV +" - "+ "TEN SINH VIEN : " + this.hoTenSV + " - "
                + " GIOI TINH SINH VIEN:" + this.gioiTinhSV + " - " + " NAM SINH SINH VIEN:"
                + this.namsinhSV + " - " + "NOI SINH SINH VIEN:" + this.noisinhSV);

    }

}