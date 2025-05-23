-- Analytical Queries for Lab Performance

-- 1. Average duration by test type
SELECT test_type, ROUND(AVG(duration_mins), 2) AS avg_duration
FROM lab_operations
GROUP BY test_type;

-- 2. Failed or delayed tests per technician
SELECT lab_technician, status, COUNT(*) AS count
FROM lab_operations
WHERE status != 'Completed'
GROUP BY lab_technician, status;

-- 3. CTE for identifying tests exceeding 120 mins
WITH long_tests AS (
    SELECT * FROM lab_operations WHERE duration_mins > 120
)
SELECT test_type, COUNT(*) AS count_long_tests
FROM long_tests
GROUP BY test_type;