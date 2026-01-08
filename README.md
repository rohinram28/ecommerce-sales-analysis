**A. Project Objective**

Analyze one year of e-commerce sales data to understand revenue drivers, customer behavior, product performance, and operational factors such as shipping and payment methods. The goal is to generate actionable business insights using mainly SQL.
The goal is to answer business questions around revenue drivers, customer value, purchasing behavior, and add-on impact.

**B. Dataset Description**

1. **Source**: Kaggle (Electronic Sales Dataset)
2. **Records**: ~20,000 transactions
3. **Time Period**: Sep 2023 – Sep 2024
4. **Granularity**: Transaction-level sales data

**C. Key Fields**

1. **Customer demographics**: Age, Gender, Loyalty status
2. **Sales data**: Total price, Unit price, Quantity
3. **Product data**: Product type, SKU
4. **Order data**: Order status, Payment method, Shipping type
5. **Add-ons**: Add-ons purchased, Add-on total value

**D. Business Questions Addressed**

1. What is the overall sales and revenue performance?
2. Which products and categories drive the most revenue?
3. How does customer loyalty influence spending?
4. What is the Average Order Value (AOV)?
5. Who are the top customers by lifetime value?
6. Do add-ons increase order value and revenue?

 
**Data Observation**

The dataset contains 20,000 e-commerce transactions across one year

Minimal missing data; missing add-on values (represent customers without add-on purchases)

Purchase Date stored as a string, requiring transformation

There is a mix of numerical and categorical variables, which is good for KPI and segmentation analysis

**SQL Analysis**

The cleaned dataset was loaded into a SQLite database. SQL queries were written to calculate KPIs such as total revenue, average order value, monthly sales trends, and customer segmentation (loyalty vs non-loyalty). 


 <img width="1099" height="812" alt="Screenshot 2026-01-08 at 15 52 33" src="https://github.com/user-attachments/assets/e62e6924-042b-4b36-b991-d4854231b3e5" />


<img width="1094" height="585" alt="Screenshot 2026-01-08 at 15 53 03" src="https://github.com/user-attachments/assets/84943716-f7ed-4004-b8e8-2ab8af50b265" />

Visit Deepdive.md file for indepth analysis
