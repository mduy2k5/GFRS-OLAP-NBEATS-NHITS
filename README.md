# 🧊 Global Fashion Retail

Dự án này xây dựng **mô hình OLAP (Online Analytical Processing)** cho ngành **bán lẻ thời trang**
Dự án được phát triển bằng **Visual Studio (SSDT)**, sử dụng dữ liệu đã được nạp vào **Data Warehouse**, nhằm phục vụ mục đích **học tập và tham khảo trong môn học**.

# ⏱️ Time Series Forecasting with N-BEATS & N-HiTS

Phần này của dự án tập trung vào **dự báo chuỗi thời gian (Time Series Forecasting)** dựa trên dữ liệu bán lẻ đã được xử lý và tổng hợp từ **Data Warehouse & OLAP (SSAS)**.

Mục tiêu là **dự đoán xu hướng doanh thu / sản lượng trong tương lai**, phục vụ cho:
- Hoạch định kinh doanh
- Quản lý tồn kho
- Đánh giá hiệu quả chiến lược bán hàng và khuyến mãi

Dự án sử dụng hai mô hình deep learning hiện đại:
- **N-BEATS**
- **N-HiTS**

---

## 🎯 Mục tiêu dự án

- Xây dựng mô hình dự báo **không cần giả định thống kê truyền thống**.
- So sánh hiệu quả giữa:
  - N-BEATS (baseline mạnh)
  - N-HiTS (tối ưu cho chuỗi dài và nhiều mùa vụ)
- Phân tích kết quả dự báo để hỗ trợ quyết định kinh doanh.

---

## 📊 Dữ liệu đầu vào
- Doanh thu theo **tháng / quý**
- Số lượng bán theo **danh mục / sub-category**

Nguồn dữ liệu ban đầu: **Global Fashion Retail Dataset (Kaggle)**.

---

## 🧠 Giới thiệu mô hình sử dụng

### 🔹 N-BEATS (Neural Basis Expansion Analysis for Time Series)

**N-BEATS** là mô hình deep learning thuần (fully-connected) được thiết kế riêng cho forecasting.

**Đặc điểm chính:**
- Không cần feature engineering phức tạp
- Không giả định chuỗi phải dừng (stationary)
- Học trực tiếp:
  - Xu hướng (Trend)
  - Mùa vụ (Seasonality)

**Ưu điểm:**
- Kiến trúc đơn giản nhưng hiệu quả cao
- Dễ triển khai và làm baseline
- Hiệu quả với chuỗi ngắn – trung bình

---

### 🔹 N-HiTS (Neural Hierarchical Interpolation for Time Series)

**N-HiTS** là phiên bản cải tiến của N-BEATS, được tối ưu cho:
- Chuỗi thời gian dài
- Chuỗi có nhiều mùa vụ phức tạp

**Cải tiến nổi bật:**
- Kiến trúc phân cấp (Hierarchical)
- Downsampling thông minh
- Nội suy (Interpolation) giúp giảm độ phức tạp tính toán

**Ưu điểm:**
- Huấn luyện nhanh hơn trên chuỗi dài
- Độ chính xác cao hơn N-BEATS trong nhiều bài toán thực tế
- Phù hợp với dữ liệu bán lẻ có chu kỳ dài (năm, mùa)

---

## 🛠️ Công nghệ sử dụng
- **NeuralForecast / Darts (tuỳ framework sử dụng)**
- **Pandas, NumPy** – xử lý dữ liệu
- **Matplotlib / Plotly** – trực quan hoá kết quả
- **Google Colab** – thực nghiệm và phân tích

---

## ⚙️ Quy trình thực hiện

1. **Chuẩn bị dữ liệu**
   - Trích xuất dữ liệu tổng hợp từ Kaggle
   - Chuyển sang format time series (`date`, `value`)
   - Chia tập Train / Validation / Test

2. **Huấn luyện mô hình**
   - Train N-BEATS
   - Train N-HiTS với cùng tập dữ liệu

3. **Dự báo**
   - Dự báo ngắn hạn và trung hạn
   - So sánh kết quả giữa các mô hình

4. **Đánh giá**
   - MAE / RMSE / MAPE
   - So sánh trực quan giữa:
     - Actual vs Forecast
     - N-BEATS vs N-HiTS

---

## 📈 Kết quả đạt được

- Mô hình học được xu hướng và mùa vụ của dữ liệu bán lẻ
- N-HiTS cho kết quả:
  - Ổn định hơn với chuỗi dài
  - Ít nhiễu hơn trong dự báo dài hạn
- Forecast hỗ trợ:
  - Lập kế hoạch bán hàng
  - Ước lượng nhu cầu tương lai

---


## ⭐ Gợi ý mở rộng

- Thêm biến ngoại sinh (promotion, holiday)
- So sánh với ARIMA / Prophet
- Kết hợp forecast vào Power BI để mô phỏng kịch bản


## 📄 Giấy phép

Dự án được xây dựng cho **mục đích học tập và đồ án môn học**.  
Nội dung mang tính tham khảo — **không sử dụng cho mục đích thương mại hoặc tái phân phối**.
