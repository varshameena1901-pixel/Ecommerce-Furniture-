use ecommerce_furniture;

#import cvs file     
# verify Data Loaded Correctly

SELECT * FROM ecommerce_furniture Limit 10 ;
SELECT COUNT(*) FROM ecommerce_furniture;    

#1. Total UNIT SOLD

SELECT SUM(sold) AS total_units_sold
From ecommerce_furniture;

# Average Product Price 

SELECT Round(avg(price), 2) AS avg_price
From ecommerce_furniture ;

# Sales by Shipping Type 

SELECT tagText,
	SUM(sold) AS total_sold
From ecommerce_furniture 
Group By tagtext;

#Top 10 Best-Selling Products

SELECT productTitle sold
From ecommerce_furniture
ORDER BY sold DESC
LIMIT 10;

#Price Bucket Analysis 

Select 
	case 
		When price < 50 then 'low'
        When price BETWEEN 50 and 150 then 'medium'
        When price BETWEEN 150 and 500 then 'high'
        Else 'Premium'
	End As price_category,
    Sum(sold) As total_sold
From ecommerce_furniture
Group By price_category
Order By total_sold DESC;
        
SHOW TABLES ;
    

