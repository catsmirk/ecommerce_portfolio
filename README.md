# Project Overview
An analysis project using a retail dataset from Kaggle https://www.kaggle.com/datasets/mmohaiminulislam/ecommerce-data-analysis

# Outputa
## Final dashboard 
- [Tableau](https://public.tableau.com/views/EcommercePortfolio/QuantityMetrics?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link). Dashboard inspiration from https://www.youtube.com/watch?v=dahrmqT5GD4&t=7172s Many thanks to the original creator of this video
- [PowerBI] (https://drive.google.com/drive/u/0/folders/1cROTIPGlSgh7PIyC65uyYMS8uydIFC6l)
     
<img width="1155" alt="image" src="https://github.com/user-attachments/assets/f67be7e2-5a28-44d4-9826-d663a2918b7d">

- Accompanied project files (https://drive.google.com/drive/u/0/folders/1cROTIPGlSgh7PIyC65uyYMS8uydIFC6l)
   - User Dashboard Story (https://docs.google.com/document/d/1sjWXgiue1Uq8qnEOBBY2HlrxNtLpMayXsppj3ISRwr8/edit?usp=drive_link)
   - Dashboard Mockup (https://docs.google.com/presentation/d/1KMzDfqVA-hoccYwwnZZ0aUnnjU3gPQFjnzb4sl77MJQ/edit?usp=drive_link)
   - Instructions to replicate the project (https://docs.google.com/presentation/d/1U0KjNB_sk0pratXtQa-Jtt-cKJEPm_bmRP5ZlX-tyos/edit?usp=drive_link)   

Step 1: Download the dataset and insert the data from the .csv files in the dataset folder into a local database (I'm using PostgreSQL) using the notebook insert_data_into_db.

Step 2: Get the CREATE TABLE statement from the db after the data has been inserted successfully. Review and update the data type, column names and constraints as appropriate. Update the DDL statements for all tables in the create_schema.sql file after the review

Step 3: If any column name has changed, look for the part ## Rename DataFrame columns to match PostgreSQL table columns ## and update the df column name to match with the column names in the database as in Step 2


