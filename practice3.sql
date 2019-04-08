#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
 select companyName, avgSalary from Company c, (select companyId,AVG(salary) as avgSalary from Employee group by companyId) as t where c.id = t.companyId order by avgSalary desc LIMIT 1;

