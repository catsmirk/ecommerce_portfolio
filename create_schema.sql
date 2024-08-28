--  DDL trans_dim
DROP TABLE IF EXISTS PUBLIC.trans_dim;
CREATE TABLE IF NOT EXISTS PUBLIC.trans_dim (
    payment_key text COLLATE pg_catalog."default",
    trans_type text COLLATE pg_catalog."default",
    bank_name text COLLATE pg_catalog."default",
    primary key(payment_key)
) tablespace pg_default;
-- DDL customer_dim
DROP TABLE IF EXISTS PUBLIC.customer_dim;
CREATE TABLE IF NOT EXISTS PUBLIC.customer_dim (
    customer_key text COLLATE pg_catalog."default",
    NAME text COLLATE pg_catalog."default",
    contact_no bigint,
    nid bigint,
    primary key(customer_key)
) tablespace pg_default;

-- DDL item_dim
DROP TABLE IF EXISTS PUBLIC.item_dim;
CREATE TABLE IF NOT EXISTS PUBLIC.item_dim (
    item_key text COLLATE pg_catalog."default",
    item_name text COLLATE pg_catalog."default",
    item_description text COLLATE pg_catalog."default",
    unit_price DOUBLE PRECISION,
    man_country text COLLATE pg_catalog."default",
    supplier text COLLATE pg_catalog."default",
    unit text COLLATE pg_catalog."default",
    primary key(item_key)
) tablespace pg_default;
-- DDL store_dim
DROP TABLE IF EXISTS PUBLIC.store_dim;
CREATE TABLE IF NOT EXISTS PUBLIC.store_dim (
    store_key text COLLATE pg_catalog."default",
    division text COLLATE pg_catalog."default",
    district text COLLATE pg_catalog."default",
    upazila text COLLATE pg_catalog."default",
    primary key(store_key)
) tablespace pg_default;
-- DDL time_dim
DROP TABLE IF EXISTS PUBLIC.time_dim;
CREATE TABLE IF NOT EXISTS PUBLIC.time_dim (
    time_key text COLLATE pg_catalog."default",
    DATE text COLLATE pg_catalog."default",
    HOUR bigint,
    DAY bigint,
    week text COLLATE pg_catalog."default",
    MONTH bigint,
    quarter text COLLATE pg_catalog."default",
    YEAR bigint,
    primary key(time_key)
) tablespace pg_default;

-- DDL fact_table
DROP TABLE IF EXISTS PUBLIC.fact_table;
CREATE TABLE IF NOT EXISTS PUBLIC.fact_table (
    payment_key text COLLATE pg_catalog."default",
    customer_key text COLLATE pg_catalog."default",
    time_key text COLLATE pg_catalog."default",
    item_key text COLLATE pg_catalog."default",
    store_key text COLLATE pg_catalog."default",
    quantity bigint,
    unit text COLLATE pg_catalog."default",
    unit_price DOUBLE PRECISION,
    total_price DOUBLE PRECISION
) tablespace pg_default;