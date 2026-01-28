/******************************************************************
 Script: Drop & Recreate all dimension and fact tables + FK constraints
 Dialect: Microsoft SQL Server
 Usage: Copy & execute. It will drop existing tables (if any) and
        create fresh tables plus foreign key constraints.
******************************************************************/

-- Drop tables if exist (order doesn't strictly matter here because we drop all)
DROP TABLE IF EXISTS Fact_TRANSACTIONS;
DROP TABLE IF EXISTS DISCOUNTS_BRIDGE;
DROP TABLE IF EXISTS Dim_DISCOUNTS;
DROP TABLE IF EXISTS Dim_PRODUCTS;
DROP TABLE IF EXISTS Dim_EMPLOYEES;
DROP TABLE IF EXISTS Dim_STORES;
DROP TABLE IF EXISTS Dim_CUSTOMER;
DROP TABLE IF EXISTS Dim_DATE;
DROP TABLE IF EXISTS Dim_COLORS;
DROP TABLE IF EXISTS Dim_SIZES;
DROP TABLE IF EXISTS Dim_CATEGORIES;
DROP TABLE IF EXISTS Dim_SUBCATEGORIES;
DROP TABLE IF EXISTS Dim_LOCATION;
DROP TABLE IF EXISTS Dim_TRANSACTIONTYPE;
DROP TABLE IF EXISTS Dim_PAYMENTMETHOD;
CREATE TABLE [Dim_LOCATION] (
  [Location_id] INT IDENTITY(1,1) PRIMARY KEY,
  [Country] VARCHAR(50),
  [City] VARCHAR(50)
)
GO

CREATE TABLE [Dim_CUSTOMER] (
  [CustomerID] BIGINT IDENTITY(1,1) PRIMARY KEY,
  [CustomerHash] BIGINT,
  [Gender] VARCHAR(50),
  [JobTitle] VARCHAR(100),
  [Age] INT,
  [LocationID] INT
)
GO

CREATE TABLE [Dim_STORES] (
  [StoreID] INT IDENTITY(1,1) PRIMARY KEY,
  [StoreHash] BIGINT,
  [StoreName] VARCHAR(255),
  [NumberOfEmployees] INT,
  [LocationID] INT
)
GO

CREATE TABLE [Dim_EMPLOYEES] (
  [EmployeeID] INT IDENTITY(1,1) PRIMARY KEY,
  [EmployeeHash] BIGINT,
  [StoreID] INT,
  [Position] VARCHAR(255)
)
GO

CREATE TABLE [Dim_CATEGORIES] (
  [CategoryID] INT IDENTITY(1,1) PRIMARY KEY,
  [Category] VARCHAR(255)
)
GO

CREATE TABLE [Dim_SUBCATEGORIES] (
  [SubCategoryID] INT IDENTITY(1,1) PRIMARY KEY,
  [SubCategory] VARCHAR(255)
)
GO

CREATE TABLE [Dim_DISCOUNTS] (
  [DiscountID] INT IDENTITY(1,1) PRIMARY KEY,
  [Start] DATETIME,
  [End] DATETIME,
  [Discount] DECIMAL(10,2),
  [Description] VARCHAR(255),
  [SubCategoryID] INT,
  [CategoryID] INT
)
GO
-- Insert default row as in your original script (optional)
INSERT INTO Dim_DISCOUNTS([Start], [End], [Discount], [SubCategoryID], [CategoryID])
VALUES (NULL, NULL, 0.0, NULL, NULL);


CREATE TABLE [DISCOUNTS_BRIDGE] (
  [DateDiscountID] INT IDENTITY(1,1) PRIMARY KEY,
  [DiscountID] INT,
  [DateValue] DATETIME,
  [Discount] DECIMAL(10,2),
  [SubCategoryID] INT,
  [CategoryID] INT
)
GO

CREATE TABLE [Dim_COLORS] (
  [ColorID] INT IDENTITY(1,1) PRIMARY KEY,
  [Color] VARCHAR(255)
)
GO

CREATE TABLE [Dim_SIZES] (
  [SizeID] INT IDENTITY(1,1) PRIMARY KEY,
  [Size] VARCHAR(255)
)
GO

CREATE TABLE [Dim_PRODUCTS] (
  [ProductID] INT IDENTITY(1,1) PRIMARY KEY,
  [ProductHash] BIGINT,
  [Description] VARCHAR(255),
  [CategoryID] INT,
  [ColorID] INT,
  [SubCategoryID] INT,
  [SizeID] INT,
  [ProductionCost] DECIMAL(18,2)
)
GO

CREATE TABLE [Dim_TRANSACTIONTYPE] (
  [TransactionTypeID] INT IDENTITY(1,1) PRIMARY KEY,
  [Transaction] VARCHAR(255)
)
GO

CREATE TABLE [Dim_PAYMENTMETHOD] (
  [PaymentMethodID] INT IDENTITY(1,1) PRIMARY KEY,
  [PaymentMethod] VARCHAR(255)
)
GO

CREATE TABLE [Dim_DATE] (
  [DateID] INT IDENTITY(1,1) PRIMARY KEY,
  [FullDate] DATETIME,
  [DateOfPurchase] INT,
  [MonthOfPurchase] INT,
  [YearOfPurchase] INT,
  [QuarterOfPurchase] INT,
  [DayOfWeek] INT
)
GO

CREATE TABLE [Fact_TRANSACTIONS] (
  [InvoiceID] BIGINT IDENTITY(1,1) PRIMARY KEY,
  [InvoiceHash] VARCHAR(50),
  [Line] INT,
  [Quantity] INT,
  [UnitPrice] INT,
  [Currency] VARCHAR(255),
  [LineTotal] DECIMAL(18,2),
  [InvoiceTotal] DECIMAL(18,2),
  [HourOfPurchase] INT,
  [CustomerID] BIGINT,
  [EmployeeID] INT,
  [StoreID] INT,
  [DiscountID] INT,
  [DateID] INT,
  [ColorID] INT,
  [SizeID] INT,
  [TransactionTypeID] INT,
  [PaymentMethodID] INT,
  [ProductID] INT
)
GO

--------------------------------------------------------------------------------
-- Add Foreign Key constraints
--------------------------------------------------------------------------------

-- CUSTOMER & STORES -> LOCATION
ALTER TABLE Dim_CUSTOMER
ADD CONSTRAINT FK_Customer_Location FOREIGN KEY (LocationID) REFERENCES Dim_LOCATION(Location_id);

ALTER TABLE Dim_STORES
ADD CONSTRAINT FK_Store_Location FOREIGN KEY (LocationID) REFERENCES Dim_LOCATION(Location_id);

-- EMPLOYEES -> STORES
ALTER TABLE Dim_EMPLOYEES
ADD CONSTRAINT FK_Employee_Store FOREIGN KEY (StoreID) REFERENCES Dim_STORES(StoreID);

-- DISCOUNTS -> CATEGORIES / SUBCATEGORIES
ALTER TABLE Dim_DISCOUNTS
ADD CONSTRAINT FK_Discount_Category FOREIGN KEY (CategoryID) REFERENCES Dim_CATEGORIES(CategoryID);

ALTER TABLE Dim_DISCOUNTS
ADD CONSTRAINT FK_Discount_SubCategory FOREIGN KEY (SubCategoryID) REFERENCES Dim_SUBCATEGORIES(SubCategoryID);

-- DISCOUNTS_BRIDGE -> Dim_DISCOUNTS, Category, SubCategory
ALTER TABLE DISCOUNTS_BRIDGE
ADD CONSTRAINT FK_Bridge_Discount FOREIGN KEY (DiscountID) REFERENCES Dim_DISCOUNTS(DiscountID);

ALTER TABLE DISCOUNTS_BRIDGE
ADD CONSTRAINT FK_Bridge_Category FOREIGN KEY (CategoryID) REFERENCES Dim_CATEGORIES(CategoryID);

ALTER TABLE DISCOUNTS_BRIDGE
ADD CONSTRAINT FK_Bridge_SubCategory FOREIGN KEY (SubCategoryID) REFERENCES Dim_SUBCATEGORIES(SubCategoryID);

-- PRODUCTS -> CATEGORY, SUBCATEGORY, COLOR, SIZE
ALTER TABLE Dim_PRODUCTS
ADD CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryID) REFERENCES Dim_CATEGORIES(CategoryID);

