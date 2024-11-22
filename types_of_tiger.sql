-- 1.How many types of tigers can be found in the taxonomy table of the dataset? 
-- What is the "ncbi_id" of the Sumatran Tiger ? (using the biological name of the tiger)

use Rfam;


SELECT COUNT(DISTINCT tx.species) AS types_of_tiger,
    MAX(CASE
        WHEN tx.species LIKE '%Panthera tigris sumatrae%' THEN tx.ncbi_id
        ELSE NULL
    END) AS ncbi_id_of_sumatran_tiger
FROM taxonomy tx
WHERE species LIKE '%Panthera tigris%';
    
