SELECT 
	[DateKey], 
    [FullDateAlternateKey] AS Date, 
    [EnglishDayNameOfWeek] AS Day, 
    [EnglishMonthName] AS Month, 
	Left([EnglishMonthName], 3) AS MonthShort,  
	[MonthNumberOfYear] AS MonthNo, 
    [CalendarQuarter] AS Quarter, 
    [CalendarYear] AS Year 
FROM 
	date_lookup_pre_data_preparation
WHERE 
	CalendarYear >= 2019
