SELECT 
  c.[CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.[FirstName], 
  --,[MiddleName]
  c.[LastName], 
  c.FirstName + ' ' + c.LastName AS FullName, 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  c.[Gender], 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase], 
  --,[CommuteDistance]
  g.City AS CustomerCity 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  LEFT JOIN [AdventureWorksDW2019].[dbo].DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  c.CustomerKey ASC
