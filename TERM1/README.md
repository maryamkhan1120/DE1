# Weed Prices in the United States

# Overview

This folder contains the two SQL scripts and the entity relationship diagram created by Maryam Khan as part of the Term Project for the Data Engineering 1 course. The script titled ‘xxx’ contains the creation of the schema used in the project, while the script titled 'xxxx2' consists of queries and commands that create the analytical layer, the ETL pipeline and the script titles ‘xxx3’ contains the creation of the data marts. The entity relationship diagram shows how the tables are connected to each other in the used schema. The main goals and detailed description of the process has been outlined below.

## The Project

### Operational layer

My operational layer consists of 3 tables stored in csv. The first table is centered around weed prices in the United States from 2014-2015, the second table contains demographics for each state in the United States and the last table contains the state location along with the legal status of consuming and selling weed. 

The below EER diagrams represent this star schema with weed_prices table in the center as my fact table.

![EER-Diagram.png](https://github.com/maryamkhan1120/DE1/blob/main/TERM1/EER-Diagram.png)

The below diagram shows the relation between all 3 tables:
- In the weed_price table, every observation is the price recorded for high quality and low quality weed at a particular date in every state
- The demographic_state table shows the statistics of a particular state
- The state_location table shows the legal status of weed in that particular with coordinates of the state 

For simplicity purposes and unavailability of data I have assumed that the demographics of the state remained the same from 2014 to 2015.


### Analytics plan

I used the below mentioned steps to make data marts:
1.	Loading up the acquired data
2.	Create ETL pipeline to create a data warehouse
3.	Create ETL pipeline to create data marts for analysis
This is illustrated in the below figure:

![B7727986-6F86-481A-9F4A-EA26B4B09F43.jpeg](https://github.com/maryamkhan1120/DE1/blob/main/TERM1/B7727986-6F86-481A-9F4A-EA26B4B09F43.jpeg)

Using the created data warehouse I created the following data marts with help of views.. The questions they aim to answer are the following:
- View 1: Is the price of high quality and medium quality weed affected by race?
- View 2: Is the price of weed affected by the legal status weed in a specific state?
- View 3: Is the price of weed affected by the average income and rent of the state?
- View 4: Price difference in 2015 and 2014 as compared to race?

### Analytical layer
An analytical layer was created including the relevant columns for the analytics plan. When creating the layer I used inner joins to connect the tables to show only the entries matching the relevant states in the United States.
I created the analytical layer on the below shown star schema:

![FC025870-46DC-41F4-B0F3-39017DDDC6F3.jpeg](https://github.com/maryamkhan1120/DE1/blob/main/TERM1/FC025870-46DC-41F4-B0F3-39017DDDC6F3.jpeg)

### Data Mart
With the help of views, I created four data marts to help answer my analytical questions. 
1.	The first data mart ‘price_race_analysis’ helps in answering the question whether the price of weed in effected by the percentage of white, black, Asian, Hispanics living in a certain state. 
2.	The second data mart ‘legal_status_weed’ helps in answering whether the price of weed is effected by the legalization of weed. 
3.	The third data mart ‘income_rent_weed’ aims to analyze whether the income distribution and the average rent effect the price of weed. 
4.	The fourth data mart is used to calculate the ‘difference_2015_2014’ in the price of weed when compared with the previous year in relation to the percentage of different ethnic races in the different states of United State.

