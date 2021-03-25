CREATE PROC [dbo].[EmployeeViewByID]
@EmpID int
AS
	--Master
	SELECT *
	FROM Employee
	WHERE EmpID = @EmpID
	--Details
	SELECT *
	FROM EmpCompany
	WHERE EmpID = @EmpID