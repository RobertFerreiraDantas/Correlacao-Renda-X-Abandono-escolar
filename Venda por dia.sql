SELECT 
       EXTRACT(day FROM "Purchase Date") AS dia,
       SUM("Total Price") AS total_vendas
FROM 
	costumer_table
WHERE
	"Order Status" = 'Completed'
GROUP BY  
	dia
ORDER BY 
	SUM("Total Price") DESC;
