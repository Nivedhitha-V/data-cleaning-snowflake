
CREATE OR REPLACE TABLE curated_sales_file.sales_cleaned AS
SELECT
    ORDERNUMBER,
    QUANTITYORDERED,
    PRICEEACH,
    ORDERLINENUMBER,
    SALES,
    
    -- Convert to proper date format
    CAST(
  COALESCE(
    TRY_TO_TIMESTAMP(ORDERDATE, 'MM/DD/YYYY HH24:MI'),
    TRY_TO_TIMESTAMP(ORDERDATE, 'MM-DD-YYYY HH24:MI')
        ) AS DATE
    ) AS ORDER_DATE,


    -- Capitalize status (Shipped → SHIPPED)
    UPPER(STATUS) AS STATUS,
    
    QTR_ID,
    MONTH_ID,
    YEAR_ID,
    
    -- Capitalize each word (motorcycles → Motorcycles)
    INITCAP(PRODUCTLINE) AS PRODUCTLINE,
    MSRP,
    PRODUCTCODE,
    
    -- Clean up customer name
    INITCAP(CUSTOMERNAME) AS CUSTOMERNAME,
    
    -- Clean phone (remove brackets, dashes, spaces, etc.)
    REGEXP_REPLACE(PHONE, '[^0-9+]', '') AS CLEAN_PHONE,
    
    -- Remove extra spaces from addresses
    TRIM(ADDRESSLINE1) AS ADDRESSLINE1,
    TRIM(ADDRESSLINE2) AS ADDRESSLINE2,
    INITCAP(CITY) AS CITY,
    UPPER(STATE) AS STATE,
    POSTALCODE,
    INITCAP(COUNTRY) AS COUNTRY,
    UPPER(TERRITORY) AS TERRITORY,
    INITCAP(CONTACTLASTNAME) AS CONTACTLASTNAME,
    INITCAP(CONTACTFIRSTNAME) AS CONTACTFIRSTNAME,
    INITCAP(DEALSIZE) AS DEALSIZE

FROM raw_sales_file.sales_raw -- Database.Schema [Snowflake format]

-- To ignore empty rows
WHERE ORDERNUMBER IS NOT NULL;


SELECT *
FROM "SALES_PROJECT"."CURATED_SALES_FILE"."SALES_CLEANED" -- Database.Schema.Table [format from Snowflake format]
WHERE ORDERNUMBER IS NOT NULL;
