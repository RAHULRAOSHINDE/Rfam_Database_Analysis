use Rfam;

-- 1.How many types of tigers can be found in the taxonomy table of the dataset? 
-- What is the "ncbi_id" of the Sumatran Tiger ? (hint: use the biological name of the tiger)

SELECT 
    COUNT(DISTINCT tx.species) AS types_of_tiger,
    MAX(CASE
        WHEN tx.species LIKE '%Panthera tigris sumatrae%' THEN tx.ncbi_id
        ELSE NULL
    END) AS ncbi_id_of_sumatran_tiger
FROM
    taxonomy tx
WHERE
    species LIKE '%Panthera tigris%';
    
-- This SQL query is designed to provide valuable insights into the taxonomy table of the dataset, specifically focusing on the diversity of tiger species. The query aims to answer two key questions:

-- Counting Types of Tigers:

-- The query utilizes the COUNT function to determine the number of distinct tiger species present in the taxonomy table.
-- The DISTINCT keyword ensures that each unique species is considered only once, preventing duplicates from affecting the count.
-- The result is presented as types_of_tiger.

-- Finding the ncbi_id of Sumatran Tiger:

-- The MAX and CASE functions are employed to identify the "ncbi_id" associated with the Sumatran Tiger.
-- The CASE statement checks if the species name includes 'Panthera tigris sumatrae', indicating the Sumatran Tiger.
-- If a match is found, the corresponding ncbi_id is retrieved; otherwise, NULL is returned.
-- The maximum (and only) ncbi_id value is presented as ncbi_id_of_sumatran_tiger.

-- This query provides a concise analysis of tiger species diversity in the taxonomy table, highlighting both the total number of types and the specific "ncbi_id" associated with the Sumatran Tiger.