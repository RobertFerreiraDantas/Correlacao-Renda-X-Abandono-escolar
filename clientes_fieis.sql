WITH ordenado as(
	SELECT 
		"ID","Customer ID",ROW_NUMBER()OVER(PARTITION BY "Customer ID" ORDER BY "ID" DESC) as Row_,
		"Loyalty Member"
	FROM
		costumer_table
),
yes_ as(
	SELECT 
		"Customer ID", "Loyalty Member"
	FROM
		ordenado
	WHERE
		Row_ = 1
)
SELECT 
	"Customer ID","Loyalty Member"
FROM
	yes_
WHERE "Loyalty Member" = 'Yes';