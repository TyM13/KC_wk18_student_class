insert into dealership (name, location, date_established) values
('dealership_one', 'calgary', '2010-04-20'),
('dealership_two', 'red deer', '2020-01-12'),
('dealership_three', 'edmonton', '2000-06-10');

insert into for_sale_cars (dealership_id, make, model, `year`) values
(1, 'ford', 'bronco', '2022-01-01'),
(2, 'ram', '1500', '2021-02-01'),
(3, 'ford', 'mustang', '2020-01-01'),
(3, 'ford', 'focus', '2019-01-01'),
(2, 'dodge', 'challenger', '2018-01-01'),
(1, 'toyota', 'corolla', '2017-01-01'),
(1, 'toyota', 'prius', '2016-01-01'),
(2, 'subaru', 'wrx', '2015-01-01'),
(2, 'subaru', 'brz', '2023-01-01'),
(3, 'dodge', 'viper', '2008-01-01');

select fsc.make, fsc.model, fsc.`year` 
from for_sale_cars fsc 
order by fsc.`year` desc;

select d.name , d.location 
from dealership d 
order by d.date_established asc
limit 1;

select fsc.make, fsc.model, fsc.`year`, d.name, d.location 
from dealership d inner join for_sale_cars fsc on fsc.dealership_id = d.id 
where fsc.`year` >= '2020-01-01'
order by fsc.`year`  asc;