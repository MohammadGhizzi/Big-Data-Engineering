-- This is auto-generated code
SELECT
    TOP 5 *
FROM
    OPENROWSET(
        BULK 'https://capstone2storage0.dfs.core.windows.net/bd-project/BI/ml_result.csv',
        FORMAT = 'CSV',
PARSER_VERSION = '2.0',
        HEADER_ROW = TRUE

    ) AS [result]
