# Data-Detectives
DEPI Graduation Project

# Bank Loan Analysis  
![License](https://img.shields.io/badge/license-MIT-green)  
![Power BI](https://img.shields.io/badge/Power%20BI-Active-blue)  
![SQL](https://img.shields.io/badge/SQL-Used-red)  

## 📌 Project Overview  
This project analyzes bank loan data to:  
- Identify patterns in loan defaults.  
- Assess credit risk using **Power BI** and **SQL**.  
- Generate actionable insights for portfolio optimization.  

## 🛠 Tools Used  
| Tool          | Purpose                          |  
|---------------|----------------------------------|  
| **SQL**       | Data cleaning and query building |  
| **Power BI**  | Dashboard design and visualization |  
| **Python**    | Advanced analytics (optional)    |  

## 🚀 Getting Started  
### Step 1: Data Preparation  
```sql  
-- Example SQL query to calculate default rate  
SELECT 
    (COUNT(CASE WHEN Loan_Status = 'Default' THEN 1 END) * 100.0 / COUNT(*)) AS Default_Rate  
FROM Loans;  
