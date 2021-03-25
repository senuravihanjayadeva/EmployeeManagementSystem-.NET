CREATE PROC [dbo].[EmployeeViewAll]
AS
SELECT E.EmpID,E.EmpCode,E.EmpName,P.Position,E.DOB,E.State
FROM Employee E INNER JOIN Position P ON E.PositionID = P.PositionID
