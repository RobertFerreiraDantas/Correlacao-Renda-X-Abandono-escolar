SELECT
	"Payment Method",SUM("Total Price") + SUM("Add-on Total")
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY
	"Payment Method"
ORDER BY
	SUM("Total Price") DESC