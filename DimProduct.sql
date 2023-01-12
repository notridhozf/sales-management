SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --,[ProductSubcategoryKey]
  -- ,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS ProductName, 
  pc.EnglishProductCategoryName AS ProductCategory, 
  ps.EnglishProductSubcategoryName AS SubCategory, 
  --,[SpanishProductName]
  --,[FrenchProductName]
  -- ,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine], 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName],
  --,[LargePhoto]
  p.[EnglishDescription], 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  ISNULL (p.[Status], 'Outdated') AS ProductStatus 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN [AdventureWorksDW2019].dbo.DimProductSubCategory AS ps ON ps.ProductSubCategoryKey = p.ProductSubCategoryKey 
  LEFT JOIN [AdventureWorksDW2019].dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 
ORDER BY 
  p.ProductKey