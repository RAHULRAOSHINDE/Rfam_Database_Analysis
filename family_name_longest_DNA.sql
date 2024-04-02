use Rfam;

-- 4. We want to paginate a list of the family names and their longest DNA sequence lengths (in descending order of length) where only families that have DNA sequence lengths greater than 1,000,000 are included. Give a query that will return the 9th page when there are 15 results per page. 
-- (hint: we need the family accession ID, family name and the maximum length in the results)

SELECT 
    fa.rfam_acc AS family_accession_id,
    fa.rfam_id AS family_name,
    MAX(rf.length) AS maximum_length
FROM
    rfamseq rf 
        JOIN
    full_region fr ON rf.rfamseq_acc = fr.rfamseq_acc
        JOIN
    family fa ON fr.rfam_acc = fa.rfam_acc
GROUP BY fa.rfam_acc , fa.rfam_id
HAVING MAX(rf.length) > 1000000
ORDER BY maximum_length DESC
LIMIT 15 OFFSET 120;

-- This SQL query is designed to retrieve a paginated list of family names along with their longest DNA sequence lengths, with a focus on families having DNA sequences longer than 1,000,000. The query pulls data from the rfamseq, full_region, and family tables, linking them appropriately to extract the required information.

-- Key Components of the Query:

-- family_accession_id: Represents the unique accession ID for each family, obtained from the family table.
-- family_name: Denotes the name of the family, extracted from the family table.
-- maximum_length: Indicates the maximum DNA sequence length within each family.
-- GROUP BY: Groups the results by family accession ID and family name, ensuring distinct families are considered.
-- HAVING: Filters the results to include only families with DNA sequence lengths greater than 1,000,000.
-- ORDER BY: Arranges the results in descending order based on the maximum DNA sequence length.
-- LIMIT and OFFSET: Implements pagination, limiting each page to 15 results and skipping the first 120 results to return the 9th page.
