# 🌐 Global Fashion Retail Data Warehouse & Time-Series Forecasting

Dự án này xây dựng một **Data Warehouse cho ngành bán lẻ thời trang** và thực hiện **trích xuất – biến đổi – nạp dữ liệu (ETL)** bằng **SSIS trong Visual Studio**, sử dụng bộ dữ liệu từ **Kaggle**.  
Dự án được phát triển cho mục đích học tập và tham khảo trong môn học.

---

## 🎯 Mục tiêu dự án

- Sử dụng **bộ dữ liệu bán lẻ thời trang từ Kaggle** để xây dựng quy trình ETL.
- Làm sạch, chuẩn hoá và nạp dữ liệu vào SQL Server Data Warehouse.
- Tự động hóa quy trình xử lý dữ liệu thông qua **SSIS (SQL Server Integration Services)**.
- Chuẩn bị dữ liệu phục vụ cho các bài toán **phân tích kinh doanh** và **dự báo chuỗi thời gian** trong tương lai.

---

## 🛠️ Công nghệ sử dụng

- **SQL Server Integration Services (SSIS)** – quy trình ETL  
- **Visual Studio** – phát triển SSIS Package  
- **SQL Server (SSMS)** – lưu trữ và quản lý Data Warehouse  

---
## ⚙️ Cài đặt & Cấu hình

### 1️⃣ Clone dự án
```bash
git clone https://github.com/mduy2k5/gfrs-olap-nbeats-nhits/blob/SSIS/
cd GFRS_SSIS
```
### 2️⃣ Cấu hình đường dẫn dữ liệu
Mở các file: Package.dtsx và GFRS_SSIS.dtproj
Và thay:
```bash
YOUR_DATA_LINK → đường dẫn tuyệt đối đến thư mục dataset của bạn
```
Ví dụ:
```bash
C:\Data\GlobalFashionRetail\
```
### 3️⃣ Cấu hình SQL Server

Trong Package.dtsx, cập nhật:
```bash
YOUR_SERVER_NAME → tên instance SQL Server trong SSMS
```
Ví dụ:
```bash
DESKTOP-ABC123\SQLEXPRESS
```

💡 Sau khi chỉnh xong, nên đóng và mở lại dự án để SSIS reload cấu hình kết nối.

## ▶️ Cách chạy dự án SSIS

Mở dự án trong Visual Studio

Kiểm tra lại tất cả Connection Managers

Chuột phải file Package.dtsx → Run Package

Mở SSMS → kiểm tra dữ liệu đã được nạp vào Data Warehouse

---
## 📊 Kết quả đạt được

Pipeline ETL chạy thành công và nạp đầy đủ dữ liệu từ Kaggle.

Dữ liệu được cấu trúc lại phục vụ phân tích và báo cáo.

Dự án chuẩn bị sẵn nền cho:

Power BI Reports

Dashboard phân tích bán lẻ

Mô hình dự báo chuỗi thời gian (Time-Series Forecasting)

---
##📄 Giấy phép

Dự án được sử dụng cho mục đích đồ án môn học.
Nội dung mang tính tham khảo — không sử dụng lại cho mục đích thương mại hoặc tái phân phối.

