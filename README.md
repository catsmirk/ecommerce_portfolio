# ecommerce_portfolio
An analysis project using a retail dataset from Kaggle https://www.kaggle.com/datasets/mmohaiminulislam/ecommerce-data-analysis

Dashboard Inspiration from 
    * https://www.youtube.com/watch?v=dahrmqT5GD4&t=7172s Many thanks to the original creator of this video
    * Final dashboard https://public.tableau.com/views/EcommercePortfolio/QuantityMetrics?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

Accompanied project files https://drive.google.com/drive/u/0/folders/1cROTIPGlSgh7PIyC65uyYMS8uydIFC6l

Step 1: Download the dataset and insert the data from the .csv files in the dataset folder into a local database (I'm using PostgreSQL) using the notebook insert_data_into_db.

Step 2: Get the CREATE TABLE statement from the db after the data has been inserted successfully. Review and update the data type, column names and constraints as appropriate. Update the DDL statements for all tables in the create_schema.sql file after the review

Step 3: If any column name has changed, look for the part ## Rename DataFrame columns to match PostgreSQL table columns ## and update the df column name to match with the column names in the database as in Step 2


