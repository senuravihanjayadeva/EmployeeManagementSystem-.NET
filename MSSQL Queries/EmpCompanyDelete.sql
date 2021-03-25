CREATE PROC [dbo].[EmpCompanyDelete]
@EmpCmpID int
AS
	DELETE FROM EmpCompany
	WHERE EmpCmpID = @EmpCmpID