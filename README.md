# Global Fashion Retail
## Tổng quan
--- 
- Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**
- Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.
- Link Dataset: https://www.kaggle.com/datasets/ricgomes/global-fashion-retail-stores-dataset

## Lưu ý
---
- Kho lưu trữ này chỉ chứa các đóng góp cá nhân của tôi.
- Bạn có thể tham khảo đầy đủ tại: https://github.com/TranDaiHai2107/Global-Fashion-Retail-Analytics

## Mục tiêu
---
- Xây dựng **Data Warehouse** cho dữ liệu bán lẻ thời trang  
- Triển khai **ETL Pipeline** để làm sạch và chuẩn hoá dữ liệu  
- Thiết kế **OLAP Cube (SSAS)** để phân tích đa chiều  
- Khai thác insight kinh doanh thông qua **Power BI**  
- Áp dụng **Deep Learning** để dự báo chuỗi thời gian bán lẻ  

## Kiến trúc tổng thể hệ thống
---
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

## Công nghệ sử dụng
--- 
- SQL Server / SSMS – Data Warehouse
- SSIS (SQL Server Integration Services) – ETL
- SSAS (SQL Server Analysis Services) – OLAP & MDX
- Power BI – Dashboard & Data Visualization
- Python – Time Series Forecasting
- N-BEATS, N-HiTS – Deep Learning Models

## Cấu trúc nhánh (Branch Structure)
---
- main	Tổng quan dự án & kiến trúc hệ thống
- ssis	ETL Pipeline & Data Warehouse
- ssas	OLAP Cube, MDX Measures
- analysis	Dashboard & phân tích kinh doanh
- timeseries-forecasting	Dự báo chuỗi thời gian

## 📄 Giấy phép
---
Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
