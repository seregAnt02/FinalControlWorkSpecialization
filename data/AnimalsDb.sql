

 ## Удаление таблицы верблюдов
 delete from camel where id > 0;
 select * from camel;


## Все животные в возрасте от 1 до 3 лет.

select id, cat_name, date_birth, commands, color, Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 2) as age 
from cat 
UNION
select id, dog_name, date_birth, commands, color, Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 2) as age 
from dog
where Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 2) > 1  
and Round((year(current_date())- year(date_birth)) + (month(current_date() - month(date_birth)))/10, 2) < 3;


 select id, cat_name, date_birth, commands, color, Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) as age
 from cat 
 where Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) > 1   
 and Round((year(current_date())- year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) < 3
 UNION 
 select id, dog_name, date_birth, commands, color, Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) as age  
 from dog 
 where Round((year(current_date()) - year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) > 1   
 and Round((year(current_date())- year(date_birth)) + (month(current_date() - month(date_birth)))/10, 1) < 3;

 
## Объединить всех таблицы.

select id, name, commands, color, id_pack 
from horse UNION 
select id, name, commands, color, id_pack 
from mule UNION 
select id, dog_name, commands, color, id_home 
from dog UNION 
select id, cat_name, commands, color, id_home 
from cat;