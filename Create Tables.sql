-- First--

create table dbo.dept(
dept_id int identity(1,1),
dept_name varchar(50) not null
constraint dept_id_PK PRIMARY KEY (dept_id)
);

--2nd--

insert into dbo.dept(dept_name)
values ('Business_Intelligence');

--3rd--

insert into dbo.dept(dept_name)
select department_name
	from
	hcm.departments;

-- 4th --

create table dbo.emp(
emp_id int identity(1,1),
first_name varchar(50) not null,
last_name varchar(50) not null,
hire_date date default(getdate()),
dept_id int
Constraint emp_id_PK PRIMARY KEY (emp_id),
constraint dept_id_ref_dbodept_on_dbodeptdept_id_FK foreign key (dept_id) REFERENCES dbo.dept(dept_id)
);

-- 5th --

insert into dbo.emp (first_name, last_name, hire_date, dept_id)
values ('Scott','Davis','20201211',1),
	('Miriam','Yardley','20201205',1);