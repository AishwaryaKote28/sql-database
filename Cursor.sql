use sql
SET NOCOUNT ON;

DECLARE @emp_id int ,@emp_name varchar(20),
    @message varchar(max);

PRINT '-------- EMPLOYEE DETAILS --------';

DECLARE emp_cursor CURSOR FOR
SELECT EmpId,EmpName
FROM EmployeeInfo
order by EmpName;

OPEN emp_cursor

FETCH NEXT FROM emp_cursor
INTO @emp_id,@emp_name

print 'EmpID  EmpName'

WHILE @@FETCH_STATUS = 0
BEGIN
    print '   ' + CAST(@emp_id as varchar(10)) +'           '+
        cast(@emp_name as varchar(20))


    FETCH NEXT FROM emp_cursor
INTO @emp_id,@emp_name

END
CLOSE emp_cursor;
DEALLOCATE emp_cursor;