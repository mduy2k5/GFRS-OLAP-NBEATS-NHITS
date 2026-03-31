# Global Fashion Retail Data Warehouse & Time-Series Forecasting

This project builds a **Data Warehouse for the fashion retail industry** and performs **Extract, Transform, Load (ETL)** processes using **SSIS in Visual Studio**, utilizing a dataset from **Kaggle**. 
The project was developed for learning and academic reference purposes.

## Project Objectives

- Utilize the **fashion retail dataset from Kaggle** to build the ETL pipeline.
- Clean, standardize, and load data into the SQL Server Data Warehouse.
- Automate the data processing pipeline through **SSIS (SQL Server Integration Services)**.
- Prepare data for future **business analytics** and **time-series forecasting** tasks.

## Technologies Used

- **SQL Server Integration Services (SSIS)** – ETL process
- **Visual Studio** – SSIS Package development
- **SQL Server (SSMS)** – Data Warehouse storage and management

## Installation & Configuration

### 1. Clone the project
```bash
git clone https://github.com/mduy2k5/gfrs-olap-nbeats-nhits/blob/SSIS/
cd GFRS_SSIS
```
### 2. Configure data path
Open the Package.dtsx, GFRS_SSIS.dtproj files and replace:
```bash
YOUR_DATA_LINK → absolute path to your dataset folder
```
Example:
```bash
C:\Data\GlobalFashionRetail\
```
### 3. Configure SQL Server
In Package.dtsx and GFRS_SSIS.dtproj, update:
```Bash
YOUR_SERVER_NAME → SQL Server instance name in SSMS
```
Example:
```Bash
DESKTOP-ABC123\SQLEXPRESS
```
Note: After configuring, you should close and reopen the project for SSIS to reload the connection settings.
## How to run the SSIS project
1. Open the project in Visual Studio
2. Double-check all Connection Managers
3. Right-click the Package.dtsx file → Run Package
4. Open SSMS → verify that the data has been loaded into the Data Warehouse
## Achieved Results
- The ETL pipeline runs successfully and fully loads data from Kaggle.
- Data is restructured for analysis and reporting purposes.
- The project lays the groundwork for:
- Power BI Reports
- Retail analytics dashboard
- Time-Series Forecasting models
## License
- This project is used for academic course assignments.
- The content is for reference only — do not reuse for commercial purposes or redistribution.
