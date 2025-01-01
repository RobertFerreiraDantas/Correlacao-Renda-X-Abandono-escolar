SELECT
	"Shipping Type",SUM("Total Price")
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY 
	"Shipping Type"
ORDER BY
	SUM("Total Price") DESC;