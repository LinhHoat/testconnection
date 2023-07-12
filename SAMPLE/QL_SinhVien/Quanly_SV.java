package QL_SinhVien;

import java.sql.Connection;
import java.sql.DriverManager;

import QL_SinhVien.SinhVien;

public class Quanly_SV {

  public static void main(String[] args) {
    
     SinhVien sinhVien1 = new SinhVien(001, "Nguyen Van A", "Nam", 1997, "hai phong");
     SinhVien sinhVien2 = new SinhVien(null, null, null, null, null);
   
    sinhVien2.nhapThongTin();
    sinhVien2.hienThi();
     // sinhVien1 hiển thị mặc định
    sinhVien1.hienThi();
 }
		
}
