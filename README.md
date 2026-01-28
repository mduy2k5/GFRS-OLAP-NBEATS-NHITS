# 🧊 Global Fashion Retail OLAP Analysis (SSAS & Power BI)

Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**, sử dụng **SQL Server Analysis Services (SSAS – Multidimensional)** để thiết kế **Dimension, Cube và Measure**, phục vụ cho **truy vấn phân tích và báo cáo** trên **Power BI**.  

Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.

---

## 🎯 Mục tiêu dự án

- Xây dựng **mô hình OLAP đa chiều** từ Data Warehouse bán lẻ thời trang.
- Thiết kế các **Dimension** (Time, Product, Customer, Store, …).
- Xây dựng **Cube và Measure Group** phục vụ phân tích kinh doanh.
- Tối ưu dữ liệu cho các truy vấn:
  - Doanh thu theo thời gian
  - Hiệu suất sản phẩm
  - Phân tích khu vực / cửa hàng
- Kết nối và khai thác dữ liệu OLAP thông qua **Power BI**.

---

## 🛠️ Công nghệ sử dụng

- **SQL Server Analysis Services (SSAS – Multidimensional)** – OLAP & Cube  
- **Visual Studio (SSDT)** – phát triển SSAS Project  
- **SQL Server (SSMS)** – Data Warehouse  
- **Power BI Desktop** – trực quan hoá & phân tích dữ liệu  

---

## ⚙️ Cài đặt & Cấu hình

### 1️⃣ Clone dự án
```bash
git clone https://github.com/mduy2k5/gfrs-olap-nbeats-nhits.git
cd GFRS_SSAS
```

### 2️⃣ Cấu hình Data Source (SSAS)

Mở dự án SSAS trong **Visual Studio**, vào thư mục **Data Sources**, chỉnh sửa file `.ds` và thay các giá trị sau:

```
YOUR_SERVER_NAME → tên SQL Server instance
YOUR_DW_NAME     → tên Data Warehouse
```

Ví dụ:
```
Data Source=localhost\SQLEXPRESS;
Initial Catalog=DW_SAMPLE;
Integrated Security=SSPI;
```

⚠️ **Lưu ý**:  
- Connection string trong repo đã được **ẩn thông tin nhạy cảm**  
- Người dùng cần tự cấu hình theo môi trường của mình

---

### 3️⃣ Chuẩn bị Data Warehouse

- Đảm bảo Data Warehouse đã tồn tại trong SQL Server
- Schema dữ liệu cần **phù hợp với Data Source View (DSV)**
- Mô hình khuyến nghị: **Star Schema**

---

## ▶️ Cách chạy & triển khai SSAS

1. Mở dự án SSAS trong Visual Studio  
2. Kiểm tra lại:
   - Data Source
   - Data Source View
   - Dimension & Cube
3. Chuột phải project SSAS → **Deploy**  
4. Chọn SSAS Server và chờ quá trình deploy hoàn tất  
5. Kiểm tra Cube bằng:
   - SQL Server Management Studio (SSMS)
   - Hoặc Power BI

---

## 📊 Kết quả đạt được

- Mô hình OLAP được xây dựng hoàn chỉnh với:
  - Dimension rõ ràng
  - Measure phục vụ phân tích
- Cube hỗ trợ truy vấn nhanh và đa chiều
- Dữ liệu sẵn sàng cho:
  - Power BI Reports
  - Dashboard phân tích bán lẻ
  - Các bài toán BI & phân tích nâng cao

---

## 🔐 Bảo mật & dữ liệu

- Dự án **không chứa dữ liệu thật**
- Không bao gồm:
  - Password
  - User nội bộ
  - File backup (.abf, .bak)
- Role và Security chỉ mang tính **demo**

---

## 📄 Giấy phép

Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
