-- Data Cleaning Using SQL
-- Overview of data
SELECT * 
FROM customer_churn_records;

SELECT COUNT(*)
FROM customer_churn_records;

-- Check of null values for every columns
SELECT * 
FROM customer_churn_records
WHERE point_earned IS NULL;

-- Convert balance and estimated_salary column values to 2dp
UPDATE customer_churn_records
SET balance = ROUND(balance, 2);

UPDATE customer_churn_records
SET estimated_salary = ROUND(estimated_salary, 2);

-- Change the card_type values to proper case
UPDATE customer_churn_records
SET card_type = INITCAP(card_type);

-- Count how many customer churned out of total customers
SELECT 
	CASE 
  		WHEN exited = 1 THEN 'Churn'
       	ELSE 'Not Churn'
    END AS STATUS,
	COUNT(exited) AS num_customers
FROM customer_churn_records
GROUP BY STATUS;

-- Count how many active customer that churned
SELECT 
	CASE 
		WHEN is_active_member = 1 THEN 'Active'
		ELSE 'Not Active'
    END AS is_active_member,
	COUNT(CASE WHEN exited = 1 THEN 1 END) AS Churn
FROM customer_churn_records
GROUP BY is_active_member; 

-- Distribution of churn customers by gender
SELECT 
	gender,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY gender;

-- Distribution of churn customers by location
SELECT 
 	geography,
 	COUNT (CASE WHEN exited = 1 THEN 1 END) AS Churn
FROM customer_churn_records
GROUP BY geography;

-- Distribution of churn customers by age group
SELECT
	CASE
		WHEN age <= 20 THEN '20 years old or below'
		WHEN age >= 21 AND age <= 30 THEN '21 - 30 years old'
		WHEN age >= 31 AND age <= 40 THEN '31 - 40 years old'
		WHEN age >= 41 AND age <= 50 THEN '41 - 50 years old'
		WHEN age >= 51 AND age <= 60 THEN '51 - 60 years old'
		ELSE 'More then 60 years old'
	END AS age_category,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY age_category
ORDER BY churn DESC;

-- Compare average tenure between churn and non-churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(tenure), 2) AS avg_tenure
FROM customer_churn_records
GROUP BY status;

-- Distribution of churn customers by tenure
SELECT
	tenure,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY tenure
ORDER BY churn DESC;

-- Find out what is the average, max and min credit score among churn customers
SELECT
	ROUND(AVG(credit_score), 2),
	MAX(credit_score),
	MIN(credit_score)
FROM customer_churn_records
WHERE exited = 1;

-- Distribution of churn customers by credit score
SELECT
	CASE
		WHEN credit_score >= 800 THEN 'Excellent (>=800)'
    	WHEN credit_score >= 700 THEN 'Very Good (700-799)'
    	WHEN credit_score >= 600 THEN 'Good (600-699)'
    	WHEN credit_score >= 500 THEN 'Fair (500-599)'
    	ELSE 'Poor'
	END AS credit_score_category,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY credit_score_category
ORDER BY churn DESC;

-- Distribution of churn customers by the number of products they have
SELECT 
	num_of_products,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY num_of_products
ORDER BY churn DESC;

-- Compare average number of products between churn and non-churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(num_of_products), 2) AS avg_num_of_products
FROM customer_churn_records
GROUP BY status;

-- Distribution of churn customers by satisfaction score
SELECT 
	satisfaction_score,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY satisfaction_score
ORDER BY churn DESC;

-- Compare average satisfaction score between churn and non-churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction_score
FROM customer_churn_records
GROUP BY status;

-- Count how many churned customer that filed a complain
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	COUNT(CASE WHEN complain =1 THEN 1 END) as complain,
	COUNT(CASE WHEN complain =0 THEN 1 END) as no_complain,
	COUNT(customer_id) AS num_customers
FROM customer_churn_records
GROUP BY status; 

--Distribution of churn customers based on credit card ownership
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	COUNT(CASE WHEN has_credit_card =1 THEN 1 END) as has_credit_card,
	COUNT(CASE WHEN has_credit_card =0 THEN 1 END) as no_credit_card
FROM customer_churn_records
GROUP BY status;

--Distribution of churned customers based on card type
SELECT
	card_type,
	COUNT(CASE WHEN exited =1 THEN 1 END) as churn
FROM customer_churn_records
GROUP BY card_type
ORDER BY churn DESC;

-- Compare average points earned between churn and non-churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(point_earned), 2) AS avg_point_earned,
	MAX(point_earned) AS max_point_earned,
	MIN(point_earned) AS min_point_earned
FROM customer_churn_records
GROUP BY status;

-- Find the average, max and min salary among churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(estimated_salary), 2) AS avg_estimated_salary,
	MAX(estimated_salary) AS max_estimated_salary,
	MIN(estimated_salary) AS min_estimated_salary
FROM customer_churn_records
GROUP BY status;

-- Find the average, max and min bank balance among churn customers
SELECT
	CASE 
    	WHEN exited = 1 THEN 'Churn'
    	ELSE 'Not Churn'
    END AS status,
	ROUND(AVG(balance), 2) AS avg_balance,
	MAX(balance) AS max_balance,
	MIN(balance) AS min_balance
FROM customer_churn_records
GROUP BY status;

SELECT
	COUNT(customer_id)
FROM customer_churn_records
WHERE exited = 1 AND balance = 0 
	



