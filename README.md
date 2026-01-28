# 🧊 Global Fashion Retail

Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**
Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.
---

## 🎯 Mục tiêu tổng quan

- Xây dựng **Data Warehouse** cho dữ liệu bán lẻ thời trang  
- Triển khai **ETL Pipeline** để làm sạch và chuẩn hoá dữ liệu  
- Thiết kế **OLAP Cube (SSAS)** để phân tích đa chiều  
- Khai thác insight kinh doanh thông qua **Power BI**  
- Áp dụng **Deep Learning** để dự báo chuỗi thời gian bán lẻ  

---

## 🧩 Phạm vi & Bài toán giải quyết

Dự án tập trung trả lời các câu hỏi kinh doanh quan trọng:

- Doanh thu và sản lượng biến động như thế nào theo thời gian?  
- Nhóm sản phẩm nào tạo ra phần lớn giá trị (Pareto 80/20)?  
- Khuyến mãi ảnh hưởng ra sao đến hành vi mua hàng?  
- Xu hướng doanh thu trong tương lai sẽ như thế nào?  

---

## 🏗️ Kiến trúc tổng thể hệ thống

```text
Raw Data (Kaggle)
      ↓
SSIS – ETL Pipeline
      ↓
SQL Server Data Warehouse
      ↓
SSAS – OLAP Cube & Business Logic
      ↓
Power BI – Business Analytics
      ↓
Time Series Forecasting (N-BEATS, N-HiTS)
```
---
##🛠️ Công nghệ sử dụng
- SQL Server / SSMS – Data Warehouse
- SSIS (SQL Server Integration Services) – ETL
- SSAS (SQL Server Analysis Services) – OLAP & MDX
- Power BI – Dashboard & Data Visualization
- Python – Time Series Forecasting
- N-BEATS, N-HiTS – Deep Learning Models
---
## 🌿 Cấu trúc nhánh (Branch Structure)
- main	Tổng quan dự án & kiến trúc hệ thống
- ssis	ETL Pipeline & Data Warehouse
- ssas	OLAP Cube, MDX Measures
- analysis	Dashboard & phân tích kinh doanh
- timeseries-forecasting	Dự báo chuỗi thời gian
---
## 📈 Giá trị đạt được
- Mô phỏng quy trình phân tích dữ liệu trong doanh nghiệp
- Kết nối chặt chẽ giữa OLAP → BI → Forecasting
- Áp dụng mô hình Deep Learning hiện đại cho dữ liệu bán lẻ
- Dự án có thể mở rộng cho các bài toán thực tế

Portfolio cá nhân
---
## 📄 Giấy phép

Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
