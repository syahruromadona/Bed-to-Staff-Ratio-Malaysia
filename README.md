## Executive summary

Malaysia’s healthcare system is experiencing increasing structural strain driven by sustained growth in service demand, population aging, and rising disease complexity. Using SQL and Excel, I pulled data from the official government data portal and analyse the number of beds and staff throughout 16 states from 2014 to 2022. The result indicates a declining bed-to-staff ratio, signalling that staffing levels are not keeping pace with available beds. Possible steps that can be taken suggested by the analysis:

1. Increase overall healthcare staffing levels
2. Address staff maldistribution across different states

## Business Problem

Malaysia’s healthcare system has been facing capacity strain for the past few years. The cracks is made even more visible by the Hartal Doktor Kontrak movement in 2021 which uphold the issue of lack of transparency in absorpting into the public healthcare system.  Rural places especially will be effected the most as they lack the infrastructure and the staff number. While investment has been made over time with increased physical capacity such as hospital beds and facilities, the staff number and where they are being deployed create an operational bottleneck.

## **Methodology**

1. **SQL -** Used SQL to extract, clean, and transform raw healthcare data, including aggregation by year and state, and deriving key metrics such as the bed-to-staff ratio for analysis.
2. **Python -** Pandas, Matplotlib, Numpy, Writing functions
3. **Excel -** Utilized Microsoft Excel to produce analytical charts, including national trends over time, state-level comparisons, and geographic visualizations

Data was obtained from the Malaysia Official Open Data Portal both for the [bed count](https://data.gov.my/data-catalogue/hospital_beds) and [staff number](https://data.gov.my/data-catalogue/healthcare_staff) from 2014 to 2022. This analyses only look into the public hospital and public healthcare staff and does not include private institution.

## Skill

1. **SQL -** Common Table Expressions (CTEs), joins, `CASE` statements, aggregate functions, window functions, data cleaning, and metric derivation (e.g., bed-to-staff ratios).
2. **Excel -** Data cleaning and transformation, pivot tables, lookup functions, calculated fields, time-series analysis, and charting (line charts, comparative state trends, and choropleth-style visualizations).

## Result and Business Recommendation

At the national level, the bed-to-staff ratio has declined consistently over time, indicating that growth in healthcare staffing has lagged behind increases in hospital bed capacity. This trends suggest that while overall capacity has increased, low number of healthcare staff may suggest bottleneck. Apart from that, some states like Kelantan and and Terengganu suffered from a very low bed-to-staff ratio compared to other states like Perak and Johor indicating inequal staff distribution.

<p float="left">
<img width="556" height="453" alt="f9ad2b2d-32da-40a5-b325-83bef2ffc9cd" src="https://github.com/user-attachments/assets/fec04a24-2f7f-41a2-a08c-c9938bf2018d" />
<img width="500" height="1528" alt="Cloropleth Bed-to-Staff ratio" src="https://github.com/user-attachments/assets/c4f7bd7d-0a57-47b7-926f-5b4828d0ee97" />
</p>

This analysis highlight staff number as a potential policy lever. In parallel, targeted interventions are needed to address staff maldistrbution across states as national averages can mask the localized shortages that materially affect system perfomance. In the future, bed count and staff number should be regarded as a joint constraint to better reflect real life healthcare system capacity.

## Data Limitation

- Reported bed and staff counts are assumed accurate as provided; discrepancies in hospital reporting could affect results.
- Ratios do not account for differences in hospital size or specialization, which may impact local staffing adequacy.
- Private healthcare institution may ease the burdern on the public healthcare system which may mask even more inefficiencies.

## **Next Steps**

- Normalization according to the population on the states level.
- Update and expand the dataset to confirm trends.
- Model staffing and redistribution scenarios to guide policy decisions.
