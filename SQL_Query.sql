-- A.	BANK LOAN REPORT | SUMMARY --
-- KPI’s:-
-- Total Loan Applications --

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data

-- MTD Loan Applications --
SELECT COUNT(id) AS MTD_Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2021

-- PMTD Loan Applications --
SELECT COUNT(id) AS PMTD_Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2021

-- Total Funded Amount --
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data

-- MTD Total Funded Amount --
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Total Funded Amount --
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11

-- Total Amount Received --
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data

-- MTD Total Amount Received --
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Total Amount Received --
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11

-- Average Interest Rate --
SELECT ROUND(AVG(int_rate),4) * 100 AS Avg_Int_Rate FROM bank_loan_data

-- MTD Average Interest --
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Average Interest --
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11

-- Avg DTI --
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data

-- MTD Avg DTI --
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12

-- PMTD Avg DTI --
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11

-- GOOD LOAN ISSUED --

-- Good Loan Percentage --
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data

-- Good Loan Applications --
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Funded Amount --
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Good Loan Amount Received --
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- BAD LOAN ISSUED --

-- Bad Loan Percentage --
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data

-- Bad Loan Applications --
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- Bad Loan Funded Amount --
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- Bad Loan Amount Received --
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off'

-- LOAN STATUS -- 

	SELECT
	 loan_status,
     COUNT(id) AS Total_Loan_Application,
     SUM(total_payment) AS Total_Amount_Received,
     SUM(loan_amount) AS Total_Funded_Amount,
     ROUND(AVG(int_rate * 100),2) AS Interest_Rate,
     ROUND(AVG(dti * 100),2) AS DTI
FROM
     bank_loan_data
GROUP BY
     loan_status

SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

-- MONTH --
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

-- STATE --
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY address_state
ORDER BY address_state

-- TERM --
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY term
ORDER BY term

-- EMPLOYEE LENGTH --
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY emp_length
ORDER BY emp_length

-- PURPOSE --
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY purpose
ORDER BY purpose

-- HOME OWNERSHIP --
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM bank_loan_data
GROUP BY home_ownership
ORDER BY home_ownership

-- Average DTI by Loan Status:-
SELECT loan_status,
       ROUND(AVG(dti * 100),2) AS Avg_DTI
FROM bank_loan_data
GROUP BY loan_status

-- Loan Performance by Grade:-
SELECT grade,
       COUNT(id) AS Applications,
       SUM(loan_amount) AS Funded_Amount
FROM bank_loan_data
GROUP BY grade

-- Applications by Month: --
SELECT YEAR(issue_date) AS Year,
       MONTH(issue_date) AS Month,
       COUNT(id) AS Monthly_Applications
FROM bank_loan_data
GROUP BY YEAR(issue_date), MONTH(issue_date)
ORDER BY Year, Month

-- Loans with DTI > 14%:-
SELECT id, loan_amount, dti * 100 AS DTI_Percent, grade
FROM bank_loan_data
WHERE dti > 0.14
ORDER BY dti DESC

-- Funded Amount by State:-
SELECT state,
       SUM(loan_amount) AS Total_Funded,
       COUNT(id) AS Applications
FROM bank_loan_data
GROUP BY state
HAVING SUM(loan_amount) > 10000000
ORDER BY Total_Funded DESC

























