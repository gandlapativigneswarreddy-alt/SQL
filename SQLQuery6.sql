USE EMPLOYEES_DATA

CREATE TABLE EMPLOYEE (ID INT,ENAME VARCHAR(30),SAL INT,HIRE_DATE DATE,E_DEP VARCHAR(15),E_DEPNO INT)

SELECT * FROM EMPLOYEE

INSERT INTO EMPLOYEE (ID,ENAME,SAL,HIRE_DATE,E_DEP,E_DEPNO)
            VALUES(9533, 'broady', 25900, '2020-09-01', 'IT', 1),
(9534, 'alice', 25500, '2020-01-02', 'HR', 2),
(9535, 'bob', 26000, '2020-01-03', 'FIN', 4),
(9536, 'carol', 26500, '2020-01-04', 'IT', 3),
(9537, 'dave', 27000, '2020-01-05', 'SALES', 5),
(9538, 'ellen', 27500, '2020-01-06', 'HR', 6),
(9539, 'frank', 28000, '2020-01-07', 'FIN', 7),
(9540, 'grace', 28500, '2020-01-08', 'IT', 8),
(9541, 'helen', 29000, '2020-01-09', 'SALES', 9),
(9542, 'ian', 29500, '2020-01-10', 'HR', 1),
(9543, 'julia', 30000, '2020-01-11', 'FIN', 2),
(9544, 'karl', 30500, '2020-01-12', 'IT', 3)

CREATE TABLE DEPS(E_DEPNO INT,E_DEP VARCHAR(10),LOC VARCHAR(10))

INSERT INTO DEPS(E_DEPNO,E_DEP,LOC)
VALUES(1,'IT','NOIDA'),
(2,'HR','PUNE'),
(4,'FIN','GOA'),
(5,'SALES','BANG'),
(9,'MGR','HYD')

SELECT * FROM DEPS

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee join deps on employee.e_dep=deps.e_dep

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee right join deps on employee.e_dep=deps.e_dep

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee left join deps on employee.e_dep=deps.e_dep

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee full join deps on employee.e_dep=deps.e_dep

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee join deps on employee.e_dep=deps.e_dep where DEPS.e_dep ='IT'

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee join deps on employee.e_dep=deps.e_dep where employee.e_dep ='IT'

select employee.ename,employee.e_dep,deps.e_dep,deps.loc from employee join deps on employee.e_dep=deps.e_dep where DEPS.loc ='GOA'

select employee.ename,employee.e_dep,deps.E_DEPNO from employee join deps on employee.e_dep=deps.e_dep where DEPS.E_DEPNO = 2




