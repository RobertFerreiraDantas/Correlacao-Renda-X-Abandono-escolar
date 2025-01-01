SELECT 
	"Order Status","Payment Method",COUNT("Order Status")
FROM
	costumer_table
GROUP BY 
	"Payment Method","Order Status"
ORDER BY
	"Payment Method" ASC;