ALTER TABLE Dim_PRODUCTS
ADD CONSTRAINT FK_Product_SubCategory FOREIGN KEY (SubCategoryID) REFERENCES Dim_SUBCATEGORIES(SubCategoryID);

ALTER TABLE Dim_PRODUCTS
ADD CONSTRAINT FK_Product_Color FOREIGN KEY (ColorID) REFERENCES Dim_COLORS(ColorID);

ALTER TABLE Dim_PRODUCTS
ADD CONSTRAINT FK_Product_Size FOREIGN KEY (SizeID) REFERENCES Dim_SIZES(SizeID);

-- FACT -> Dimensions
ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Customer FOREIGN KEY (CustomerID) REFERENCES Dim_CUSTOMER(CustomerID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Product FOREIGN KEY (ProductID) REFERENCES Dim_PRODUCTS(ProductID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Size FOREIGN KEY (SizeID) REFERENCES Dim_SIZES(SizeID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Discount FOREIGN KEY (DiscountID) REFERENCES Dim_DISCOUNTS(DiscountID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Employee FOREIGN KEY (EmployeeID) REFERENCES Dim_EMPLOYEES(EmployeeID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Store FOREIGN KEY (StoreID) REFERENCES Dim_STORES(StoreID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Date FOREIGN KEY (DateID) REFERENCES Dim_DATE(DateID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Color FOREIGN KEY (ColorID) REFERENCES Dim_COLORS(ColorID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Payment FOREIGN KEY (PaymentMethodID) REFERENCES Dim_PAYMENTMETHOD(PaymentMethodID);

ALTER TABLE Fact_TRANSACTIONS
ADD CONSTRAINT FK_Transaction_Type FOREIGN KEY (TransactionTypeID) REFERENCES Dim_TRANSACTIONTYPE(TransactionTypeID);

