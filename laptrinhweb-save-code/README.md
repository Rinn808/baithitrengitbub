# Bài thi Giữa Kỳ - Hệ Thống Quản Lý Môn Học

Ứng dụng web quản lý môn học viết bằng Java Servlet/JSP, tích hợp bảo mật băm mật khẩu SHA-256 và bộ lọc kiểm soát phiên đăng nhập (AuthFilter).

## 1. Chuẩn bị Cơ sở dữ liệu (MySQL)
Chạy các câu lệnh SQL trong tệp `schema.sql` để tạo cơ sở dữ liệu `appdb` và khởi tạo các bảng dữ liệu.

## 2. Cách khởi chạy
Chạy lệnh Maven sau tại thư mục gốc của dự án:
```bash
mvn clean tomcat7:run
```
Sau đó mở trình duyệt và truy cập địa chỉ: **`http://localhost:8080/`** (hệ thống sẽ tự động định hướng tới trang đăng nhập).
đăng kí tài khoản và sử dụng 

Tài khoản: admin
Mật khẩu: Admin123!
