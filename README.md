# Understanding-Customer-Bank-Churn
Interactive tableau storybaord can be found [here](https://public.tableau.com/app/profile/si.yang.neo/viz/BankCustomerChurnAnalysis_17305551284230/BankCustomerChurnStoryboard)
Data Analysis Tools used for this project: SQL & Tableau

## Background and Problem Statement:
- Customer churn in banking industry refers to when a customer stops using a bank's services, either by closing their account or switching to another bank. Churn can be a significant concern for the bank as it is far more expensive to attract new csutomers compared to retaining the current ones. This often leads to lost revenue and can indicate dissatisfaction or unmet needs among customers.
- ABC multinational bank is experiencing an increasing rate of customer churn and is negatively impacting its revenue. The bank manager would like to understand what went wrong and what are the important factors that are causing customers to churn.

## Objectives:
- Identify what are the key trends and patterns in customer behaviour that contribute to churn.
- Provide recommendations to retain customers based on the insights gathered from data analysis.

## Dataset
- Dataset used for analysis is from Kaggle and is a structured data in csv containing 10000 rows.
- Metadata is as shown:
1) RowNumber: Corresponds to the record (row) number
2) CustomerId: Unique customer ID
3) Surname: Surname of customer
4) CreditScore—can have an effect on customer churn, since a customer with a higher credit score is less likely to leave the bank.
5) Geography: Customer’s location
6) Gender: Gender of customer
7) Age: Customer's age
8) Tenure: Number of years that the customer has been a client of the bank.
9) Balance: Customer's bank balance
10) NumOfProducts: Number of products that a customer has purchased through the bank.
11) HasCrCard: Denotes whether or not a customer has a credit card (1 - has credit card, 0 - no credit card)
12) IsActiveMember: Customer's activity with the bank (1 - active, 0 - not active)
13) EstimatedSalary: Customer's salary
14) Exited: Whether or not the customer left the bank (1 - churn, 0 - not churn)
15) Complain: Whether a customer has complaint or not (1 - complain, 0 - no complain)
16) Satisfaction Score: Customer's level of satifaction with the bank.
17) Card Type: Type of card hold by the customer.
18) Points Earned: Points earned by the customer for using credit card.

Dataset link can be found [here](https://www.kaggle.com/datasets/radheshyamkollipara/bank-customer-churn)

## Data cleaning and exploratory analysis using SQL (PostgreSQL) - SQL code are found under attachments
Data cleaning:
- Checking of null values
- Convert bank balance and estimated salary column values to 2 decimal places
- Change card type values to proper case

Data Exploration:
- The following fields will be 









