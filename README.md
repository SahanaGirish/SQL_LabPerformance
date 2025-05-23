# Lab Operations Performance Analysis with SQL

This project demonstrates how to analyze healthcare lab operations data using advanced SQL techniques including:

- Window Functions (`RANK()`, `LAG()`, `AVG()` with `OVER`)
- Common Table Expressions (CTEs)
- Grouped Aggregations

## Dataset

The dataset simulates lab test performance with:
- `patient_id`, `test_type`, `start_time`, `duration_mins`, and `status`
- It is stored in `data/lab_operations_data.csv`

## Project Structure

- `sql/` contains all SQL queries
  - `window_functions_queries.sql`: Analytics using window functions
  - `analysis_queries.sql`: CTEs and summary stats
- `data/` has the CSV file
- `notebooks/` (optional): Interactive exploration (to be added)

## How to Use

You can run these queries on:
- PostgreSQL (after importing the CSV)
- SQLite / DuckDB for lightweight execution
- Any BI platform supporting standard SQL

## Example Questions Answered
- Which technician consistently handles long tests?
- Are delays associated more with a specific test type?
- How does average test duration vary?

---
© Sahana Girish | May 2025
