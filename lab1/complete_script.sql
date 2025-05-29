-- Dimension: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE NOT NULL,
    day INT NOT NULL,
    month INT NOT NULL,
    quarter INT NOT NULL,
    year INT NOT NULL
);

-- Dimension: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,    
    category VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL
);

-- Dimension: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL
);

-- Fact: Sales
CREATE TABLE fact_sales (
    sale_id INT PRIMARY KEY,
    date_id INT NOT NULL,
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    quantity_sold INT NOT NULL,
    revenue DECIMAL(10, 2) NOT NULL,
    -- Define Foreign Keys to link to dimension tables
    FOREIGN KEY (date_id) REFERENCES dim_date (date_id),
    FOREIGN KEY (product_id) REFERENCES dim_product (product_id),
    FOREIGN KEY (store_id) REFERENCES dim_store (store_id)
);

-- Load data into dim_date
COPY dim_date (date_id, full_date, day, month, quarter, year)
FROM '/Users/hokage/Desktop/USIU/Second Year/Semester 6/DSA 2040A Warehousing/Retail_Data_Warehouse_Lab/dim_date.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');

-- Load data into dim_product
COPY dim_product (product_id, name, category, brand)
FROM '/Users/hokage/Desktop/USIU/Second Year/Semester 6/DSA 2040A Warehousing/Retail_Data_Warehouse_Lab/dim_product.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');

-- Load data into dim_store
COPY dim_store (store_id, store_name, city, region)
FROM '/Users/hokage/Desktop/USIU/Second Year/Semester 6/DSA 2040A Warehousing/Retail_Data_Warehouse_Lab/dim_store.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');

-- Load data into fact_sales
COPY fact_sales (sale_id, date_id, product_id, store_id, quantity_sold, revenue)
FROM '/Users/hokage/Desktop/USIU/Second Year/Semester 6/DSA 2040A Warehousing/Retail_Data_Warehouse_Lab/fact_sales.csv'
WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', QUOTE '"');

-- Query 1: Total Revenue by Product Category
SELECT
    p.category,
    SUM(f.revenue) AS total_revenue
FROM
    fact_sales f
JOIN
    dim_product p ON f.product_id = p.product_id
GROUP BY
    p.category
ORDER BY
    total_revenue DESC;

-- Query 2: Monthly Sales Trends
SELECT
    d.year,
    d.month,
    SUM(f.revenue) AS monthly_revenue
FROM
    fact_sales f
JOIN
    dim_date d ON f.date_id = d.date_id
GROUP BY
    d.year, d.month
ORDER BY
    d.year, d.month;

-- Query 3: Revenue by Region
SELECT
    s.region,
    SUM(f.revenue) AS region_revenue
FROM
    fact_sales f
JOIN
    dim_store s ON f.store_id = s.store_id
GROUP BY
    s.region
ORDER BY
    region_revenue DESC;

-- Query 4: Top Products by Quantity Sold
SELECT
    p.name,
    SUM(f.quantity_sold) AS total_quantity
FROM
    fact_sales f
JOIN
    dim_product p ON f.product_id = p.product_id
GROUP BY
    p.name
ORDER BY
    total_quantity DESC;
