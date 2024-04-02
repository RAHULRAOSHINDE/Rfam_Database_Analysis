use Rfam;

-- 2.Find all the columns that can be used to connect the tables in the given database.

SELECT 
    constraint_name AS fk_constraint_name,
    table_name AS source_table,
    column_name AS source_column,
    referenced_table_name AS referenced_table,
    referenced_column_name AS referenced_column
FROM
    information_schema.key_column_usage
WHERE
    table_schema = 'Rfam';
    
-- This SQL query is designed to identify the foreign key constraints in the given database, specifically focusing on the columns that can be used to connect tables. The query extracts information from the information_schema.key_column_usage  to provide insights into the relationships between tables.

-- Key Components of the Query:

-- fk_constraint_name: Represents the name of the foreign key constraint.
-- source_table: Indicates the source table containing the foreign key column.
-- source_column: Identifies the specific column in the source table that serves as the foreign key.
-- referenced_table: Specifies the referenced table to which the foreign key column points.
-- referenced_column: Denotes the column in the referenced table that is associated with the foreign key.

-- By executing this query, we can obtain a clear overview of the foreign key relationships within the database, facilitating better understanding and navigation of the interconnections between tables.