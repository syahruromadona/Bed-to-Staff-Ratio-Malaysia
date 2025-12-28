# Bed-to-Staff ratio in public hospital in Malaysia

## Executive summary

Malaysia’s healthcare system is experiencing increasing structural strain driven by sustained growth in service demand, population aging, and rising disease complexity. Using SQL and Excel, I pulled data from the official government data portal and analyse the number of beds and staff throughout 16 states from 2014 to 2022. The result indicates a declining bed-to-staff ratio, signalling that staffing levels are not keeping pace with available beds. I recommend two intervention to address this imbalance: 

1. Increase overall healthcare staffing levels
2. Address staff maldistribution across states and facilities

## Business Problem

Malaysia’s healthcare system is facing **capacity stress that is fundamentally a workforce productivity and allocation problem**, not merely an infrastructure shortfall. While investments over time have increased physical capacity (e.g., hospital beds and facilities), **human capital growth and deployment have lagged behind demand**, creating an operational bottleneck.

## Methodology

1. **SQL -** Used SQL to extract, clean, and transform raw healthcare data, including aggregation by year and state, and deriving key metrics such as the bed-to-staff ratio for analysis.
2. **Python & Excel -** Utilized Microsoft Excel to produce analytical charts, including national trends over time, state-level comparisons, and geographic visualizations
3. **Data Extraction (Malaysia Official Open Data Portal) -** Sourced hospital bed and healthcare workforce data from Malaysia’s official open data portal. 

## Skill

1. **SQL -** Common Table Expressions (CTEs), joins, `CASE` statements, aggregate functions, window functions, data cleaning, and metric derivation (e.g., bed-to-staff ratios).
2. **Python & Excel -** Data cleaning and transformation, pivot tables, lookup functions, calculated fields, time-series analysis, and charting (line charts, comparative state trends, and choropleth-style visualizations).

## Result and Business Recommendation

At the national level, the bed-to-staff ratio has declined consistently over time, indicating that growth in healthcare staffing has lagged behind increases in hospital bed capacity. This national trend suggests a structural imbalance where headline capacity expansion does not translate into proportional gains in effective service delivery due to workforce constraints. The analysis also reveals clear maldistribution of staff across states, with some regions consistently under-resourced relative to their hospital bed capacity.

<p float="left">
<img width="556" height="453" alt="f9ad2b2d-32da-40a5-b325-83bef2ffc9cd" src="https://github.com/user-attachments/assets/fec04a24-2f7f-41a2-a08c-c9938bf2018d" />
<img width="500" height="1528" alt="Cloropleth Bed-to-Staff ratio" src="https://github.com/user-attachments/assets/c4f7bd7d-0a57-47b7-926f-5b4828d0ee97" />
</p>

Policy responses should prioritize aligning staffing growth with existing and planned bed capacity, particularly for clinical roles directly affecting inpatient care. In parallel, targeted interventions are needed to address staff maldistribution across states, as national averages mask localized shortages that materially affect system performance. Future capacity planning should treat beds and workforce as joint constraints, with the bed-to-staff ratio used as a core operational KPI to guide resource allocation and prevent further erosion of effective healthcare capacity.

## Data Limitation

- Reported bed and staff counts are assumed accurate as provided; discrepancies in hospital reporting could affect results.
- Ratios do not account for differences in hospital size or specialization, which may impact local staffing adequacy.

## **Next Steps**

- Analyze state-level variations to pinpoint critical staffing gaps.
- Update and expand the dataset to confirm trends.
- Model staffing and redistribution scenarios to guide policy decisions.
