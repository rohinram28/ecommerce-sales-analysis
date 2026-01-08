**A. Project Objective**

Analyze one year of e-commerce sales data to understand revenue drivers, customer behavior, product performance, and operational factors such as shipping and payment methods. The goal is to generate actionable business insights using mainly SQL.
The goal is to answer business questions around revenue drivers, customer value, purchasing behavior, and add-on impact.

**B. Dataset Description**

**Source**: Kaggle (Electronic Sales Dataset)
**Records**: ~20,000 transactions
**Time Period**: Sep 2023 – Sep 2024
**Granularity**: Transaction-level sales data

**C. Key Fields**

**Customer demographics**: Age, Gender, Loyalty status
**Sales data**: Total price, Unit price, Quantity
**Product data**: Product type, SKU
**Order data**: Order status, Payment method, Shipping type
**Add-ons**: Add-ons purchased, Add-on total value

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

**Deepdive on Insights**

Used Common Table Expressions (CTEs), window functions, and conditional logic to analyze revenue contribution, month-over-month growth, customer loyalty impact, cancellation rates, and estimated customer lifetime value.

1. **Revenue & Sales Performance Overview**

i. Revenue is not evenly distributed across transactions — a relatively small number of orders contribute disproportionately to total revenue.

ii. High-value transactions significantly lift overall sales, indicating the presence of premium purchases or bulk buying behavior. (This confirms the importance of focusing not just on volume, but also on order value optimization.)

**Key takeaway**: Revenue growth can be accelerated by targeting high-value orders rather than only increasing transaction count.

2. **Product Performance Analysis**

i. Certain product categories (e.g., Smartphones / Electronics) consistently outperform others in total revenue.

ii. Some products generate high revenue despite lower quantities, indicating premium pricing. 

iii. Other products sell frequently but contribute less revenue, explaining low-margin, high-volume behavior.

**Key takeaway**: The Product strategy should differentiate between revenue drivers and volume drivers, with tailored pricing and promotion strategies for each.


<img width="1095" height="752" alt="Screenshot 2026-01-08 at 16 07 40" src="https://github.com/user-attachments/assets/24e1fd7a-aca1-41dd-9112-1aa8330cf863" />


3. **Customer Segmentation & Loyalty Impact**

i. Loyalty members show higher average order values compared to non-members.

ii. Repeat purchase behavior is more common among loyalty members.

iii. This indicates that loyalty programs positively influence both customer retention and spend per customer.

**Key takeaway**: Investing in loyalty programs yields measurable revenue uplift and improves

4. **Customer Lifetime Value (CLV) & Top Customers**

i. A small group of customers contributes very high lifetime revenue (top 10 customers).

ii. These customers also tend to place multiple orders, reinforcing the Pareto principle (80/20 rule).

iii. Losing even a few of these customers would have a significant revenue impact.

**Key takeaway**: High-value customers should be prioritized with personalized offers, priority support, and retention strategies.


<img width="1094" height="677" alt="Screenshot 2026-01-08 at 16 17 47" src="https://github.com/user-attachments/assets/73740ccc-b33c-4378-8545-5fc0d3716999" />


5. **Add-ons Impact on Revenue**

i. Orders with add-ons have a significantly higher average order value than those without.

ii. Add-ons clearly act as a revenue multiplier, not just an optional extra.

iii. Even a modest increase in add-on adoption could generate meaningful incremental revenue.

**Key takeaway**: Add-ons are a strong upsell lever and should be actively promoted at checkout or via recommendations.

6. **Order Behavior & Completion Analysis**

i. Completed orders represent the vast majority of revenue.

ii. Cancelled or incomplete orders contribute minimal value but may still incur operational costs.

iii. Improving conversion and reducing drop-offs directly improves revenue efficiency.

**Key takeaway**: Optimizing checkout experience and payment success rates has a direct, measurable revenue impact.

  <img width="1098" height="538" alt="Screenshot 2026-01-08 at 16 22 50" src="https://github.com/user-attachments/assets/94562a6d-b9ca-4d73-bf45-d7a3b9ef6180" />



