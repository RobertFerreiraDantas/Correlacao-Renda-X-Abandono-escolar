SELECT
	age,"Payment Method",count("Payment Method")
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY
	age,"Payment Method"
ORDER BY
	count("Payment Method") DESC