
-- 2.Find all the columns that can be used to connect the tables in the given database.

use Rfam;


SELECT constraint_name AS fk_constraint_name,table_name AS source_table,column_name AS source_column,referenced_table_name AS referenced_table,referenced_column_name AS referenced_column
FROM information_schema.key_column_usage
WHERE table_schema = 'Rfam';
    
