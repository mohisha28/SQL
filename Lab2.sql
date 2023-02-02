CREATE TABLE EMPLOYEE_1 (FIRST_NAME VARCHAR(15),
    MID_NAME CHAR(2),
    LAST_NAME VARCHAR(15),
    SSN_NUMBER CHAR(9),
    BIRTHDAY DATE,
    ADDRESS VARCHAR(50),
    SEX CHAR(1),
    SALARY NUMERIC(7),
    SUPERVISOR_SSN CHAR(9),
   DEPARTMENT_NUMBER NUMERIC(5));

CREATE TABLE DEPARTMENT_1 (
    DEPT_NAME VARCHAR(15),
    DEPT_NO NUMERIC(5),
    MANAGERSSN CHAR(9),
    MANAGESTARTDATE DATE);


CREATE TABLE PROJECT_1(
    PROJECTNAME VARCHAR(15),
    PROJECTNUMBER NUMERIC(5),
    PROJECTLOCATION VARCHAR(15),
    DEPT_NO NUMERIC(5));
  

INSERT INTO EMPLOYEE_1 VALUES('Doug',  'E',  'Gilbert',  554433221,  '09-JUN-60',  '11 S 59 E, Salt Lake City, UT',  'M',  80000,  NULL , 3);
INSERT INTO EMPLOYEE_1 VALUES('Joyce', NULL,   'PAN',  543216789,  '07-FEB-78',  '35 S 18 E, Salt Lake City, UT',  'F',  70000,  NULL,  2);  
INSERT INTO EMPLOYEE_1 VALUES('Frankin',  'T',  'Wong',  333445555,  '08-DEC-45',  '638 Voss, Houston, TX',  'M',  40000,  554433221,  5);  
INSERT INTO EMPLOYEE_1 VALUES('Jennifer',  'S',  'Wallace',  987654321,  '20-JUN-31',  '291 Berry, Bellaire, TX',  'F',  43000,  554433221,  4);  
INSERT INTO EMPLOYEE_1 VALUES('Johny', 'B',  'Smith',  123456789,  '09-JAN-55',  '731 Fondren, Houston, TX',  'M',  30000,  333445555,  5);  
INSERT INTO EMPLOYEE_1 VALUES('Ramesh',  'K',  'Narayan',  666884444,  '15-SEP-52',  '975 Fire Oak, Humble, TX',  'M',  38000,  333445555,  5);  
INSERT INTO EMPLOYEE_1 VALUES('Joyce',  'A',  'English',  453453453,  '31-JUL-62',  '5631 Rice, Houston, TX',  'F',  25000,  333445555,  5);  
INSERT INTO EMPLOYEE_1 VALUES('James',  'E',  'Borg',  888665555,  '10-NOV-27',  '450 Stone, Houston, TX',  'M',  55000,  543216789,  1);  
INSERT INTO EMPLOYEE_1 VALUES('Alicia',  'J',  'Zelaya',  999887777,  '19-JUL-58',  '3321 Castle, Spring, TX',  'F',  25000,  987654321,  4);  
INSERT INTO EMPLOYEE_1 VALUES('Ahmad',  'V',  'Jabbar',  987987987,  '29-MAR-59',  '980 Dallas, Houston, TX',  'M',  25000,  987654321,  4);  



INSERT INTO DEPARTMENT_1 VALUES('Manufacture',  1,  888665555,  '19-JUN-71');  
INSERT INTO DEPARTMENT_1 VALUES('Administration',  2,  543216789,  '04-JAN-99');  
INSERT INTO DEPARTMENT_1 VALUES('Headquarter',  3,  554433221,  '22-SEP-55');
INSERT INTO DEPARTMENT_1 VALUES('Finance',  4,  987654321,  '01-JAN-85');
INSERT INTO DEPARTMENT_1 VALUES('Research',  5,  333445555,  '22-MAY-78');


INSERT INTO PROJECT_1 VALUES('ProjectA',  3388,  'Houston',  1  );
INSERT INTO PROJECT_1 VALUES('ProjectB',  1945,  'Salt Lake City',  3  );
INSERT INTO PROJECT_1 VALUES('ProjectC',  6688,  'Houston',  5  );
INSERT INTO PROJECT_1 VALUES('ProjectD',  2423,  'Bellaire',  4  );
INSERT INTO PROJECT_1 VALUES('ProjectE',  7745, 'Sugarland',  5  );
INSERT INTO PROJECT_1 VALUES('ProjectF',  1566,  'Salt Lake City',  3  );
INSERT INTO PROJECT_1 VALUES('ProjectG',  1234,  'New York',  2  );
INSERT INTO PROJECT_1 VALUES('ProjectH',  3467,  'Stafford',  4  );
INSERT INTO PROJECT_1 VALUES('ProjectI',  4345,  'Chicago',  1  );
INSERT INTO PROJECT_1 VALUES('ProjectJ',  2212,  'San Francisco',  2 );

SELECT * from  EMPLOYEE_1;
SELECT * from  DEPARTMENT_1;
SELECT * from  PROJECT_1;


alter table Department_1 add departmentphoneNum char(10); 
update Department_1 set departmentphoneNum ='1234567890' where DEPT_NO=2; 
 update Department_1 set departmentphoneNum ='8234567890' where DEPT_NO=1; 
 update Department_1 set departmentphoneNum ='9234567890' where DEPT_NO=2; 
 update Department_1 set departmentphoneNum ='6234567890' where DEPT_NO=6; 
 update Department_1 set departmentphoneNum ='9234568890' where DEPT_NO=5; 
 update Department_1 set departmentphoneNum ='8934567890'where DEPT_NO=2; 
 update Department_1 set departmentphoneNum ='5934567890' where DEPT_NO=4; 
 update Department_1 set departmentphoneNum ='2234567890'where DEPT_NO=3; 
 update Department_1 set departmentphoneNum ='3234567890' where DEPT_NO=2; 
 update Department_1 set departmentphoneNum ='8234567890' where DEPT_NO=3;
 
 
