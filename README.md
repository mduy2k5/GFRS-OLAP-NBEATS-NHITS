# Global Fashion Retail OLAP Analysis (SSAS & Power BI)

This project builds an **OLAP (Online Analytical Processing) model** for the **fashion retail** industry, using **SQL Server Analysis Services (SSAS – Multidimensional)** to design **Dimensions, Cubes, and Measures** for **analytical queries and reporting** in **Power BI**. 

The project was developed using **Visual Studio (SSDT)**, utilizing data loaded into a **Data Warehouse**, for **learning and academic reference purposes**.

## Project Objectives

- Build a **multidimensional OLAP model** from the fashion retail Data Warehouse.
- Design **Dimensions** (Time, Product, Customer, Store, etc.).
- Build **Cubes and Measure Groups** for business analytics.
- Optimize data for queries:
  - Revenue over time
  - Product performance
  - Region / Store analysis
- Connect and extract OLAP data through **Power BI**.

## Technologies Used

- **SQL Server Analysis Services (SSAS – Multidimensional)** – OLAP & Cube
- **Visual Studio (SSDT)** – SSAS Project development
- **SQL Server (SSMS)** – Data Warehouse
- **Power BI Desktop** – Data visualization & analytics

## Installation & Configuration

### 1. Clone the project
```bash
git clone [https://github.com/mduy2k5/gfrs-olap-nbeats-nhits.git](https://github.com/mduy2k5/gfrs-olap-nbeats-nhits.git)
cd GFRS_SSAS
```
### 2. Configure Data Source (SSAS)
Open the SSAS project in Visual Studio, navigate to the Data Sources folder, edit the .ds file and replace the following values:
```Plaintext
SERVER_NAME → SQL Server instance name
```
Example:
```Plaintext
Data Source=localhost\SQLEXPRESS;
Integrated Security=SSPI;
```
Note:
- The connection string in the repository has sensitive information hidden.
- Users must manually configure the connection according to their own environment.

### 3. Prepare Data Warehouse
- Ensure the Data Warehouse already exists in SQL Server.
- The data schema must match the Data Source View (DSV).
- Recommended model: Star Schema.
## How to Run & Deploy SSAS
1. Open the SSAS project in Visual Studio.
2. Double-check the following:
    - Data Source
    - Data Source View
    - Dimensions & Cubes
3. Right-click the SSAS project → Deploy.
4. Select the SSAS Server and wait for the deployment process to complete.
5. Verify the Cube using:
    - SQL Server Management Studio (SSMS)
    - Or Power BI

## Achieved Results
- A fully constructed OLAP model featuring:
  - Clear Dimensions
  - Measures designed for analytics
- The Cube supports fast and multidimensional queries.
- Data is ready for:
  - Power BI Reports
  - Retail analytics dashboards
  - Advanced BI and analytics tasks
## Security & Data Privacy
- The project does not contain real data.
- It does not include:
  - Passwords
  - Internal users
  - Backup files (.abf, .bak)
- Roles and Security configurations are for demo purposes only.

## License
- This project was built for learning and academic purposes.
- The content is for reference only — do not use for commercial purposes or redistribution.
