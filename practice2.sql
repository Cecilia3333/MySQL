# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select c.companyName,t.name from Company c,(select NAME,companyId,MAX(salary) from Employee group by companyId) as t where c.id = t.companyId;
