SELECT
	SUM("Total Price")+SUM("Add-on Total")
FROM
	costumer_table
WHERE
	"Order Status"='Completed'