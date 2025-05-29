## Reflection Questions:

**1. Why is the OLTP system normalized and the OLAP system denormalized?**

The OLTP (Online Transaction Processing) systems are systems designed to support real-time transactional systems that handle a large number of short, atomic transactions. They are normalized to ensure the following:

* **Data Integrity:** Normalization helps keep the data accurate and consistent. By storing each piece of information in only one place, it reduces the chances of errors that can happen if the same data is stored in multiple places.
* **Efficiency in Updates:** When data is normalized, it makes it easier to add, change, or delete individual pieces of information without affecting other parts of the database. This is crucial for OLTP systems that handle many small, frequent transactions.
* **Space Optimization:** Normalization reduces data redundancy, meaning the same information isn't stored multiple times. This saves storage space and makes the database more efficient.
* **Faster Transactions:** Since OLTP systems are designed for quick, everyday transactions, having a well-structured and normalized database allows for faster processing of these transactions.
* **Avoiding Anomalies:** Normalization helps prevent anomalies during data operations, such as insertion, deletion, or update anomalies, which can lead to inconsistent data.
* **Scalability:** A normalized database can handle growth better, as it can efficiently manage increasing amounts of data without becoming cluttered or slow.
* **Easier Maintenance:** Normalized databases are generally easier to maintain because the structure is clear and logical, making it simpler to understand relationships between data.

On the other hand, OLAP (Online Analytical Processing) systems are systems optimized for querying and analyzing large volummes of historical data. Such systems are denormalized for these reasons:

* **Faster Query Performance:** Denormalization allows for fewer joins between tables, which speeds up query performance. OLAP systems often need to run complex queries that aggregate large amounts of data, so having fewer tables to join makes these queries much faster.
* **Simplified Data Structure:** Denormalized databases often have fewer tables, which makes it easier for analysts to write queries. This is important in OLAP systems where users may not be database experts and need to quickly access and analyze data.
* **Better for Reporting:** OLAP systems are designed for reporting and analysis, where users often need to look at data in a summarized or aggregated form. Denormalization allows for pre-computed summaries and aggregations, which can be accessed quickly without complex calculations.
* **Historical Data Handling:** OLAP systems often deal with large amounts of historical data that need to be analyzed over time. Denormalization allows for easier storage and retrieval of this data, as it can be structured in a way that supports efficient querying of trends and patterns.
* **Reduced Complexity for Analysts:** Analysts often need to work with data from multiple sources and may not have deep technical knowledge of the database structure. Denormalization simplifies the data model, making it easier for them to understand and use.

---

**2. What challenges would be faced if analytical queries were run directly on the OLTP system?**

Running analytical queries directly on an OLTP (Online Transaction Processing) system can lead to several significant challenges. OLTP systems are designed for fast, efficient transaction processing, not for complex data analysis. Here are some of the main issues you would encounter:

* **Performance Issues:** Analytical queries are often resource-intensive, involving large scans and aggregations. Executing them on an OLTP system can consume excessive memory and CPU, degrading the performance of critical transactional operations and potentially causing system slowdowns or failures.
* **Complex Queries:** OLTP databases are typically normalized, meaning data is split into many small tables to reduce redundancy. This structure makes it difficult to write simple queries for broad analytical questions. For example, if you wanted to analyze sales trends over a year, you would have to join many tables together, leading to complicated and hard-to-maintain SQL queries.
* **Data Consistency Issues:** OLTP systems are constantly being updated with new transactions. If you start running an analytical query while data is being changed, the results can become inconsistent. For example, if a sale is being processed while you're trying to analyze sales data, the numbers you get might not accurately reflect the state of the database at a single point in time.
* **Historical Data Limitations:** OLTP systems are designed to manage current, active data rather than large volumes of historical data. They may not efficiently store or retrieve years of past transactions, which are often needed for comprehensive analysis. Trying to run historical queries on an OLTP system can lead to performance degradation and slow response times.
* **Lack of Aggregated Data:** OLTP systems store detailed transaction data but do not typically pre-calculate summaries or aggregates that are often needed for analysis. This means that every time you run an analytical query, the system has to calculate these aggregates on the fly, which can be time-consuming and resource-intensive.
* **Inability to Handle Large Data Volumes:** OLTP systems are not designed to handle the large volumes of data that analytical queries often require. They may struggle with performance or even crash if too much data is requested at once, leading to downtime and lost business opportunities.
* **No Support for Complex Analytics:** OLTP systems are not built to support advanced analytical functions like data mining, predictive analytics, or complex aggregations. These types of analyses require a different architecture that can handle large datasets and complex calculations efficiently.

---

**3. How can automation (e.g., scheduled ETL jobs) help in a real-world data pipeline?**

Automation, especially through scheduled ETL (Extract, Transform, Load) jobs, is absolutely essential in how businesses handle their data today. Think of it as having a tireless, super-efficient team handling all the data movement:

* **Always Fresh and Ready Data:** Instead of someone manually gathering, cleaning, and moving data every day, automated ETL jobs run automatically at set times. This means the data in your data warehouse is always up-to-date and ready for analysis, giving decision-makers current and reliable information.
* **Saves Time and Effort:** Manual data tasks are repetitive and can take a huge amount of time. Automation takes this burden off, freeing up skilled data professionals to focus on higher-level work, like finding new business insights or building advanced data models.
* **More Reliable Data:** Humans can make mistakes, but automated systems follow the exact same rules every single time they run. This leads to much more consistent and trustworthy data in the data warehouse, which means the reports and dashboards based on it are also more reliable.
* **Handles Growth Easily:** As a business grows and collects more and more data, an automated pipeline can handle these increasing amounts of information much more efficiently than a manual process, without needing to hire more people just to move data around.
* **Quickly Spots Problems:** Good automated systems are set up to tell you immediately if something goes wrong during the data transfer process. This allows teams to fix issues quickly, ensuring there are no long delays in getting important data for analysis.
* **Smooth and Predictable Flow:** Automation creates a steady and dependable flow of data from where it's created (like the cash register) to where it's analyzed (the data warehouse). This ensures that the right data is available at the right time for making important business decisions.