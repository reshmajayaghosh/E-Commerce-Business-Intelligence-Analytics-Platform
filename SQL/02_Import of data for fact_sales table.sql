LOAD DATA INFILE
'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fact_sales_dw.csv'
INTO TABLE fact_sales
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SHOW GLOBAL VARIABLES LIKE 'local_infile';

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'secure_file_priv';