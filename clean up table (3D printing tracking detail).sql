--clean up table and save to another table 
--SQL server 

SELECT
[Year],
[Month],
[Project Name],
[Platform],
[Quantity(Pcs)] ,
[Vol per pc (mm^3)] AS "volume (mm^3)",
[overall Part mat per dessign (incl# waste) (gram)] AS "part material (Gram)",
[Supp mat per design (incl# waste) (gram)] AS "Support material (Gram)",
[Month] + '-' + substring(cast ([Year] AS VARCHAR), 3,4) AS "Month-yy",
[Print Time (hrs)],
[Total Post Process Time (hrs)],
[material cost],
[labor cost ],
[Cost per design] AS "Total Cost",
[Cost per design]/[Quantity(Pcs)] AS "CPU",
[overall Part mat per dessign (incl# waste) (gram)] + [Supp mat per design (incl# waste) (gram)] AS "Total material",
[Print Time (hrs)] + [Total Post Process Time (hrs)] AS "Total production hours"

INTO [3D printing].[dbo].[detail tracking clean up]

FROM [3D printing].[dbo].[detail tracking]