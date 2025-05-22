# Lab 1 Reflection & Discussion: Building a Mini Data Warehouse
# Discussion Questions:
### 1. Why use a star schema instead of a normalized schema?

When building a data warehouse, a star schema is often the better choice because it makes analytics faster and simpler. Normalized schemas work better for transactional systems (like processing orders), but they’re not ideal for reporting and analysis.

Performance: In a star schema, data retrieval for analytical queries often involves fewer joins (typically one join between the fact table and each dimension table). This reduces the complexity of queries and significantly improves query performance, especially for large datasets. Normalized schemas, with their many tables and complex relationships, would require numerous joins, leading to slower query execution for analytical workloads.

Simplicity and Understandability: The star schema's straightforward structure (a central fact table surrounded by dimension tables) is intuitive and easy for business users and analysts to understand. This simplifies query writing and report generation, as they don't need to navigate complex join paths.

Optimized for Aggregation: Data warehouses are built for aggregation and summarization. The star schema's design naturally facilitates this by centralizing measures in the fact table and attributes in the dimensions, making it easy to group and aggregate data along various dimensions.

ETL Simplicity: While ETL can be complex, loading data into a star schema can sometimes be simpler than into a highly normalized schema, as there's less need for complex transformations to maintain strict normalization rules during the load process.

### 2. What are the benefits of separating facts from dimensions?

Separating facts from dimensions is a core idea in dimensional modeling and offers several significant benefits:

Improved Query Performance:

Fewer joins mean queries run faster.

Fact tables stay compact containing only keys and numbers hence they load faster.

Enhanced Understandability and Maintainability:

Clear Separation of Concerns: Dimensions describe who, what, where, when, and how (contextual data), while facts describe what happened (measurable events). This clear separation makes the data model more intuitive and easier to navigate for business users.

Reduced Redundancy: Dimensional attributes (like product name, store city) are stored only once in the dimension tables. If they were stored in the fact table, they would be duplicated for every transaction, leading to massive redundancy and storage inefficiency.

Flexibility and Scalability:

Independent Growth: Dimensions can grow and change independently of the fact table. New attributes can be added to dimensions without affecting the fact table structure.

Easier Data Loading: Changes to dimensional attributes don't require reloading the entire fact table, simplifying ETL processes.

Data Quality and Consistency:

By centralizing descriptive attributes in dimensions, it's easier to maintain data quality and consistency for those attributes across all facts. For example, a product name is defined once in dim_product rather than potentially having variations across many fact_sales records.

### 3. What types of business decisions could this warehouse support?

This mini data warehouse, even with its simple structure, can support a wide range of critical business decisions for a retail company:

Sales and Performance Analysis:

Identifying Top/Bottom Performing Products: Which products generate the most revenue or sell the most units overall? (Supported by "Top Products by Quantity Sold" and "Total Revenue by Product Category" queries).

Understanding Sales Trends: How do sales vary by month, quarter, or year? Are there seasonal patterns? (Supported by "Monthly Sales Trends" query).

Assessing Store Performance: Which stores or regions are performing best/worst in terms of revenue? (Supported by "Revenue by Region" query).

Marketing and Promotion Strategies:

Targeted Promotions: Identifying which product categories are popular in specific regions or during certain months can inform targeted marketing campaigns.

Inventory Management: Understanding sales trends helps optimize inventory levels, reducing holding costs and preventing stockouts.

Strategic Planning:

Resource Allocation: Data on regional or store performance can guide decisions on where to invest more resources (e.g., opening new stores, increasing marketing spend).

Product Development: Insights into popular product categories can inform future product development and sourcing.

Operational Efficiency:

Supply Chain Optimization: Understanding sales patterns helps in forecasting demand and streamlining the supply chain.

Staffing Decisions: Monthly sales trends can help in planning staffing levels for stores.

In essence, this data warehouse provides a consolidated, historical view of sales data, enabling the retail company to move beyond simply knowing "what happened" to understanding "why it happened" and making informed decisions about "what to do next."

