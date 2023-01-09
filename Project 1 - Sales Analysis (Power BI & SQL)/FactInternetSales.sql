/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
     -- ,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      ,[SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
	  from
	  [dbo].[FactInternetSales]
	  where
	  LEFT (OrderDateKey, 4) >= YEAR(getdate()) - 3 ---ensure we always brimng two yeasr of date  from extraction
	  order by
	  OrderDateKey asc
  FROM [AdventureWorksDW2017].[dbo].[FactInternetSales]