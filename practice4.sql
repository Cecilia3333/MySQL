# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

select e.*,avgc.companyName,avgc.avgsal from Employee e, (select id,companyName,avgsal from Company c,(select companyId,AVG(salary) as avgsal from Employee group by companyId) t where c.id = t.companyId) avgc where e.companyId = avgc.id and e.salary >= avgc.avgsal;
