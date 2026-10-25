
-- Objective: Compare satisfaction across key passenger segments

-- 1. Overall passenger satisfaction
SELECT
    satisfaction,
    COUNT(*) AS passenger_count,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage
FROM airline_satisfaction_clean
GROUP BY satisfaction
ORDER BY passenger_count DESC;


-- 2. Satisfaction rate by passenger class
SELECT
    class,
    COUNT(*) AS total_passengers,
    SUM(CASE
        WHEN satisfaction = 'Satisfied' THEN 1
        ELSE 0
    END) AS satisfied_passengers,
    ROUND(
        100.0 * SUM(CASE
            WHEN satisfaction = 'Satisfied' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS satisfaction_rate_pct
FROM airline_satisfaction_clean
GROUP BY class
ORDER BY satisfaction_rate_pct DESC;


-- 3. Satisfaction rate by type of travel
SELECT
    type_of_travel,
    COUNT(*) AS total_passengers,
    ROUND(
        100.0 * SUM(CASE
            WHEN satisfaction = 'Satisfied' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS satisfaction_rate_pct
FROM airline_satisfaction_clean
GROUP BY type_of_travel
ORDER BY satisfaction_rate_pct DESC;


-- 4. Satisfaction rate by customer type
SELECT
    customer_type,
    COUNT(*) AS total_passengers,
    ROUND(
        100.0 * SUM(CASE
            WHEN satisfaction = 'Satisfied' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS satisfaction_rate_pct
FROM airline_satisfaction_clean
GROUP BY customer_type
ORDER BY satisfaction_rate_pct DESC;


-- 5. Satisfaction rate by departure delay band
SELECT
    CASE
        WHEN departure_delay = 0 THEN 'No delay'
        WHEN departure_delay <= 15 THEN '1 to 15 min'
        WHEN departure_delay <= 30 THEN '16 to 30 min'
        WHEN departure_delay <= 60 THEN '31 to 60 min'
        ELSE 'Over 60 min'
    END AS departure_delay_band,
    COUNT(*) AS total_passengers,
    ROUND(
        100.0 * SUM(CASE
            WHEN satisfaction = 'Satisfied' THEN 1
            ELSE 0
        END) / COUNT(*),
        2
    ) AS satisfaction_rate_pct
FROM airline_satisfaction_clean
GROUP BY
    CASE
        WHEN departure_delay = 0 THEN 'No delay'
        WHEN departure_delay <= 15 THEN '1 to 15 min'
        WHEN departure_delay <= 30 THEN '16 to 30 min'
        WHEN departure_delay <= 60 THEN '31 to 60 min'
        ELSE 'Over 60 min'
    END
ORDER BY
    MIN(departure_delay);
