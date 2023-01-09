/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
c.CustomerKey as [CustomerKey],
     --,[GeographyKey]
      --,[CustomerAlternateKey]
     --,[Title]
     c.FirstName as [First Name],
     -- ,[MiddleName]
      c.LastName as [Last Name],
	  c.FirstName + ' ' + LastName as [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      case c.Gender when 'M' THEN 'Male' WHEN 'F' THEN 'FEMALE' end as Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
      c.DateFirstPurchase as DateFirstPurchase,
      --,[CommuteDistance]
	  g.city as [Customer City]
	  from
	  dbo.DimCustomer as c
	  left join dbo.DimGeography as g on g.GeographyKey=c.GeographyKey
	  order by
	  CustomerKey asc
  