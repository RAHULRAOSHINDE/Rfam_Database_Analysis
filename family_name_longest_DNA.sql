-- 4.Paginate a list of the family names and their longest DNA sequence lengths (in descending order of length) where only families that have DNA sequence lengths greater than 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per page. 
-- (need the family accession ID, family name and the maximum length in the results)


use Rfam;


SELECT  fa.rfam_acc AS family_accession_id,fa.rfam_id AS family_name,MAX(rf.length) AS maximum_length
FROM rfamseq rf 
JOIN full_region fr 
ON rf.rfamseq_acc = fr.rfamseq_acc
JOIN family fa ON fr.rfam_acc = fa.rfam_acc
GROUP BY fa.rfam_acc , fa.rfam_id
HAVING MAX(rf.length) > 1000000
ORDER BY maximum_length DESC
LIMIT 15 OFFSET 120;


