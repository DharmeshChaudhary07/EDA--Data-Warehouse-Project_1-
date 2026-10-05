# Exploratory Data Analysis: Data Warehouse Project

SQL-based exploratory data analysis (EDA) on the gold layer of the [Data Warehouse Project](https://github.com/DharmeshChaudhary07/Data-Warehouse-Project_1), a MySQL warehouse built with medallion architecture. The goal is to understand the structure, scope and key numbers of the sales data before deeper analysis.

> **Next:** [Advanced Analysis](https://github.com/DharmeshChaudhary07/Advance_Analysis--Data-Warehouse-Project_1)

---

## Objectives

- Understand the database structure and available dimensions
- Check the time span covered by the data
- Calculate headline business measures
- Compare categories by magnitude and rank top and bottom performers

## Scripts

| File | What it does |
|------|--------------|
| `init_database.sql` | Sets up the database and loads the data |
| `database_exploration(1).sql` | Explores tables and columns (schema overview) |
| `dimensions_exploration(2).sql` | Explores dimension values (countries, categories, products, etc.) |
| `date_range_exploration.sql` | Finds the first and last order dates and the overall time span |
| `measures_exploration.sql` | Computes key measures: total sales, quantity, average price, order, product and customer counts |
| `magnitude_analysis.sql` | Compares measures across dimensions (e.g. revenue by category, customers by country) |
| `ranking_analysis.sql` | Ranks top and bottom products and customers by revenue |

## Skills Demonstrated

SQL aggregations · `GROUP BY` · joins · date functions · window functions for ranking (`RANK`, `ROW_NUMBER`, `DENSE_RANK`) · data profiling

## How to Run

1. Run `init_database.sql` to create and populate the database.
2. Run the exploration scripts in the order listed above.

**Requirements:** MySQL 8.x and a SQL client (e.g. MySQL Workbench).

## Author

**Dharmesh Chaudhary** · [GitHub](https://github.com/DharmeshChaudhary07)

## License

MIT License. See [LICENSE](LICENSE).
