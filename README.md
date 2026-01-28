# 🧊 Global Fashion Retail OLAP Analysis (SSAS & Power BI)

Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**, sử dụng **SQL Server Analysis Services (SSAS – Multidimensional)** để thiết kế **Dimension, Cube và Measure**, phục vụ cho **truy vấn phân tích và báo cáo** trên **Power BI**.  

Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.

# 📊 MDX Queries & Power BI Analytics (SSAS)

Branch này tập trung vào **tầng phân tích (Analytics Layer)** của dự án OLAP, bao gồm:

- Các **truy vấn MDX** trên SSAS Multidimensional Cube
- **Dashboard Power BI** kết nối trực tiếp với SSAS
- Minh họa cách khai thác dữ liệu OLAP phục vụ phân tích kinh doanh

---
## 🎯 Mục tiêu

- Minh hoạ kỹ năng **SSAS Multidimensional & MDX**
- Trình bày khả năng xây dựng **BI Dashboard**
- Phục vụ mục đích **học tập, trình diễn và portfolio**
---
## 📁 Nội dung chính

### 🔹 MDX Queries (`mdx/`)
- Truy vấn OLAP cơ bản và nâng cao
- Phân tích theo thời gian (YTD, MTD)
- Top-N, Ranking
- Calculated Member & KPI

---

### 🔹 Power BI Dashboards (`powerbi/`)
- Dashboard xây dựng trên **Live Connection / DirectQuery** tới SSAS
- Không chứa dữ liệu thật
---

## ⚠️ Lưu ý về dữ liệu & bảo mật

- Branch này **không chứa dữ liệu thực**
- Không lưu:
  - Connection string thật
  - Password
  - User nội bộ
- Người dùng cần tự cấu hình kết nối SSAS theo môi trường

---
# Điểm nổi bậc trong đồ án

## 🔍 1. Phân tích Pareto – Nguyên lý 80/20 trong bán lẻ

### 🎯 Mục tiêu phân tích
Xác định:
- Nhóm **sản phẩm / danh mục cốt lõi** tạo ra phần lớn doanh thu
- Mức độ tập trung doanh thu trong hệ thống bán lẻ

### 🧠 Cách tiếp cận
- Sử dụng **tổng doanh thu (Total Sales)** làm chỉ số chính
- Sắp xếp sản phẩm theo doanh thu giảm dần
- Tính **tỷ lệ doanh thu tích lũy (Cumulative Percentage)**
- Xác định ngưỡng **80% doanh thu**

### 📈 Trực quan hoá
- **Biểu đồ cột**: Doanh thu theo sản phẩm / danh mục
- **Đường tích lũy (%)**: Thể hiện quy luật Pareto
- Đánh dấu vùng:
  - Nhóm sản phẩm chủ lực (≈ 20%)
  - Nhóm sản phẩm còn lại (≈ 80%)

### 💡 Insight rút ra
- Một **tỷ lệ nhỏ sản phẩm** đóng góp **phần lớn doanh thu**
- Doanh nghiệp nên:
  - Ưu tiên tồn kho cho nhóm sản phẩm chủ lực
  - Tập trung marketing & trưng bày cho nhóm này
  - Rà soát chiến lược với nhóm sản phẩm hiệu quả thấp

👉 Phân tích Pareto giúp **ra quyết định dựa trên dữ liệu**, thay vì cảm tính.

---

## 🎁 2. Phân tích ảnh hưởng của khuyến mãi đến danh mục sản phẩm

### 🎯 Mục tiêu phân tích
Đánh giá:
- Khuyến mãi có **thực sự thúc đẩy doanh thu** hay không
- Mức độ ảnh hưởng **khác nhau giữa các danh mục sản phẩm**

### 🧠 Cách tiếp cận
- So sánh các chỉ số:
  - Doanh thu
  - Số lượng bán
- Chia dữ liệu theo:
  - Có khuyến mãi / Không khuyến mãi
  - Danh mục sản phẩm
- Phân tích xu hướng trước – trong – sau khuyến mãi

### 📊 Trực quan hoá
- **Biểu đồ so sánh (Clustered Column / Bar)**
- **Biểu đồ xu hướng theo thời gian**
- Slicer theo:
  - Danh mục
  - Thời gian
  - Trạng thái khuyến mãi

### 💡 Insight rút ra
- Không phải danh mục nào cũng hưởng lợi từ khuyến mãi
- Một số danh mục:
  - Tăng mạnh số lượng bán nhưng **biên lợi nhuận giảm**
- Một số danh mục khác:
  - Ít nhạy cảm với khuyến mãi → phù hợp chiến lược giá ổn định

👉 Phân tích này hỗ trợ:
- Tối ưu **chiến lược khuyến mãi theo danh mục**
- Tránh giảm giá tràn lan gây ảnh hưởng lợi nhuận

---

## 📄 Giấy phép

Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
