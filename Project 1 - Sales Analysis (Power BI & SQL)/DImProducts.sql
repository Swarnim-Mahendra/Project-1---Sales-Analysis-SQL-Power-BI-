/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
p.[ProductKey],
      p.[ProductAlternateKey] as ProductItemCode,
     -- ,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      p.[EnglishProductName] as [Product Name],
	  ps.EnglishProductSubCategoryName as [Sub Category],  ---Joined from sub category table
	  pc.EnglishProductCategoryName as [Product Category], ---Joined from category table
      --[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] as [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size] as [Product Size],
      --,[SizeRange]
     -- ,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] as [Product Line],
     -- ,[DealerPrice]
     -- ,[Class]
      --,[Style]
      p.[ModelName] as [Product Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
     -- ,[EndDate]
      isnull (p.Status,'Outdated') as [Product Status]
	  from
	  [dbo].[DimProduct] as p
	  left join dbo.DimProductSubcategory as ps on ps.ProductCategoryKey=p.ProductSubCategoryKey
	  Left Join dbo.DimProductCategory as pc on ps.ProductCategoryKey=pc.ProductCategoryKey
	  order by
	  p.ProductKey asc
  FROM [AdventureWorksDW2017].[dbo].[DimProduct]