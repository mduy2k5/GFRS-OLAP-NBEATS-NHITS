# Global Fashion Retail OLAP Analysis (SSAS & Power BI)

This project builds an **OLAP (Online Analytical Processing) model** for the **fashion retail** industry, using **SQL Server Analysis Services (SSAS – Multidimensional)** to design **Dimensions, Cubes, and Measures** for **analytical queries and reporting** in **Power BI**. 

The project was developed using **Visual Studio (SSDT)**, utilizing data loaded into a **Data Warehouse**, for **learning and academic reference purposes**.

# MDX Queries & Power BI Analytics (SSAS)

This branch focuses on the **Analytics Layer** of the OLAP project, including:

- **MDX queries** on the SSAS Multidimensional Cube
- **Power BI Dashboards** connecting directly to SSAS
- Demonstrations of how to leverage OLAP data for business analytics

## Objectives

- Illustrate **SSAS Multidimensional & MDX** skills
- Demonstrate the ability to build **BI Dashboards**
- Serve for **learning, presentation, and portfolio** purposes


## Main Contents

### MDX Queries (`mdx/`)
- Basic and advanced OLAP queries
- Time intelligence analysis (YTD, MTD)
- Top-N, Ranking
- Calculated Members & KPIs


### Power BI Dashboards (`powerbi/`)
- Dashboards built on **Live Connection / DirectQuery** to SSAS
- Contains no actual data

## Data & Security Notice

- This branch **does not contain real data**
- Does not store:
  - Real connection strings
  - Passwords
  - Internal users
- Users must manually configure the SSAS connection according to their environment

# Project Highlights

## 1. Pareto Analysis – The 80/20 Rule in Retail

### Analysis Objectives
Identify:
- **Core products / categories** that generate the majority of revenue
- The concentration of revenue within the retail system

### Approach
- Use **Total Sales** as the primary metric
- Sort products by descending revenue
- Calculate the **Cumulative Percentage** of revenue
- Identify the **80% revenue threshold**

### Visualization
- **Column chart**: Revenue by product / category
- **Cumulative line (%)**: Illustrates the Pareto principle
- Highlighted areas:
  - Core product group (approx. 20%)
  - Remaining product group (approx. 80%)

### Key Insights
- A **small percentage of products** contributes to the **majority of revenue**
- The business should:
  - Prioritize inventory for the core product group
  - Focus marketing and display efforts on this group
  - Review strategies for low-performing products

### Result
![Pareto_PerSubCategory](https://github.com/mduy2k5/GFRS-OLAP-NBEATS-NHITS/blob/5785268b6df117828ef2b74a6c77eb04a06bb98d/Pareto_PerSubCategory.png)

Note: Pareto analysis facilitates **data-driven decision-making**, replacing intuition.

## 2. Analyzing the Impact of Promotions on Product Categories

### Analysis Objectives
Evaluate:
- Whether promotions **actually drive revenue**
- The **varying degrees of impact** across different product categories

### Approach
- Compare metrics:
  - Revenue
  - Sales volume
- Segment data by:
  - Promotion / No Promotion
  - Product Category
- Analyze trends before, during, and after promotions

### Visualization
- **Comparison charts (Clustered Column / Bar)**
- **Time-series trend charts**
- Slicers for:
  - Category
  - Time
  - Promotion status

### Key Insights
- Not all categories benefit from promotions
- Some categories:
  - Experience a significant increase in sales volume but a **decrease in profit margins**
- Other categories:
  - Are less sensitive to promotions, making them suitable for stable pricing strategies

### Result
![Discount_PerSubCategory](https://github.com/mduy2k5/GFRS-OLAP-NBEATS-NHITS/blob/5785268b6df117828ef2b74a6c77eb04a06bb98d/Discount_PerSubCategory.png)

Note: This analysis supports:
- Optimizing **promotional strategies by category**
- Avoiding blanket discounts that negatively impact profitability

## License
- This project was built for **learning and academic purposes**.  
- The content is for reference only — **do not use for commercial purposes or redistribution**.
