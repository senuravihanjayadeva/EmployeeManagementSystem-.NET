
CREATE PROC [dbo].[EmpCompanyAddOrEdit]
@EmpCmpID int,
@EmpID int,
@CompanyName varchar(100),
@PositionID int,
@ExpYear int
AS
	--Insert
	IF @EmpCmpID = 0
		INSERT INTO EmpCompany(EmpID,CompanyName,PositionID,ExpYear)
		VALUES (@EmpID,@CompanyName,@PositionID,@ExpYear)
	--Update
	ELSE
		UPDATE EmpCompany
		SET
			EmpID=@EmpID,
			CompanyName=@CompanyName,
			PositionID=@PositionID,
			ExpYear=@ExpYear
		WHERE EmpCmpID = @EmpCmpID
