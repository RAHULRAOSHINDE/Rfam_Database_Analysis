-- 3.Which type of rice has the longest DNA sequence? (using the rfamseq and the taxonomy tables)

use Rfam;


SELECT tx.species AS type_of_rice,MAX(rf.length) AS longest_dna_sequence
FROM taxonomy tx
JOIN rfamseq rf ON tx.ncbi_id = rf.ncbi_id
WHERE tx.species LIKE '%Oryza sativa%'
GROUP BY tx.species
ORDER BY longest_dna_sequence DESC
LIMIT 1;


