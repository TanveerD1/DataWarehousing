# Data Warehousing and Data Mining Labs

This repository serves as a central hub for all lab assignments and projects throughout the Data Warehousing and Data Mining course. Each "lab" corresponds to a distinct folder within this repository, designed to contain specific SQL scripts, code, data files, and documentation related to a particular lab assignment.

## Repository Structure

This repository will be organized into folders, with each folder representing a lab:

  * `lab1/`: Contains all files for Lab 1 (e.g., SQL scripts for schema, data loading, queries, and related code).
  * `lab2/`: Contains all files for Lab 2 (e.g., SQL scripts for schema, data loading, queries, and related code).
  * ...and so on for subsequent labs throughout the semester.

### Typical Lab Folder Contents (Example: `labX/`)

Within each individual `labX/` folder, you can expect to find:

  * `README.md`: Specific instructions, objectives, and details for that particular lab.
  * `schema.sql`: SQL scripts for creating database tables and defining the schema.
  * `load_data.sql`: SQL commands or scripts to load data into the database from various sources (e.g., CSV files).
  * `analytical_queries.sql`: Sample SQL queries for data analysis and reporting, or for specific lab tasks.
  * `etl.sql`: Scripts related to Extract, Transform, Load processes.
  * `oltp_schema.sql`: OLTP (Online Transaction Processing) schema definition.
  * `olap_schema.sql`: OLAP (Online Analytical Processing) schema definition (for the data warehouse).
  * `*.csv`: Raw data files (e.g., dimension and fact tables) used in the lab.
  * Other code files (`.py`, `.java`, etc.) if the lab involves programming.
  * `Questions.md`: Document for lab questions and answers.
  * `full_script.sql` (Optional): A comprehensive script combining table creation, data loading, and analytical queries for ease of execution.

## How to Use a Specific Lab

To work with any particular lab:

1.  **Navigate to the Lab Folder:** Using your terminal, change into the desired lab's directory:
    ```bash
    cd labX # Replace X with the lab number, e.g., cd lab1
    ```
2.  **Review Lab Instructions:** Open the `README.md` file within that specific `labX/` folder for detailed instructions unique to that lab.
3.  **Set up your database:** Ensure you have the required database system (e.g., PostgreSQL) running locally.
4.  **Execute SQL Scripts:** Use your preferred SQL client (like pgAdmin, DBeaver, or VS Code's Query Tool) to run the `.sql` files in the specified order (typically `schema.sql`, then `load_data.sql`, followed by `analytical_queries.sql`). Update any file paths in `load_data.sql` if necessary.

## Connecting PostgreSQL to VS Code and Querying

VS Code can be a powerful tool for interacting with your PostgreSQL database locally.

### 1\. Install Necessary VS Code Extensions

Open VS Code, go to the Extensions view (Ctrl+Shift+X or Cmd+Shift+X), and install:

  * **PostgreSQL** (by Microsoft or by Chris Kolon) - Provides basic PostgreSQL integration.
  * **SQLTools** (by Matheus Teixeira) and its **PostgreSQL/Redshift** driver - A robust database client.

### 2\. Configure a New Database Connection (using SQLTools)

1.  Open the SQLTools view in VS Code (usually an icon in the left sidebar, or Ctrl+Alt+S / Cmd+Option+S).
2.  Click on `Add New Connection` or the `+` icon in the Connections panel.
3.  Choose `PostgreSQL/Redshift` as the database driver.
4.  Fill in your connection details:
      * **Connection Name:** Give it a descriptive name (e.g., `Local DW`).
      * **Host:** `localhost` (or your PostgreSQL server IP/hostname).
      * **Port:** `5432` (default PostgreSQL port).
      * **Username:** Your PostgreSQL username (e.g., `postgres`).
      * **Password:** Your PostgreSQL password.
      * **Database:** The name of your database (e.g., `retail_dw` for a specific lab, or `postgres` if you haven't created a specific one yet).
5.  Click `Test Connection` to ensure it works, then `Save Connection`.

### 3\. Querying from VS Code

1.  In the SQLTools view, right-click on your newly created connection and select `Connect`.
2.  Once connected, you can:
      * **Browse Database Objects:** Expand your connection to view databases, schemas, tables, views, etc.
      * **Open a new SQL Query File:** Click the `New Query` button in the SQLTools panel, or create a new `.sql` file in your workspace (File \> New File, save as `my_queries.sql`).
      * **Run Queries:** Type your SQL queries in the `.sql` file. Select the specific query you want to run, then right-click and choose `Run Query` or use the associated keyboard shortcut (often Ctrl+Enter / Cmd+Enter).
      * **View Results:** Query results will appear in a new tab or panel within VS Code.

## Contributors

This project is a collaborative effort by the following team members:

  * **Tanveer Omar** ([@TanveerD1](https://www.google.com/search?q=https://github.com/TanveerD1))
  * **Calvin Gacheru** (670035) ([@Campeon254](https://www.google.com/search?q=https://github.com/Campeon254))
  * **Samantha Masake** ([@SamanthaMasaki](https://www.google.com/search?q=https://github.com/SamanthaMasaki))
  * **Arlen Ngahu** ([@ArlenNgahu](https://www.google.com/search?q=https://github.com/ArlenNgahu))
  * **Patricia Kiarie** ([@PatriciaKiarie04](https://www.google.com/search?q=https://github.com/PatriciaKiarie04))
  * **Susan Otieno** (670501) ([@suezan884](https://www.google.com/search?q=https://github.com/suezan884))

## License

This project is licensed under the [MIT License](https://www.google.com/search?q=LICENSE).

