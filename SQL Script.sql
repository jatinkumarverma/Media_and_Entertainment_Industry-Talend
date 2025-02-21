CREATE DATABASE project_talend;
USE project_talend;

CREATE TABLE stock (
    thisstck_nm VARCHAR(50), -- Direct Move
    dpt_no INT,           -- Department Number
    dpt_nm VARCHAR(100),     -- Department Name
    address VARCHAR(100),    -- Address
    lctn VARCHAR(100),       -- Location
    cntry VARCHAR(15),       -- Country
    rt INT               -- Stock Rate
);

CREATE TABLE production (
    name VARCHAR(100),       -- Product Name
    vendor VARCHAR(50)       -- Product Vendor
);

CREATE TABLE profit (
    stock_name VARCHAR(50),         -- Stock Name
    production_vendor VARCHAR(50),  -- Vendor
    Amount INT                   -- Amount
);


CREATE TABLE Target_Production (
    PR_ID INT,
    PR_NAME VARCHAR(100),
    PR_VNDR VARCHAR(50)
);

CREATE TABLE target_profit (
    PF_ID INT, -- Surrogate key
    PF_STCK_ID INT, -- Do a look up on Stock
    PF_STCK_DPT_NO INT, -- Do a look up on Stock
    PR_NM VARCHAR(100), -- Do a look up on Production
    PR_PRFT INT -- Calculate based on the Amnt - Rate
);

CREATE TABLE Target_Stock (
    STCK_ID INT,
    STCK_NM VARCHAR(50),
    STCK_DPT_NO INT,
    STCK_DPT_NM VARCHAR(100),
    STCK_ADDRESS VARCHAR(100),
    STCK_LCTN VARCHAR(100),
    STCK_CNTRY VARCHAR(15),
    STCKK_RT INT,
    START_DATE DATETIME,
    END_DATE DATETIME
);
