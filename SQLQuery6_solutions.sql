use proj1;

--3. Perform the following with help of the above database:
--a. Get all the details from the person table including email ID, phone
--number and phone number type
SELECT [EmailAddressID],[PhoneNumber],p.[PhoneNumberTypeID]
FROM [Person].[EmailAddress] e 
inner join  [Person].[PersonPhone] p on e.BusinessEntityID=p.BusinessEntityID
inner join [Person].[PhoneNumberType] n on n.PhoneNumberTypeID=p.PhoneNumberTypeID
--b. Get the details of the sales header order made in May 2011
SELECT * FROM [Sales].[SalesOrderHeader] where year(OrderDate)=2011 and MONTH(OrderDate)=5
--c. Get the details of the sales details order made in the month of May
--2011
SELECT * from [Sales].[SalesOrderHeader] inner join
[Sales].[SalesOrderDetail] on [Sales].[SalesOrderHeader].SalesOrderID=[Sales].[SalesOrderDetail].SalesOrderID
where year(OrderDate)=2011 and MONTH(OrderDate)=5
--d. Get the total sales made in May 2011
SELECT SalesYTD FROM [Sales].[SalesPerson] inner join
[Sales].[SalesOrderHeader] on
[Sales].[SalesPerson].ModifiedDate=[Sales].[SalesOrderHeader].ModifiedDate 
where year(OrderDate)=2011 and MONTH(OrderDate)=5
--e. Get the total sales made in the year 2011 by month order by
--increasing sales
SELECT SalesYTD,SalesQuota FROM [Sales].[SalesPerson] inner join
[Sales].[SalesOrderHeader] on
[Sales].[SalesPerson].TerritoryID=[Sales].[SalesOrderHeader].TerritoryID 
where year(OrderDate)=2011 and MONTH(OrderDate)=5 order by SalesQuota asc
--f. Get the total sales made to the customer with FirstName='Gustavo'--and LastName ='Achong'SELECT SalesYTD FROM [Person].[Person] inner join
[Sales].[SalesPerson] on [Person].[Person].BusinessEntityID=[Sales].[SalesPerson] .BusinessEntityID
where FirstName='Gustavo' and LastName ='Achong'
