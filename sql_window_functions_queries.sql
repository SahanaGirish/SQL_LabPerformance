-- Window Functions for Lab Operations Analysis

-- 1. Rank tests by duration within each test type
SELECT 
    patient_id, test_type, duration_mins,
    RANK() OVER (PARTITION BY test_type ORDER BY duration_mins DESC) AS duration_rank
FROM lab_operations;

-- 2. Calculate moving average of duration per technician
SELECT 
    lab_technician, start_time, duration_mins,
    AVG(duration_mins) OVER (
        PARTITION BY lab_technician 
        ORDER BY start_time 
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS moving_avg_duration
FROM lab_operations;

-- 3. Use LAG to compare current test duration to previous
SELECT 
    patient_id, start_time, duration_mins,
    LAG(duration_mins) OVER (PARTITION BY patient_id ORDER BY start_time) AS prev_duration
FROM lab_operations;