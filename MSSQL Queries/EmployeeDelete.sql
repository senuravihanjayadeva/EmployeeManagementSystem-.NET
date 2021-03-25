CREATE PROC [dbo].[EmployeeDelete]
@EmpID int
AS
	--Master
	DELETE FROM Employee
	WHERE EmpID = @EmpID
	--Details
	DELETE FROM EmpCompany
	WHERE EmpID = @EmpID