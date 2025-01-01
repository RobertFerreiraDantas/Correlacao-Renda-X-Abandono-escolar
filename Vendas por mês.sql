SELECT
	DATE_TRUNC('month',"Purchase Date"),SUM("Total Price")
FROM
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY
	DATE_TRUNC('month',"Purchase Date")
ORDER BY 
	DATE_TRUNC('month',"Purchase Date");