use practice;
select * from titanic_train;

/*find how many passengers survived*/
select count(*) as passengers from titanic_train where survived = 1;

/*find survival rate by passenger class*/
select Pclass,ROUND(SUM(survived) * 100.0 / COUNT(*), 2) AS survival_rate
from titanic_train group by Pclass order by survival_rate desc;

/*find age group with highest growth in survival(children vs adults)*/
select case when Age < 13 then 'Child' 
when Age between 13 and 19 then 'Teen' when Age between 20 and 60 then 'Adult'
else 'Senior'  end as age_group,COUNT(*) as total,SUM(Survived) as survived,
ROUND(SUM(Survived)*100.0/COUNT(*), 2) as survival_rate
from titanic_train group by age_group order by survival_rate desc;

/* find female survival rate*/
select t.Sex,COUNT(*) as total,SUM(g.Survived) as survived,
ROUND(SUM(g.Survived)/COUNT(*) * 100, 2) as survival_rate
from titanic_test t join titanic_gender_submission g on t.PassengerId = g.PassengerId 
where t.Sex = 'female' group by t.Sex;

/*find duplicate names in train and test*/
select t1.name, COUNT(*) as total from (select name from titanic_train 
union all select name from titanic_test) t1 
group by  t1.name having COUNT(*) > 1;

/*average fare and age by embarkation port*/
select Embarked,ROUND(AVG(Fare), 2) AS avg_fare,
ROUND(AVG(Age), 2) AS avg_age,COUNT(*) AS passenger_count
from titanic_train
where Embarked is not null
group by Embarked;

/*compare actual vs predicted survival*/
select distinct t.PassengerId,t.Sex,tr.Survived AS actual,g.Survived AS predicted
from titanic_test t
join titanic_gender_submission g on t.PassengerId = g.PassengerId
join titanic_train tr on t.name = tr.name;


