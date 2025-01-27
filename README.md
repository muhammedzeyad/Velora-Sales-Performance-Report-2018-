# **Velora Sales & Performance Report (2018)**

## Background and Overview

Velora, established in late 2018, is a global retailer specializing in high-quality bicycles and cycling accessories. Through its online platform, the company serves customers worldwide, offering a diverse range of road bikes, mountain bikes, and essential gear for cycling enthusiasts.

The company has accumulated extensive data on sales trends, customer preferences, and product performance. This project systematically analyses the data collected across 2019 and 2020, and develops KPI’s to uncover key insights that will optimise product offerings, enhance marketing and sales strategies, and drive future commercial growth for Velora.

<img width="1429" alt="Image" src="https://github.com/user-attachments/assets/eb8b5932-e61b-43ad-851b-eb3fdc219330" />

Due to admin privilege restrictions in PowerBI, I couldn’t share the interactive dashboard as a public link. Instead, I included PDF files with stills for the years 2019 and 2020 (titled **Velora_Dashboard_still_2019.pdf** and **Velora_Dashboard_still_2020.pdf**, respectively) in the GitHub repository.

The SQL queries used to clean, organise, and transform the data for the dashboard can be found in the GitHub repository.

The GitHub repository for this project includes both the unprocessed datasets and the cleaned, transformed datasets.

## Objectives

The main objectives of this report are:

1. **Analyze Sales Performance**: Evaluate overall revenue trends, comparing growth between 2019 and 2020, identifying seasonal patterns in both years, and determining peak sales periods throughout the year.
2. **Identify Top Products, Categories, and Subcategories**: Determine the best-selling bicycle models and accessory product lines to guide inventory and marketing strategies, and examine sales by category (bikes, accessories, clothing) and subcategories (road bikes, mountain bikes, touring bikes, helmets) to refine product offerings.
3. **Conduct Regional Analysis**: Identify key cities that drive a large numbers of sales, to ultimately help refine geographical targeting and distribution strategies.
4. **Provide Business Recommendations**: Give actionable steps to optimise inventory, promotional efforts, product offerings, and marketing strategy based on our insights.

# Data Description

The Velora database structure consists of four tables after the data preparation was completed: **date_lookup**, **customer_profiles**, **product_catalogue**, and **sales_transactions**. Note that only the datasets **sales_transactions** and **date_lookup** result from data cleaning and transformation; the datasets **customer_profiles** and **product_catalogue** were not subjected to any data preparation and have remained unchanged from their original state.

