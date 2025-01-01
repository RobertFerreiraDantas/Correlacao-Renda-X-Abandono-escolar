SELECT 
	SUM("Add-on Total")+SUM("Total Price") as total
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
