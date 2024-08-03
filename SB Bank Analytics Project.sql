create database  financeproject;
use financeproject;
select count(*) from f1forsql;
select count(*) from f2forsql;

/* All Kpi
1.Year wise loan amount Stats
2.Grade and sub grade wise revol_bal
3.Total Payment for Verified Status Vs Total Payment for Non Verified Status
4.State wise and last_credit_pull_d wise loan status
5.Home ownership Vs last payment date stats*/

select * from f1forsql;
select * from f2forsql;

/*Kpi 1.Year wise loan amount Stats*/
select * from f1forsql;
select  year(issue_d) as year_of_issue_d , sum(loan_amnt) as total_amount
from f1forsql
group by year_of_issue_d
order by year_of_issue_d ;

select * from f1forsql;
select * from f2forsql;

/*Kpi 2.Grade and sub grade wise revol_ba*/

select grade , sub_grade , sum(revol_bal)
from f1forsql
inner join 
f2forsql using (id)
group by grade , sub_grade
order by grade, sub_grade ;

select * from f1forsql;
select * from f2forsql;

/*Kpi 3.Total Payment for Verified Status Vs Total Payment for Non Verified Status*/

select verification_status as status, round(sum(total_pymnt))
from f1forsql
inner join f2forsql  using (id)
group by status ;

select * from f1forsql;
select * from f2forsql;

/*Kpi 4.State wise and last_credit_pull_d wise loan status */
select addr_state ,year(last_credit_pull_d), loan_status
from f1forsql
inner join f2forsql  using (id)
group by addr_state,last_credit_pull_d,loan_status
order by last_credit_pull_d;

select * from f1forsql;
select * from f2forsql;


/* Kpi 5.Home ownership Vs last payment date stats*/
select home_ownership , year(last_pymnt_d)
from f1forsql
inner join f2forsql  using (id)
group by home_ownership,last_pymnt_d
order by  last_pymnt_d desc, home_ownership desc;