use Rfam;

-- 3.Which type of rice has the longest DNA sequence? (hint: use the rfamseq and the taxonomy tables)

SELECT 
    tx.species AS type_of_rice,
    MAX(rf.length) AS longest_dna_sequence
FROM
    taxonomy tx
        JOIN
    rfamseq rf ON tx.ncbi_id = rf.ncbi_id
WHERE
    tx.species LIKE '%Oryza sativa%'
GROUP BY tx.species
ORDER BY longest_dna_sequence DESC
LIMIT 1;

-- This SQL query is designed to determine the type of rice with the longest DNA sequence. Leveraging the information stored in the taxonomy and rfamseq tables, the query focuses on filtering rice species ('Oryza sativa') and then identifies the maximum DNA sequence length associated with each type


-- Key Components of the Query:

-- type_of_rice: Represents the species of rice, specifically focusing on 'Oryza sativa.'
-- longest_dna_sequence: Identifies the maximum DNA sequence length associated with each type of rice.
-- GROUP BY : Ensures that results are grouped by the rice species
-- ORDER BY: Arranges the results in descending order based on the length of the DNA sequence. 
-- LIMIT 1: Ensures that only the type of rice with the longest DNA sequence is presented.

