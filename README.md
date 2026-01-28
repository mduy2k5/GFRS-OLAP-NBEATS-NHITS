# 🧊 Global Fashion Retail OLAP Analysis (SSAS & Power BI)

Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**, sử dụng **SQL Server Analysis Services (SSAS – Multidimensional)** để thiết kế **Dimension, Cube và Measure**, phục vụ cho **truy vấn phân tích và báo cáo** trên **Power BI**.  

Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.

# 📊 MDX Queries & Power BI Analytics (SSAS)

Branch này tập trung vào **tầng phân tích (Analytics Layer)** của dự án OLAP, bao gồm:

- Các **truy vấn MDX** trên SSAS Multidimensional Cube
- **Dashboard Power BI** kết nối trực tiếp với SSAS
- Minh họa cách khai thác dữ liệu OLAP phục vụ phân tích kinh doanh

---

## 📁 Nội dung chính

### 🔹 MDX Queries (`mdx/`)
- Truy vấn OLAP cơ bản và nâng cao
- Phân tích theo thời gian (YTD, MTD)
- Top-N, Ranking
- Calculated Member & KPI

Mỗi file MDX đều có chú thích rõ ràng về mục đích phân tích.

---

### 🔹 Power BI Dashboards (`powerbi/`)
- Dashboard xây dựng trên **Live Connection / DirectQuery** tới SSAS
- File Power BI được lưu dưới dạng **.pbit** (template)
- Không chứa dữ liệu thật

---

### 🔹 Documentation (`docs/`)
- Cấu trúc Cube
- Star Schema
- So sánh MDX và DAX trong ngữ cảnh OLAP

---

## ⚠️ Lưu ý về dữ liệu & bảo mật

- Branch này **không chứa dữ liệu thực**
- Không lưu:
  - Connection string thật
  - Password
  - User nội bộ
- Người dùng cần tự cấu hình kết nối SSAS theo môi trường

---

## 🎯 Mục tiêu

- Minh hoạ kỹ năng **SSAS Multidimensional & MDX**
- Trình bày khả năng xây dựng **BI Dashboard**
- Phục vụ mục đích **học tập, trình diễn và portfolio**

## 📄 Giấy phép

Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
