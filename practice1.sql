# 1.创建数据库employee_db
create database employee_db;

# 2.在数据库employee_db中创建table：`Employee`
create table Employee(
id int not null primary key,
name varchar(20) not null,
age smallint not null,
gender enum('female','male','uncertain') not null default 'uncertain',
companyId int not null,
salary int not null
);

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
insert into Employee values(0,'xiaoming',20,'male',0,6000), (1,'xiaohong',19,'female',1,7000), (2,'xiaozhi',15,'male',2,8000), (3,'xiaogang',16,'male',1,6000),(4,'xiaoxia',15,'female',0,4000);

# 4.在数据库employee_db中创建table：`Company`
create table Company(
id int not null primary key,
companyName varchar(50) not null,
employeesNumber int not null
);

# 5.将`company-data.csv`文件中的数据导入Company数据表中
insert into Company values(0,'baidu',1000),(1,'alibaba',2000),(2,'tengxun',3000);

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
select * from Employee where name like '%n%' and salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中