# Airline Passenger Satisfaction Analysis

## 1. Executive Summary

This project analyzes 129,880 airline passenger records to identify service-improvement opportunities associated with passenger satisfaction. Using Python, SQL, statistical analysis, and Power BI, the project examines satisfaction across passenger segments, service ratings, and flight delays.

Overall passenger satisfaction was 43.45%. Inflight WiFi emerged as a priority for further investigation among Economy and Economy Plus passengers, while online boarding showed the strongest overall Spearman association with satisfaction among the analyzed service factors.

The findings provide evidence-based directions for further investigation, not guaranteed causal effects or financial returns. The recommended next step is to validate root causes, assess intervention costs, and test targeted improvements before committing the airline's service-improvement budget.

## 2. Business Problem and Objectives

Airlines operate with limited resources for improving passenger experience. Identifying the services and passenger groups that warrant attention can help decision-makers allocate those resources more effectively.

The central business question is:

**Where should the airline invest its limited improvement budget to raise passenger satisfaction most effectively?**

The project objectives were to:

- Assess overall passenger satisfaction.
- Compare satisfaction across passenger classes, travel types, and customer types.
- Identify service areas with low ratings and strong associations with satisfaction.
- Examine the relationship between flight delays and satisfaction.
- Use statistical analysis to explore adjusted relationships between service ratings and satisfaction.
- Develop evidence-based recommendations and propose measurable success criteria.

## 3. Data and Preparation

### Dataset Overview

The dataset contains 129,880 passenger records and 24 columns covering passenger characteristics, travel details, service ratings, flight delays, and overall satisfaction.

Key data-quality findings:

- Total passenger records: 129,880.
- Unique passenger IDs: 129,880.
- Duplicate rows identified: 0.
- Missing arrival delays: 393.
- Missing departure delays: 0.
- Satisfied passengers: 56,428 (43.45%).
- Neutral or dissatisfied passengers: 73,452 (56.55%).

### Data Preparation

The project included data auditing, cleaning, validation, and preparation for analysis.

The 393 missing arrival-delay values were retained as missing rather than replaced with zero, since a missing delay does not mean that a flight arrived on time.

According to the dataset's data dictionary, service ratings range from 0 to 5, with 0 representing not applicable. Zero ratings were therefore excluded from service-specific averages, low-rating percentages, and rating-based statistical models. They were not treated as genuine service ratings.

The cleaned dataset was used for exploratory analysis, SQL queries, statistical modeling, and Power BI visualizations.

## 4. Key Findings

### 4.1 Overall Passenger Satisfaction

Of the 129,880 passengers analyzed, 43.45% were satisfied, while 56.55% were neutral or dissatisfied.

This indicates that a substantial proportion of passengers did not report being satisfied. The result establishes an overall baseline against which future service-improvement initiatives can be evaluated.

### 4.2 Inflight WiFi

Inflight WiFi had an overall average rating of approximately 2.81 out of 5.

Among applicable ratings, the percentage of Economy and Economy Plus passengers giving WiFi ratings between 1 and 3 was:

- Economy: 73.11%.
- Economy Plus: 68.95%.

WiFi also showed a positive association with satisfaction in the overall statistical analysis, with a Spearman correlation of approximately 0.372.

These findings make connectivity a strong candidate for further investigation, particularly among Economy and Economy Plus passengers. However, the analysis does not establish that WiFi improvements alone would produce a specific increase in satisfaction.

### 4.3 Online Boarding

Online boarding had the strongest overall Spearman association with satisfaction among the analyzed service factors, with a correlation of approximately 0.590.

Within Business class, the association was approximately 0.572. The average online boarding rating for Business class was approximately 3.76 out of 5.

This suggests that the digital boarding experience warrants attention. The airline could investigate usability, check-in completion, boarding-pass access, and passenger feedback to identify potential friction points.

These are proposed areas of investigation rather than confirmed causes of dissatisfaction.

### 4.4 Online Booking

Online booking had an overall average rating of approximately 2.88 out of 5, indicating scope to investigate the booking experience.

Its adjusted relationship with satisfaction was non-monotonic in the categorical logistic regression model. This means that satisfaction did not follow a simple, consistently increasing pattern across all booking-rating categories after accounting for the included variables.

The airline should examine booking feedback by passenger class and travel type before committing significant investment to a particular solution.

### 4.5 Passenger Segments

Satisfaction differed substantially across passenger groups.

**Passenger class**

