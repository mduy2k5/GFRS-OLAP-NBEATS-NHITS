# Global Fashion Retail

## Overview
- This project builds an **OLAP (Online Analytical Processing) model** for the **fashion retail** industry.
- The project was developed using **Visual Studio (SSDT)**, utilizing data loaded into a **Data Warehouse**, for **learning and academic reference purposes**.
- Dataset Link: https://www.kaggle.com/datasets/ricgomes/global-fashion-retail-stores-dataset

## Disclaimer
- This repository contains only my personal contributions.
- You can view the full repository here: https://github.com/TranDaiHai2107/Global-Fashion-Retail-Analytics

## Objectives
- Build a **Data Warehouse** for fashion retail data.
- Implement an **ETL Pipeline** to clean and standardize data.
- Design an **OLAP Cube (SSAS)** for multidimensional analysis.
- Extract business insights through **Power BI**.
- Apply **Deep Learning** for retail time series forecasting.

## Overall System Architecture
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
## Technologies Used
- SQL Server / SSMS – Data Warehouse
- SSIS (SQL Server Integration Services) – ETL
- SSAS (SQL Server Analysis Services) – OLAP & MDX
- Power BI – Dashboard & Data Visualization
- Python – Time Series Forecasting
- N-BEATS, N-HiTS – Deep Learning Models

## Branch Structure
- `main`: Project overview & system architecture
- `ssis`: ETL Pipeline & Data Warehouse
- `ssas`: OLAP Cube, MDX Measures
- `analysis`: Dashboard & business analytics
- `timeseries-forecasting`: Time series forecasting

## License
- This project was built for learning and academic purposes.
- The content is for reference only — do not use for commercial purposes or redistribution.
