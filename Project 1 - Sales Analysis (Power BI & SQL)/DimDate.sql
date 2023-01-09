
--Cleansed DIM-Date Table

SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date,
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Week,
  --,[SpanishDayNameOfWeek]
  --,FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear] 
  [WeekNumberOfYear] as Week_Number,
  [EnglishMonthName] as Month,
  left ([EnglishMonthName],3) as Month_Short,
  --[SpanishMonthName]
  --[FrenchMonthName] 
  [MonthNumberOfYear] as Month_Number, 
  [CalendarQuarter] as  Quarter, 
  [CalendarYear] as Year
  --[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2017].[dbo].[DimDate]
  where CalendarYear >= 2019