| Passenger class | Satisfaction rate |
|---|---:|
| Business | 69.44% |
| Economy Plus | 24.64% |
| Economy | 18.77% |

Business class had a substantially higher observed satisfaction rate than the two Economy segments. The lower rates in Economy and Economy Plus suggest that the airline should investigate their service experiences and expectations separately.

**Travel type**

| Travel type | Satisfaction rate |
|---|---:|
| Business travel | 58.37% |
| Personal travel | 10.13% |

Business travelers reported a considerably higher satisfaction rate than personal travelers. This difference warrants further investigation into whether service expectations, travel circumstances, or other characteristics help explain the observed pattern.

**Customer type**

| Customer type | Satisfaction rate |
|---|---:|
| Returning passengers | 47.81% |
| First-time passengers | 23.97% |

Returning passengers had a higher satisfaction rate than first-time passengers. The airline could investigate the first-time passenger journey to identify potential opportunities to improve onboarding, information accessibility, and the overall travel experience.

These comparisons are descriptive. They identify segments for further investigation but do not establish why satisfaction differs between groups.

### 4.6 Flight Delays

Longer flight delays were associated with lower observed satisfaction rates.

**Departure delays**

| Departure delay | Satisfaction rate |
|---|---:|
| No delay | 45.94% |
| 1–15 minutes | 43.55% |
| 16–30 minutes | 38.43% |
| 31–60 minutes | 36.41% |
| Over 60 minutes | 35.86% |

The satisfaction rate was approximately 10.08 percentage points lower among passengers experiencing departure delays over 60 minutes than among passengers with no departure delay.

**Arrival delays**

| Arrival delay | Satisfaction rate |
|---|---:|
| No delay | 47.41% |
| 1–15 minutes | 41.19% |
| 16–30 minutes | 35.74% |
| 31–60 minutes | 36.05% |
| Over 60 minutes | 35.57% |

The satisfaction rate was approximately 11.84 percentage points lower among passengers with arrival delays over 60 minutes than among passengers with no arrival delay.

The small increase between the 16–30-minute and 31–60-minute arrival-delay bands shows that the relationship is not perfectly monotonic. The overall pattern nevertheless indicates that passengers experiencing longer delays tend to report lower satisfaction.

These are observational comparisons, not proof that delays alone caused the differences. The 393 records with missing arrival delays were excluded from the arrival-delay band comparison.

## 5. Statistical Analysis

The project used several analytical methods to explore passenger satisfaction.

### Descriptive Analysis

Descriptive statistics and segment comparisons were used to examine satisfaction by class, travel type, customer type, age group, and delay category.

### Service Rating Analysis

Service averages and low-rating percentages were calculated using applicable ratings from 1 to 5. Ratings of 0 were excluded because the data dictionary defines them as not applicable.

### Spearman Correlation

Spearman correlation was used to assess the direction and strength of the association between individual service ratings and satisfaction.

Online boarding had the strongest overall association among the analyzed service factors, with a coefficient of approximately 0.590. Inflight WiFi and entertainment also showed positive associations.

Correlation indicates association rather than causation. It does not establish that changing a service rating will necessarily change overall satisfaction.

### Logistic Regression

Logistic regression was used to examine the relationship between passenger satisfaction and service ratings while adjusting for selected characteristics, including class, travel type, customer type, age, flight distance, and departure and arrival delays.

The categorical logistic regression used 123,505 complete passenger records and had a pseudo-R-squared of 0.6601. It also had a lower Akaike Information Criterion (AIC) than the earlier linear-rating model fitted to the same sample.

These results suggest that the categorical model fit the observed data better than the earlier model according to the compared fit criteria. Pseudo-R-squared is not directly equivalent to the proportion of variance explained in ordinary linear regression.

Some categorical odds ratios, particularly for the highest WiFi rating, were unusually large. Such estimates can occur when a category has a very high observed satisfaction rate and may indicate sparse outcomes or near separation. These estimates should not be interpreted as reliable effect sizes without further diagnostics.

The model was exploratory. Additional diagnostic checks, robustness analysis, and out-of-sample validation would be necessary before using it for prediction or operational decision-making.

## 6. Business Recommendations

### Recommendation 1: Investigate WiFi in Economy and Economy Plus

**Evidence:** WiFi averaged approximately 2.81 out of 5 overall. Low ratings represented 73.11% of applicable Economy ratings and 68.95% of applicable Economy Plus ratings.

**Proposed action:** Review connectivity reliability, coverage, speed, and passenger expectations. Gather feedback from affected passengers and assess the feasibility and cost of potential improvements.

