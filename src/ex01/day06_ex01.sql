insert into person_discounts(id, person_id, pizzeria_id, discount)
select
	row_number() over () as id,
	po.person_id,
	menu.pizzeria_id,
	case
		when count(*) = 1 then 10.5
		when count(*) = 2 then 22.0
		else 30.0
	end as discount
from
	person_order po
join
	menu on menu.id=po.menu_id
group by
	po.person_id, menu.pizzeria_id;
	
select * from person_discounts;