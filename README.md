# 📊 E-Commerce Customer Churn & Revenue Risk Analysis

## 📌 Project Overview
This project analyses customer churn behaviour in an e-commerce platform to identify key drivers of churn and quantify its impact on revenue.

The objective is to:
- Identify high-risk customer segments
- Understand behavioural and transactional drivers of churn
- Estimate revenue exposure due to churn
- Recommend data-driven retention strategies

---

## 📂 Dataset
- Source: Kaggle (E-commerce Customer Churn Dataset)
- Total Records: 5,630 customers

### Key Features:
- Customer behaviour (tenure, app usage, order activity)
- Demographics (gender, city tier)
- Transactions (payment method, product category)
- Feedback signals (complaints, satisfaction)

---

## 🛠️ Tools & Technologies

| Stage | Tool |
|------|------|
| Data Cleaning & Feature Engineering | Python (Pandas, NumPy) |
| Statistical Analysis | Statsmodels |
| Survival Analysis | Lifelines |
| Data Analysis & KPI Extraction | SQL (MySQL) |
| Data Visualisation | Tableau |
| Reporting | Excel |

---

## ⚙️ Methodology

### 1. Data Cleaning (Python)
- Handled missing values using median/mode imputation
- Validated dataset consistency and removed duplicates
- Standardised categorical variables for accurate aggregation

---

### 2. Feature Engineering
- Created **ChurnFlag (binary target variable)**
- Segmented customers into **Tenure Groups (0–6, 7–12, 13–24, 24+ months)**
- Built **Engagement Score** using behavioural metrics
- Estimated **Revenue Proxy** using order and cashback data
- Defined **Risk Segments** based on satisfaction, complaints, and tenure

---

### 3. SQL Analysis
- Computed key KPIs:
  - Overall churn rate
  - Revenue at risk
  - Segment-level churn rates
- Identified high-risk customer groups across:
  - Tenure
  - Payment method
  - Product category
  - Complaint behaviour

---

### 4. Statistical Validation
- Performed **two-proportion Z-test** to validate churn differences
- Confirmed complaint-driven churn is statistically significant (**p < 0.001**)
- Strengthened analytical findings with hypothesis testing

---

### 5. Survival Analysis
- Applied **Kaplan-Meier estimator** to model time-to-churn
- Identified steep decline in retention within first **6–12 months**
- Confirmed early-stage churn risk using time-based modelling

---

### 6. A/B Testing Simulation
- Simulated retention intervention (Control vs Treatment groups)
- Estimated **~3% absolute churn reduction (~18% relative improvement)**
- Validated improvement using statistical testing (**p < 0.01**)

---

### 7. Tableau Dashboard
Developed an interactive dashboard featuring:

- **KPI Cards**
  - Total Customers
  - Churn Rate
  - Revenue at Risk

- **Visualisations**
  - Churn by Tenure
  - Churn by Payment Method
  - Churn by Product Category
  - Complaint Impact on Churn

🔗 **Dashboard Link:**  
https://public.tableau.com/views/E-CommerceCustomerChurnRevenueRiskAnalysisDashboard/Dashboard1

---

## 📊 Key Insights

- **Overall Churn Rate:** 16.84% (~1 in 6 customers)
- **Revenue at Risk:** ~₹471K (14.7%)

### 🔥 Major Drivers

1. **Early Tenure (0–6 months)**
   - Churn Rate: **32.4%**
   - Indicates onboarding and early engagement gaps

2. **Customer Complaints**
   - Churn Rate: **31.7% vs 10.9%**
   - Strongest statistically validated churn predictor

3. **Payment Behaviour**
   - COD: **~25% churn**
   - Credit Card: **~13% churn**
   - Prepaid users show higher retention

4. **Product Category**
   - Mobile/Electronics: **~27% churn**
   - Grocery: **~4.9% churn**
   - Repeat-use categories retain customers better

---

## 💡 Business Recommendations

- Improve onboarding experience for new customers
- Strengthen complaint resolution and support systems
- Promote prepaid payment methods through incentives
- Increase engagement for low-activity users
- Target high-risk segments with personalised retention strategies

---

## 🚀 Conclusion

This project demonstrates an end-to-end analytics workflow combining:
- Data cleaning and feature engineering
- SQL-based business analysis
- Statistical validation and survival modelling
- Experimentation through A/B testing simulation
- Dashboard-driven storytelling

---

## 👨‍💻 Author
**Ishan Kukreti**