**Success measures:** Change in average applicable WiFi rating, low-rating percentage, and overall satisfaction within the target segments.

### Recommendation 2: Review the Online Boarding Experience

**Evidence:** Online boarding had the strongest overall Spearman association with satisfaction among the analyzed service factors, at approximately 0.590.

**Proposed action:** Investigate usability, check-in completion, boarding-pass access, and common passenger difficulties. Consider a targeted pilot if specific problems are identified.

**Success measures:** Change in boarding ratings, reported friction points, and overall satisfaction among passengers exposed to the improvement.

### Recommendation 3: Investigate Online Booking Feedback

**Evidence:** Online booking averaged approximately 2.88 out of 5, and its adjusted relationship with satisfaction was non-monotonic in the categorical regression model.

**Proposed action:** Segment booking feedback by passenger class and travel type. Identify recurring problems before choosing a solution or allocating a significant budget.

**Success measures:** Change in booking ratings, reported booking difficulties, and satisfaction among the targeted passenger groups.

### Recommendation 4: Investigate the Operational Causes of Delays

**Evidence:** Satisfaction was lower among passengers experiencing longer departure and arrival delays.

**Proposed action:** Examine operational data to identify recurring causes of delays and assess feasible ways to reduce their frequency and duration. Consider how communication during disruptions could be improved.

**Success measures:** Delay frequency and duration, passenger feedback during disruptions, and satisfaction rates by delay category.

### Recommendation 5: Tailor Improvements to Passenger Segments

**Evidence:** Observed satisfaction rates varied substantially by class, travel type, and customer type.

**Proposed action:** Investigate the needs and feedback of Economy, Economy Plus, personal-travel, and first-time passengers separately. Avoid assuming that one intervention will benefit every group equally.

**Success measures:** Satisfaction-rate changes within target segments, differences between segments over time, and the cost of each intervention.

### Prioritization Approach

WiFi in Economy and Economy Plus and the online boarding experience are promising areas for further investigation. However, the current dataset does not establish the cost, feasibility, or financial return of these interventions.

The airline should therefore prioritize the next phase using four criteria:

1. Strength and consistency of supporting evidence.
2. Scale of the affected passenger group.
3. Estimated implementation cost and operational feasibility.
4. Expected measurable benefit, validated through a pilot where possible.

No financial return or guaranteed improvement is claimed by this analysis.

## 7. Measuring Success

Before implementing any change, the airline should establish baseline metrics and agree on measurable success criteria with relevant stakeholders.

Recommended measures include:

- **Service performance:** Change in average applicable service rating.
- **Low-rating prevalence:** Change in the percentage of applicable ratings between 1 and 3.
- **Overall satisfaction:** Change in satisfaction rate for the targeted passenger group.
- **Operational performance:** Change in delay frequency and duration, where relevant.
- **Financial efficiency:** Cost per passenger reached and cost per satisfaction improvement.
- **Intervention evaluation:** Comparison of outcomes before and after implementation, preferably using a controlled pilot or phased rollout where feasible.

Numerical targets should be established only after the airline reviews the baseline, costs, operational constraints, and realistic improvement opportunities.

## 8. Limitations

The findings should be interpreted in light of the following limitations:

- The dataset is observational and cannot establish causality.
- Service ratings may be influenced by overlapping passenger, travel, and operational characteristics.
- Segment comparisons do not explain the causes of satisfaction differences.
- The dataset does not provide intervention costs, implementation feasibility, or financial returns.
- Missing arrival-delay values were excluded from arrival-delay band comparisons.
- Ratings of 0 were treated as not applicable rather than as genuine service ratings.
- The categorical regression produced unusually large odds ratios for some categories, requiring further diagnostic investigation.
- The regression model requires additional validation before it can be used for reliable prediction.
- Low service ratings are not equivalent to overall passenger dissatisfaction.

## 9. Conclusion

This project establishes an evidence-based view of airline passenger satisfaction using data preparation, exploratory analysis, SQL, statistical modeling, and Power BI visualization.

Overall satisfaction was 43.45%, with substantial differences across passenger segments. Inflight WiFi in Economy and Economy Plus and online boarding across passenger groups emerged as promising areas for further investigation. Longer delays were also associated with lower observed satisfaction.

The recommended business next step is to validate the underlying causes, assess operational feasibility and costs, and test targeted interventions using measurable success criteria. This approach allows the airline to use the analysis to guide decisions without overstating what observational data can prove.