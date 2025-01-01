SELECT
	"Order Status",count("Order Status")
FROM
	costumer_table
GROUP BY 
	"Order Status"
