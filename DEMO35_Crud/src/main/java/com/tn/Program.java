package com.tn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Scanner;

public class Program {
    public static void main(String[] args) {
        System.out.println("Student Management");
        System.out.println("1. Show All Student");
        System.out.println("2. Insert A Student");
        System.out.println("3. Update A Student");
        System.out.println("4. Delete A Student");
        System.out.println("5. Exit");

        Scanner sc = new Scanner(System.in);
        System.out.println("Nhập giá trị n: ");
        int n = sc.nextInt();

        if( n==1){
            System.out.println("Show");
            hienThiSinhVien();
        }else if (n == 2){
            System.out.println("Insert");
        }else if (n== 3){
            System.out.println("Update");
        }else if (n==4){
            System.out.println("Delete");
        }
    }
    public static void hienThiSinhVien() {
        Connection conn = null;
        Statement stm = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/t3h_k36_k37", "root", "");
            stm = conn.createStatement();
            rs = stm.executeQuery("SELECT * FROM sinhvien");

            while (rs.next()) {
                int id = rs.getInt("id");
                String hoTen = rs.getString("fullname");
                String queQuan = rs.getString("country");
                String ngaySinh = new SimpleDateFormat("dd/MM/yyyy").format(rs.getDate("birthday"));

                System.out.println("ID: " + id + ", Họ và tên: " + hoTen + ", Quê quán: " + queQuan + ", Ngày sinh: " + ngaySinh);
            }
        } catch (Exception ex) {
            System.out.println("Lỗi khi hiển thị danh sách Sinh viên!");
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stm != null) stm.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
