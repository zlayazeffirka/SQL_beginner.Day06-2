select 
	person.name,
	m.pizza_name,
	m.price,
	m.price*(100-pd.discount)*0.01 as discount_price,
	pizzeria.name as pizzeria_name
from
	menu m
join person_order po on po.menu_id=m.id
join person on person.id=po.person_id
join pizzeria on pizzeria.id=m.pizzeria_id
join person_discounts pd on pd.person_id=person.id and pd.pizzeria_id=m.pizzeria_id
order by person.name, m.pizza_name;
