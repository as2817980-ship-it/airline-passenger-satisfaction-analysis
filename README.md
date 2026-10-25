# Airline Passenger Satisfaction Analysis

An end-to-end Business Analyst project exploring airline passenger satisfaction using Python, SQL, Excel, statistical analysis, and Power BI. The project identifies service-improvement opportunities by analyzing passenger segments, service ratings, and flight delays.

## Business Problem

Airlines have limited resources for improving passenger experience. This project investigates:

**Where should the airline investigate service improvements to raise passenger satisfaction most effectively?**

The analysis examines satisfaction patterns, service performance, passenger characteristics, and delays to support evidence-based business decisions.

## Project Objectives

- Measure overall passenger satisfaction.
- Compare satisfaction across passenger class, travel type, and customer type.
- Identify services associated with satisfaction and services receiving low ratings.
- Analyze the relationship between flight delays and passenger satisfaction.
- Explore adjusted statistical associations using logistic regression.
- Develop actionable recommendations and measurable success criteria.

## Dataset Overview

The dataset contains **129,880 passenger records and 24 columns**.

| Metric | Result |
|---|---:|
| Total passenger records | 129,880 |
| Unique passenger IDs | 129,880 |
| Duplicate rows identified | 0 |
| Missing arrival delays | 393 |
| Satisfied passengers | 56,428 |
| Neutral or dissatisfied passengers | 73,452 |
| Overall satisfaction rate | 43.45% |

The dataset includes passenger characteristics, travel details, service ratings, flight delays, and overall satisfaction.

**Data-quality note:** Service ratings of 0 indicate "not applicable" according to the data dictionary. They are excluded from service-specific averages and rating-based analysis. Missing arrival delays are retained as missing rather than treated as zero.

## Tools and Technologies

- **Python:** Pandas, NumPy, Matplotlib, exploratory data analysis, data cleaning, statistical analysis
- **SQL:** Data querying, passenger segmentation, aggregation, and analysis using MySQL
- **Power BI:** Interactive dashboard, KPI cards, satisfaction comparisons, service-rating matrix, and delay analysis
- **Excel:** Data inspection and supporting analysis
- **Jupyter Notebook:** Reproducible analysis workflow
- **Git and GitHub:** Version control and project presentation

## Project Workflow

1. **Data audit:** Inspected dataset dimensions, data types, missing values, duplicate records, and unique passenger IDs.
2. **Data cleaning:** Standardized column names, retained missing delay values appropriately, and prepared a cleaned dataset.
3. **SQL analysis:** Imported the cleaned data into MySQL and queried passenger satisfaction patterns.
4. **Exploratory analysis:** Examined satisfaction by passenger segment, service ratings, and delay categories.
5. **Statistical analysis:** Used Spearman correlation and exploratory logistic regression to investigate associations with satisfaction.
6. **Power BI dashboard:** Developed interactive visuals and slicers for passenger class, travel type, and customer type.
7. **Business recommendations:** Identified potential improvement areas and proposed metrics for evaluating future interventions.

## Key Findings

### 1. Overall Satisfaction

Only **43.45%** of passengers were satisfied, while 56.55% were neutral or dissatisfied.

### 2. Passenger Class

| Class | Satisfaction rate |
|---|---:|
| Business | 69.44% |
| Economy Plus | 24.64% |
| Economy | 18.77% |

Business class had the highest observed satisfaction rate. Economy and Economy Plus warrant further investigation.

### 3. Travel Type

| Travel type | Satisfaction rate |
|---|---:|
| Business travel | 58.37% |
| Personal travel | 10.13% |

The difference highlights the importance of investigating passenger needs and expectations across travel segments.

### 4. Customer Type

| Customer type | Satisfaction rate |
|---|---:|
| Returning passengers | 47.81% |
| First-time passengers | 23.97% |

First-time passengers reported lower satisfaction, suggesting an opportunity to investigate their end-to-end travel experience.

### 5. Service Experience

- **Inflight WiFi:** Average rating of approximately 2.81/5. Low ratings represented 73.11% of applicable Economy ratings and 68.95% of applicable Economy Plus ratings.
- **Online boarding:** Strongest overall Spearman association with satisfaction among the analyzed service factors, approximately 0.590.
- **Online booking:** Average rating of approximately 2.88/5, warranting further investigation.

### 6. Flight Delays

| Delay category | Departure satisfaction | Arrival satisfaction |
|---|---:|---:|
| No delay | 45.94% | 47.41% |
| 1–15 minutes | 43.55% | 41.19% |
| 16–30 minutes | 38.43% | 35.74% |
| 31–60 minutes | 36.41% | 36.05% |
| Over 60 minutes | 35.86% | 35.57% |

Longer delays were associated with lower observed satisfaction. These comparisons are descriptive and do not establish causality.

## Recommendations

1. **Investigate WiFi in Economy and Economy Plus:** Assess connectivity reliability, coverage, passenger feedback, and improvement costs.
2. **Review online boarding:** Identify usability issues and evaluate targeted improvements through a pilot.
3. **Investigate online booking:** Analyze feedback by passenger class and travel type before committing substantial resources.
4. **Examine delay causes:** Assess operational opportunities to reduce delay frequency and duration.
5. **Tailor improvements by segment:** Evaluate passenger needs separately instead of assuming one intervention will benefit all groups equally.

These recommendations identify areas for investigation. The dataset does not establish intervention costs or financial returns.

## Power BI Dashboard

The dashboard includes:

- Total passengers, satisfied passengers, satisfaction rate, and neutral or dissatisfied passengers
- Overall passenger satisfaction
- Satisfaction by passenger class, travel type, and customer type
- Service ratings by passenger class
- Satisfaction by departure and arrival delay
- Passenger count by class
- Interactive filters for class, travel type, and customer type

**Dashboard file:** `powerbi/airline_satisfaction_clean.pbix`

To view the dashboard, open the PBIX file using Power BI Desktop.

## Repository Structure

```text
Airline-Passenger-Satisfaction/
├── data/
│   ├── raw/
│   │   ├── airline_passenger_satisfaction.csv
│   │   └── data_dictionary.csv
│   └── processed/
│       └── airline_satisfaction_clean.csv
├── excel/
├── notebooks/
│   ├── 01_data_audit.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_mysql_import.ipynb
│   └── 04_exploratory_analysis.ipynb
├── powerbi/
│   └── airline_satisfaction_clean.pbix
├── reports/
│   ├── business_analysis_report.md
│   ├── final_recommendations.csv
│   ├── satisfaction_by_arrival_delay.csv
│   ├── satisfaction_by_class.csv
│   ├── satisfaction_by_customer_type.csv
│   ├── satisfaction_by_departure_delay.csv
│   ├── satisfaction_by_travel_type.csv
│   └── service_ratings_by_class.csv
└── sql/
    └── 01_satisfaction_by_segment.sql
```

## Limitations

- Observational data cannot establish causality.
- Passenger and journey characteristics may influence service ratings and satisfaction simultaneously.
- Some regression estimates require further diagnostic investigation.
- The dataset does not include intervention costs or financial returns.
- Further validation is required before using the regression model for prediction.

## Conclusion

This project demonstrates an end-to-end analytical workflow, from data quality assessment and SQL analysis to statistical exploration, interactive dashboard development, and business recommendations.

The findings identify inflight WiFi in Economy and Economy Plus, online boarding, online booking, and flight delays as areas worth investigating. The next step is to validate root causes, estimate implementation costs, and evaluate targeted improvements using measurable success criteria.

---

*Tools: Python, MySQL, Excel, Power BI, Jupyter Notebook*
