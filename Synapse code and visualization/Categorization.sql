WITH CategorizedData AS (
    SELECT
        *,
        CASE 
            WHEN CAST([result].total_qty AS INT) < 20 THEN 'Other'
            ELSE [result].category
        END AS new_category
    FROM
        OPENROWSET(
            BULK 'https://capstone2storage0.dfs.core.windows.net/bd-project/BI/categorized_results.csv/part-00000-tid-3606036677834734013-f3e29d3c-4c7d-4a19-9917-b9e687216c90-122-1-c000.csv',
            FORMAT = 'CSV',
            PARSER_VERSION = '2.0',
            HEADER_ROW = TRUE
        ) AS [result]
            WHERE [result].category != 'Other'
)
SELECT
    new_category AS category,
    SUM(CAST(total_qty AS INT)) AS total_qty
FROM
    CategorizedData
GROUP BY
    new_category
ORDER BY
    total_qty DESC;
