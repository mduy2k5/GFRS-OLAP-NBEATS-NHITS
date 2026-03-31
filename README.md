# Global Fashion Retail

This project builds an **OLAP (Online Analytical Processing) model** for the **fashion retail** industry. 
The project was developed using **Visual Studio (SSDT)**, utilizing data loaded into a **Data Warehouse**, for **learning and academic reference purposes**.

# Time Series Forecasting with N-BEATS & N-HiTS

This section of the project focuses on **Time Series Forecasting** based on retail data processed and aggregated from the **Data Warehouse & OLAP (SSAS)**.

The objective is to **predict future revenue / sales volume trends** to support:
- Business planning
- Inventory management
- Evaluating the effectiveness of sales and promotional strategies

The project utilizes two state-of-the-art deep learning models:
- **N-BEATS**
- **N-HiTS**


## Project Objectives

- Build forecasting models **without relying on traditional statistical assumptions**.
- Compare the performance between:
  - N-BEATS (a strong baseline)
  - N-HiTS (optimized for long horizons and complex seasonality)
- Analyze forecasting results to support business decision-making.


## Input Data

- Revenue by **month / quarter**
- Sales volume by **category / sub-category**

Original data source: **Global Fashion Retail Dataset (Kaggle)**.

## Model Overview

### N-BEATS (Neural Basis Expansion Analysis for Time Series)

**N-BEATS** is a fully-connected deep learning model specifically designed for time series forecasting.

**Key Features:**
- Requires no complex feature engineering
- Does not assume the time series must be stationary
- Directly learns:
  - Trend
  - Seasonality

**Advantages:**
- Simple yet highly effective architecture
- Easy to deploy and use as a baseline
- Effective for short-to-medium length time series

### N-HiTS (Neural Hierarchical Interpolation for Time Series)

**N-HiTS** is an advanced version of N-BEATS, optimized for:
- Long time series horizons
- Time series with complex multiple seasonalities

**Notable Improvements:**
- Hierarchical architecture
- Smart downsampling
- Interpolation techniques to reduce computational complexity

**Advantages:**
- Faster training on long time series
- Higher accuracy than N-BEATS in many real-world scenarios
- Suitable for retail data with long cycles (yearly, seasonal)

## Technologies Used

- **NeuralForecast / Darts** (depending on the framework)
- **Pandas, NumPy** – Data manipulation
- **Matplotlib / Plotly** – Data visualization
- **Google Colab** – Experimentation and analysis

## Implementation Process

1. **Data Preparation**
   - Extract aggregated data from Kaggle
   - Convert to time series format (`date`, `value`)
   - Split into Train / Validation / Test sets

2. **Model Training**
   - Train N-BEATS
   - Train N-HiTS on the same dataset

3. **Forecasting**
   - Short-term and medium-term forecasting
   - Compare results between models

4. **Evaluation**
   - Calculate MAE / RMSE / MAPE metrics
   - Visual comparison between:
     - Actual vs Forecast
     - N-BEATS vs N-HiTS

## Achieved Results

- Models successfully learned the trend and seasonality of the retail data.
- N-HiTS provided:
  - Greater stability over long horizons
  - Less noise in long-term predictions
- The forecasts assist in:
  - Sales planning
  - Estimating future demand
## Future Enhancements

- Incorporate exogenous variables (promotions, holidays)
- Benchmark against traditional models like ARIMA or Prophet
- Integrate forecasting results into Power BI for scenario simulations

## License

- This project was built for **learning and academic purposes**.  
- The content is for reference only — **do not use for commercial purposes or redistribution**.
