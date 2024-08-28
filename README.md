# ecommerce_portfolio
An analysis project using an ecommerce dataset from Kaggle https://www.kaggle.com/datasets/mmohaiminulislam/ecommerce-data-analysis

Dashboard Inspiration from 
    * https://www.youtube.com/watch?v=dahrmqT5GD4&t=7172s Many thanks to the original creator of this video
    * <div class='tableauPlaceholder' id='viz1724837811403' style='position: relative'><noscript><a href='#'><img alt='Total Revenue854,563▲ 0.32% vs LY ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ec&#47;EcommercePortfolio&#47;QuantityMetrics&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='EcommercePortfolio&#47;QuantityMetrics' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Ec&#47;EcommercePortfolio&#47;QuantityMetrics&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1724837811403');                    var vizElement = divElement.getElementsByTagName('object')[0];                    vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';                    var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>

Accompanied project files https://drive.google.com/drive/u/0/folders/1cROTIPGlSgh7PIyC65uyYMS8uydIFC6l

Step 1: Download the dataset and insert the data from the .csv files in the dataset folder into a local database (I'm using PostgreSQL) using the notebook insert_data_into_db.
Step 2: Get the CREATE TABLE statement from the db after the data has been inserted successfully. Review and update the data type, column names and constraints as appropriate. Update the DDL statements for all tables in the create_schema.sql file after the review
Step 3: If any column name has changed, look for the part ## Rename DataFrame columns to match PostgreSQL table columns ## and update the df column name to match with the column names in the database as in Step 2


