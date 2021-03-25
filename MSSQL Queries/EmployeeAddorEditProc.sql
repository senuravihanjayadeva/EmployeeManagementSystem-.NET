CREATE PROC [dbo].[EmployeeAddOrEdit]
@EmpID int,
@EmpCode varchar(50),
@EmpName varchar(100),
@PositionID int,
@DOB date,
@Gender varchar(20),
@State varchar(15),
@ImagePath varchar(250)
AS

	--Insert
	IF @EmpID = 0 BEGIN
		INSERT INTO Employee(EmpCode,EmpName,PositionID,DOB,Gender,State,ImagePath)
		VALUES (@EmpCode,@EmpName,@PositionID,@DOB,@Gender,@State,@ImagePath)

		SELECT SCOPE_IDENTITY();

		END
	--Update
	ELSE BEGIN
		UPDATE Employee
		SET
			EmpCode=@EmpCode,
			EmpName=@EmpName,
			PositionID=@PositionID,
			DOB=@DOB,
			Gender=@Gender,
			State=@State,
			ImagePath=@ImagePath
		WHERE EmpID=@EmpID

		SELECT @EmpID;
		END

