SELECT
	"Payment Method",SUM("Total Price")
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY
	"Payment Method"
ORDER BY
	COUNT("Total Price") DESC;