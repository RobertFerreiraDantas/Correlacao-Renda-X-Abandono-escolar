SELECT 
	SUM("Total Price"),"Product Type"
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP  BY 	
	"Product Type"
ORDER BY 
	SUM("Total Price") DESC;
