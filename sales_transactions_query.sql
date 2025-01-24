SELECT 
    [ProductKey], 
    [OrderDateKey], 
    [DueDateKey], 
    [ShipDateKey], 
    [CustomerKey], 
    [SalesOrderNumber], 
    [SalesAmount]
FROM 
    sales_transactions_pre_data_preparation
WHERE 
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -2 -- Ensures we always only bring two years of date from extraction.
ORDER BY
    OrderDateKey ASC;