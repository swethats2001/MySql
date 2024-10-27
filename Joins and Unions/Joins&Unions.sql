select * from persons inner join country on persons.id=country.id;
select * from persons left join country on persons.id=country.id;
select * from persons right join country on persons.id=country.id;

select distinct country_name from country
union 
select distinct country_name from persons;

select distinct country_name from country
union all
select distinct country_name from persons;
set sql_safe_updates=0;
update persons set rating = round(rating, 0);
select rating from persons;



