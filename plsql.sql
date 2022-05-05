Syntax:
declare
BEGIN
NULL;
END;


declare
BEGIN
DBMS_OUTPUT.PUT_LINE('I Love Pakistan');
END;

declare
message varchar2(20):='I Love Pakistan';
BEGIN
DBMS_OUTPUT.PUT_LINE(message);
END;

-- IF FROM SQL Command Line
declare
message varchar2(20):='I Love Pakistan';
-- I am a Single Line Comment 
/*
I am a MULTI Line Comment 
*/
BEGIN
DBMS_OUTPUT.PUT_LINE(message);
END;
/

declare
intt int:=90;
Marks Number:= 95;
Desimal Decimal:=9.21;
Dessimal Real:=9.21;
Desssimal Float:=9.21;
charr Char(1):='A';
charrr varChar(5):='kdsaA';
charrrr varChar2(2):='A';
charrrrr nvarChar2(1):='A';
counter binary_integer := 0;
greetings varchar2(20) DEFAULT 'Have a Good Day'; 
BEGIN
DBMS_OUTPUT.PUT_LINE(marks);
DBMS_OUTPUT.PUT_LINE(Desimal);
DBMS_OUTPUT.PUT_LINE(Dessimal);
DBMS_OUTPUT.PUT_LINE(Desssimal);
DBMS_OUTPUT.PUT_LINE(charr);
DBMS_OUTPUT.PUT_LINE(charrr);
DBMS_OUTPUT.PUT_LINE(charrrr);
DBMS_OUTPUT.PUT_LINE(charrrrr);
DBMS_OUTPUT.PUT_LINE(counter);
DBMS_OUTPUT.PUT_LINE(greetings);
intt:=intt+marks;
DBMS_OUTPUT.PUT_LINE('VAR'||intt);
END;
/


GLOBAL AND LOCAL VARIABLES
DECLARE
-- Global variables
num1 number := 95;
num2 number := 85;
BEGIN
dbms_output.put_line('Outer Variable num1: ' || num1);
dbms_output.put_line('Outer Variable num2: ' || num2);
DECLARE
-- Local variables
num1 number := 195;
num2 number := 185;
BEGIN
dbms_output.put_line('Inner Variable num1: ' || num1);
dbms_output.put_line('Inner Variable num2: ' || num2);
END;
END;
/

SELECT IN PL/SQL
DECLARE
Bonus INTEGER ;
BEGIN
SELECT sal*0.01 INTO bonus
FROM emp
WHERE empno = 7788 ;
DBMS_OUTPUT.PUT_LINE (bonus) ;
END;

REFERENCE TYPE VARIABLES
DECLARE
e_id emp.empno %type := 7788;
e_name emp.ename %type;
e_sal emp.sal %type;
BEGIN
SELECT ename, sal INTO e_name,
e_sal
FROM emp
WHERE empno = e_id;
dbms_output.put_line ('Employee' ||e_name || ' earns ' ||e_sal);
END; 

REFERENCE TYPE VARIABLE
DECLARE
emp_rec emp %ROWTYPE ;
BEGIN
SELECT * INTO emp_rec
FROM emp
WHERE empno = &EmployeeNo ;
dbms_output.put_line ('Employee Name' ||emp_rec.ename );
dbms_output.put_line ('Employee Salary' ||emp_rec.sal );
END;
/