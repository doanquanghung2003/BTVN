package com.tn;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class Person {

    public String ten;
    public boolean gioi;
    public Date ngaysinh;
    public String diachi;

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public boolean isGioi() {
        return gioi;
    }

    public void setGioi(boolean gioi) {
        this.gioi = gioi;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public Person() {
    }

    public Person(String ten, boolean gioi, Date ngaysinh, String diachi) {
        this.ten = ten;
        this.gioi = gioi;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
    }

    public void inputInfo() {
        Scanner sc = new Scanner(System.in);
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        System.out.println("Nhập Thông Tin ");

        System.out.println("Nhập Tên : ");
        this.ten = sc.nextLine();

        System.out.println("Nhập Giới Tính (true = nam , false = nữ) : ");
        this.gioi = sc.nextBoolean();

        System.out.println("Nhập Ngày Sinh (yyyy-mm-dd): ");
        String dateString = sc.next();
        try {
            this.ngaysinh = dateFormat.parse(dateString);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        sc.nextLine();

        System.out.println("Nhập địa chỉ : ");
        this.diachi = sc.nextLine();
    }

    public void showInfo(){
        System.out.println("-----------------------------------------");
        System.out.println("Thông tin");
        System.out.println("Tên : " + this.ten);
        System.out.println("Giới Tính : " + this.gioi);
        System.out.println("Ngày Sinh : " + this.ngaysinh);
        System.out.println("Địa Chỉ : " + this.diachi);
    }

}



//Tạo lớp Person chứa các thông tin:
//- Tên
//- Giới tính
//- Ngày sinh
//- Địa chỉ
//1. Lớp Person bao gồm đầy đủ các phương thức getter, setter, constructor không tham số, constructor đầy đủ tham số
//2. Viết phương thức inputInfo() đểnhập thông tin Person từ bàn phím
//3. Viết phương thức showInfo() đểhiển thị tất cả thông tin Person