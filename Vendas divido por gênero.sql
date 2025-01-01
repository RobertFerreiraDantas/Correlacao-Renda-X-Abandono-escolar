SELECT 
	gender,SUM("Add-on Total") as Adicionais_Tot,SUM("Total Price") as Compra_Total
FROM 
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY 
	gender;