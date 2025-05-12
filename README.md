# Understanding Customer Bank Churn
- Data Analysis Tools used for this project: SQL & Tableau

## Background and Problem Statement
- Customer churn in banking industry refers to when a customer stops using a bank's services, either by closing their account or switching to another bank. Churn can be a significant concern for the bank as it is far more expensive to attract new csutomers compared to retaining the current ones. This often leads to lost revenue and can indicate dissatisfaction or unmet needs among customers.
- ABC multinational bank is experiencing an increasing rate of customer churn and is negatively impacting its revenue. The bank manager would like to understand what went wrong and what are the important factors that are causing customers to churn.

## Objectives
- Identify what are the key trends and patterns in customer behaviour that contribute to churn.
- Provide recommendations to retain customers based on the insights gathered from data analysis.

## Dataset
- Dataset used for analysis is from Kaggle and is a structured data in csv containing 10000 rows.
- Metadata is as shown:
1) RowNumber: Corresponds to the record (row) number
2) CustomerId: Unique customer ID
3) Surname: Surname of customer
4) CreditScore: Customer creditworthiness
5) Geography: Customer’s location
6) Gender: Gender of customer
7) Age: Customer's age
8) Tenure: Number of years that the customer has been a client of the bank
9) Balance: Customer's bank balance
10) NumOfProducts: Number of products that a customer has purchased through the bank
11) HasCrCard: Denotes whether or not a customer has a credit card (1 - has credit card, 0 - no credit card)
12) IsActiveMember: Customer's activity with the bank (1 - active, 0 - not active)
13) EstimatedSalary: Customer's salary
14) Exited: Whether or not the customer left the bank (1 - churn, 0 - not churn)
15) Complain: Whether a customer has complaint or not (1 - complain, 0 - no complain)
16) Satisfaction Score: Customer's level of satifaction with the bank
17) Card Type: Type of card hold by the customer
18) Points Earned: Points earned by the customer for using credit card

Dataset link can be found [here](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn)

## Data cleaning and exploratory analysis using SQL (PostgreSQL) - SQL queries are found under attachment
Data cleaning
- Checking of null values
- Convert bank balance and estimated salary column values to 2 decimal places
- Change card type values to proper case

Data Exploration
- Checking customer churn based on the following fields:
  - Credit score, geography, age group, tenure, balance, NumofProducts, HasCrCard, IsActiveMember, Estmated Salary, Complain, Satisfaction Score, Card Type, Points Earned.

## Data Visualisation via Tableau
### Summary of Insights
- Out of 10000 customers, about 20% has churned (2038).
- Customers in the 41-60 years old category are more likely to churn than other age cateogry.
- Although there are more customers in France than Germany, churn rate in Germany (~32%) is twice of that of France (~16%).

![image](https://github.com/user-attachments/assets/b30898b0-18cb-44ca-8643-a160ce4b00fa)

- Customers who has credit card tends not to churn and stays with the bank. Active customers also tends not to churn compared to inactive customers.
- Customers who complain are most likely to churn regardless of their activity with the bank. This shows how important customer services plays a part in customer retention.
- Customers with 2 or more products have a very high chance to churn (~83% churn rate for customers with 3 products, 100% chrun rate for customers with 4 products)
- Churn rate remains fairly consistent ~20% for customers with credit card score > 450.

![image](https://github.com/user-attachments/assets/3d754ff8-ddcb-454b-9a12-23a6e978dab3)

- Tenure does not impact churn rates as they are quite constant (~20%) across all tenures
- Satisfaction score as well do not really impact churn rate as there is an equal chance of customer leaving the bank (~20%) no matter how good or bad the score is.
- Churn rate remains fairly consistent among customers with > 200 points earned.
- There are quite a handy of customers with zero bank balance that churn which suggest possibility of inactive bank accounts.

![image](https://github.com/user-attachments/assets/10abf566-9660-41ce-85d8-c27b73b0273a)

- As for card type and estimated salary, there is no significant difference of churn rates across all card types and across customers with various salary ranges.

![image](https://github.com/user-attachments/assets/0dcff598-fe0a-46c9-a221-4706d3117097)

## Recommendations
- Customers in the 41–60 age group are more likely to churn than those in other age groups. To address this, the bank can focus on developing or enhancing products and services that appeal specifically to this demographic. For example, providing smoother service with reduced queue times could help attract and retain older customers.
- Although France currently has the highest total customer base, consider strategies to broaden market reach in other regions, such as Germany and Spain. Focus on developing localized marketing campaigns and tailored product offerings to effectively attract and retain customers in these markets.
- It is challenging to note that while customers who complain are more likely to churn, satisfaction scores don’t appear to impact churn rates. The bank could consider investing in training and development programs to enhance the quality of service provided by staff. Additionally, implementing systems to collect and analyze customer feedback can help identify improvement areas and ensure timely resolution of issues. Conducting surveys with customers who file complaints would also be valuable for understanding their pain points and unmet needs.
- Customers who hold credit cards are less likely to churn and tend to stay with the bank. To build on this, the bank could focus on encouraging more customers to apply for credit cards by offering tailored promotions based on customer segments. These segments could be defined by card types, salary, points earned, spending patterns, etc.
- Analyze the factors contributing to high churn rates among customers with more than two products. Perform market research to understand customer expectations, competitor offerings, and potential areas for improvement.


  