![Image](https://github.com/user-attachments/assets/b7684ad1-e19c-497a-9d90-1d81de7ece75)

The Entity Relationship Diagram (ERD) above showcases the tables that make up the data repository and their Primary Key and Foreign Key relationships. Here are descriptions of the data in each table:

- **sales_transactions**: This fact table contains sales data, including product purchases, order dates, due dates, and shipping dates. It also includes customer references, unique sales order numbers, and the total sales amount for each transaction.
- **date_lookup**: This dimensional table provides a detailed breakdown of dates, including the date key, full date, day of the week, month (both full and abbreviated), month number, quarter, and year. It serves as a reference for analyzing trends over different time periods.
- **customer_profiles**: This table, also a dimensional table, holds customer-related information, including unique customer IDs, first and last names, full names, gender, first purchase date, and the city where the customer is located. It is useful for demographic analysis and customer segmentation.
- **product_catalog**: This dimensional table contains details about products, including a unique product key, item codes, product names, subcategories, main product categories, colours, sizes, product lines, model names, descriptions, and product status. It helps in inventory management and analyzing sales trends for different product types.

# Executive Summary

Velora experienced significant revenue growth in 2020 compared to 2019, despite the challenges posed by the COVID-19 pandemic. Monthly revenue trends revealed a distinct seasonal pattern, with sales peaking in June and December, most likely driven by favorable weather conditions and holiday shopping. While revenue in 2019 showed sharper fluctuations, 2020 exhibited a more stable sales pattern, likely due to a shift in consumer behavior, increased marketing expenditure, and sustained promotional efforts.

Product performance data confirmed that bicycles remained the dominant revenue driver, accounting for 99.5% of sales in 2019 and 93.93% in 2020. However, accessories and apparel saw notable growth, increasing their combined sales share from 0.05% in 2019 to 6.07% in 2020, indicating higher demand for complementary gear. Mountain bikes maintained steady revenue share, while road bikes saw a substantial decline from 60.86% to 31.78%, suggesting a shift in customer preferences. Conversely, touring bikes surged in popularity, increasing from 0.37% in 2019 to 23.38% in 2020, likely due to growing interest in long-distance cycling.

Regionally, London and Paris remained the strongest revenue contributors, though their sales share slightly declined in 2020. Meanwhile, Bellflower and Berkeley emerged as high-growth markets, reflecting a broader expansion of cycling culture in new locations.

## Comprehensive Analysis and Findings

This section provides an in-depth dive into our analysis of sales performance, product trends, and regional distribution (our three goals outlined the “objectives” section) from 2019 to 2020.

### **Sales Performance Analysis**

- **Total sales and revenue in 2020 saw a significant increase compared to 2019 across all months**, despite the emergence of the COVID-19 pandemic. To put things into perspective: The highest monthly revenue in 2019 was $624,502 in December, while the lowest was $358,878 in May. In contrast, 2020 saw a minimum monthly revenue of $771,349 in February and a peak of $1,874,360 in December. This is largely attributed to Velora’s increased marketing expenditure and growing popularity, driven by advertising and promotional efforts that attracted new customers. However, some of this can be partly caused by an economy-wide surge in consumer spending associated with the pandemic. **Put differently, Velora experienced 300% surge in peak monthly revenue, from $620K in Dec 2019 to $1.85M in Dec 2020**.

<img width="951" alt="Image" src="https://github.com/user-attachments/assets/f7b7501f-2feb-4663-a812-804ebe11bd38" />

- **The monthly revenue trends show a distinct seasonal pattern, with lower sales in the Q1 & Q2 period and higher sales in the Q3 & Q4 period, peaking twice in a year: June and December**. For example, in 2019 revenue fluctuated with notable dips in March, April, and May, and peaks in February, June, and December. In 2020, sales were low from January to April, followed by a peak in June and steady growth for the remainder of the year, culminating in another peak in December. The mid-year peak in June is likely driven by increased outdoor activities encouraged by favorable weather conditions, while December sees a surge in sales due to holiday shopping, gift purchases, and our year-end promotions, making it a natural high-demand period.

<img width="989" alt="Image" src="https://github.com/user-attachments/assets/d798338e-00cf-4ff1-a8bb-74ffebf61cc8" />

- **The sales trend shows lower volatility in the monthly revenue fluctuations of 2020, with sharper peaks and more pronounced dips in 2019**. Compared to 2019, revenue spikes in months like June and August were proportionally more moderate in 2020, while dips, such as those in July and September, were proportionally less severe, indicating a more stable sales pattern throughout the year. This can be attributed to greater macroeconomic stability and a shift in consumer behavior due to the COVID-19 pandemic, leading to steady purchases rather than seasonal buying patterns. Additionally, it may result from marketing strategies that focused on sustained campaigns rather than short-term promotional bursts.

<img width="1113" alt="Image" src="https://github.com/user-attachments/assets/64fc9757-006e-4279-b688-dae4943a3df4" />

### **Product Performance**

- **In both 2019 and 2020, the bikes category overwhelmingly dominated total sales, accounting for 99.5% and 93.93% of sales, respectively**. This indicates that bicycles remained the company’s primary revenue driver, far surpassing other product categories such as accessories and clothing.

<img width="888" alt="Image" src="https://github.com/user-attachments/assets/988c974b-e75c-4a2c-b33b-7487e735f747" />

- **Sales of accessories and apparel experienced significant growth, with their combined share increasing from 0.05% in 2019 to 6.07% in 2020**. This indicates that customers are not just buying bikes but also investing more in complementary gear.
- **Mountain bikes maintained a stable share of total revenue, moving only slightly from 38.72% in 2019 to 38.77% in 2020.** Despite fluctuations in other categories, mountain bikes maintained the same portion of sales, suggesting a steady and loyal client base.

<img width="873" alt="Image" src="https://github.com/user-attachments/assets/de0acf8e-e6f2-42aa-b8e0-de359cd4f586" />

- **Road bikes saw a sharp decline in revenue share, dropping from 60.86% in 2019 to 31.78% in 2020.** This indicates a substantial redistribution of revenue, as road bikes, which previously made up the majority of sales, contributed a significantly smaller fraction in 2020. The decline suggests that customers shifted toward other categories, but despite this drop in share, road bikes still remained one of the top-selling product lines, just with a lower proportional contribution compared to the previous year.
- **Touring bikes experienced a dramatic surge in popularity, increasing their revenue share from just 0.37% in 2019 to 23.38% in 2020.** It is difficult to determine whether its rise as a major contributor to total sales was driven by changes in product selection and marketing or by a significant shift in customer preferences. The growth in this category seemingly came at the expense of road bikes, namely that **the 48% decline in road bike revenue share correlated with a 6,221% surge in touring bike revenue share**, suggesting that customers were looking for more long-distance travel options.

### **Regional Analysis**

- **London and Paris continued to be the top revenue-generating cities in both 2019 and 2020**, though their share of total sales saw a slight decline in 2020. These metropolitan cities remain key markets due to their strong urban cycling culture, extensive bike lane networks, bike-sharing initiatives, and a well-established commuter and recreational cycling community.

<img width="795" alt="Image" src="https://github.com/user-attachments/assets/5c8d0583-a4f2-4151-ab00-fe91ff5dc8cd" />

- **Bellflower and Berkeley saw significant growth in 2020,** emerging as key revenue contributors and signalling a shift in demand toward newer and less traditional cycling markets. This growth is likely driven by an expanding cycling culture, improved infrastructure, and evolving transportation preferences.

## Business Recommendations

Based on the comprehensive analysis of sales performance, product trends, and regional distribution, here are some key business recommendations:

- Given the seasonal peaks in June and December, Velora should allocate more of its budget to marketing ahead of these high-demand periods to maximize revenue. This could include holiday discounts, summer promotions, and bundling deals (e.g., bikes + accessories).

- The surge in touring bike sales from 2019 to 2020 highlights strong demand for long-distance bicycles. Expanding the selection of touring bikes and investing in targeted advertising toward adventure cyclists can help sustain this momentum.

- With road bikes’ share dropping from 60.86% to 31.78%, the marketing team should launch a targeted advertising campaign to re-engage previous buyers, while the sales team can introduce loyalty discounts if needed.

- The rise in accessories and clothing sales from 0.05% to 6.07% suggests an opportunity to diversify revenue streams and increase average order value. To achieve this, the sales team can introduce product bundles or loyalty programs for accessories and clothing alongside bike purchases, while marketing ensures effective promotion.

- Since regional sales performance varies, tailored marketing strategies should be implemented based on city-specific consumer behavior. For example, urban centers with high commuter cycling rates may benefit from road bike campaigns, whereas suburban and rural markets may see stronger engagement with mountain and touring bikes.</div>
