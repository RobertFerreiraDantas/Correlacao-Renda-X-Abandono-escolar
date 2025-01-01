SELECT 
	"Product Type","rating",count("rating")
FROM
	costumer_table
GROUP BY 
	"Product Type","rating"
ORDER BY 
	"Product Type","rating" ASC;