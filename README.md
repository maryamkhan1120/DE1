# Weed Prices in the United States

# Overview

This folder contains the two SQL scripts and the entity relationship diagram created by Maryam Khan as part of the Term Project for the Data Engineering 1 course. The script titled ‘xxx’ contains the creation of the schema used in the project, while the script titled 'xxxx2' consists of queries and commands that create the analytical layer, the ETL pipeline and the script titles ‘xxx3’ contains the creation of the data marts. The entity relationship diagram shows how the tables are connected to each other in the used schema. The main goals and detailed description of the process has been outlined below.

## The Project

### Operational layer

My operational layer consists of 3 tables stored in csv. The first table is centered around weed prices in the United States from 2014-2015, the second table contains demographics for each state in the United States and the last table contains the state location along with the legal status of consuming and selling weed. 

The below EER diagrams represent this star schema with weed_prices table in the center as my fact table.
INSERT IMAGE

The below diagram shows the relation between all 3 tables:
- In the weed_price table, every observation is the price recorded for high quality and low quality weed at a particular date in every state
- The demographic_state table shows the statistics of a particular state
- The state_location table shows the legal status of weed in that particular with coordinates of the state 

For simplicity purposes and unavailability of data I have assumed that the demographics of the state remained the same from 2014 to 2015.


