# Data-Detectives
Digital Egypt Pioneers (DEPI) scholarship Graduation Project provided by the ministry of communications and information technology 


# Bank Loan Analysis with Power BI & SQL  
![Power BI](https://img.shields.io/badge/PowerBI-2023-blue) ![SQL](https://img.shields.io/badge/SQL-2023-green)  

---
## Table of Contents  
1. [Project Objectives](#project-objectives)  
2. [Dataset Overview](#dataset-overview)  
3. [Technologies & Tools](#technologies--tools)  
4. [Methodology](#methodology)  
5. [Key Performance Indicators (KPIs)](#key-performance-indicators-kpis)  
6. [Dashboard Visuals](#dashboard-visuals)  
7. [Project Timeline & Milestones](#project-timeline--milestones)  
8. [Deliverables](#deliverables)  
9. [Roles & Responsibilities](#roles--responsibilities)  
10. [Setup & Execution Guide](#setup--execution-guide)  
11. [Future Enhancements](#future-enhancements)  
12. [Contact Information](#contact-information)  
13. [Contributions & Support](#contributions--support)  
14. [Copyright & Licensing](#copyright--licensing)  

---

## Project Objectives  
- Analyze bank loan data to assess risk, profitability, and customer behavior.  
- Identify trends in loan approvals, defaults, and repayment patterns.  
- Provide actionable insights to optimize lending strategies and reduce losses.  
- Develop interactive dashboards for real-time monitoring of loan portfolios.  

---

## Dataset Overview  
The dataset (`bank_loan_data`) includes **38,600 loan records** with the following key fields:  
- `Loan ID`, `Issue Date`, `Loan Status`, `Loan Amount`, `Interest Rate`, `DTI`, `Term`, `Purpose`, `Address State`, `Employee Length`, and more.  
- **Data Source**: Internal bank records, credit reports, and customer applications.  

---

## Technologies & Tools  
- **Database**: MS SQL Server  
- **Analytics**: Power BI (Dashboards), Python (Optional for advanced analytics)  
- **Data Processing**: SQL Queries, Excel  
- **Version Control**: GitHub  

---

## Methodology  
1. **Data Collection**: Import raw loan data into SQL Server.  
2. **Data Cleaning**: Handle missing values, outliers, and inconsistencies.  
3. **Exploratory Analysis**: Calculate KPIs and segment data by risk, region, and loan purpose.  
4. **Visualization**: Build interactive dashboards in Power BI.  
5. **Insights Generation**: Derive recommendations for risk management and profitability.  

---

## Key Performance Indicators (KPIs)  
| KPI                  | Description                                  |  
|----------------------|----------------------------------------------|  
| Total Applications   | 38,600 loans analyzed                        |  
| Funded Amount        | $435.8M disbursed                            |  
| Average Interest Rate| 12.05%                                       |  
| Good Loan %          | 86.2% (Low-risk loans)                       |  
| Bad Loan %           | 13.8% (Defaults/Charged Off)                 |  

---

## Dashboard Visuals  
### Summary Page  
![Summary Page](https://drive.google.com/uc?id=1BeVnv3tcy1ms8e_fmDK_kyVTL7AKFBEL)

*Key metrics: Loan applications, funded amounts, received amounts.*  

### Overview Page  
![Summary Page](https://drive.google.com/file/d/1qLn8pXZi-pPRotecbaSNqibFKcn9Zmb2/view?usp=drive_link)

---

## Project Timeline & Milestones  
| Phase                | Duration       | Milestones                          |  
|----------------------|----------------|-------------------------------------|  
| Data Preparation     | Week 1-2       | Clean and validate dataset          |  
| Exploratory Analysis | Week 3-4       | Identify trends and KPIs            |  
| Dashboard Development| Week 5-6       | Build Power BI dashboards           |  
| Final Reporting      | Week 7         | Deliver insights and recommendations|  

---

## Deliverables  
1. **SQL Scripts**: For data cleaning and KPI calculations.  
2. **Power BI Dashboards**: Interactive visuals for stakeholders.  
3. **Final Report**: Insights, trends, and recommendations (PDF).  

---

## Roles & Responsibilities  
- **Data Analyst**: Clean data, build dashboards, generate insights.  
- **Domain Expert**: Validate business logic and risk models.  
- **Project Manager**: Track timelines and deliverables.  

---

## Setup & Execution Guide  
1. **Prerequisites**:  
   - Install [MS SQL Server](https://www.microsoft.com/en-us/sql-server) and [Power BI Desktop](https://powerbi.microsoft.com/).  
2. **Run SQL Queries**:  
   ```sql  
   -- Example: Calculate total funded amount  
   SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data;  
