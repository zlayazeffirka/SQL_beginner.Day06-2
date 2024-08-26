comment on table person_discounts is 'Таблица для хранения первональных скидок';

comment on column person_discounts.id is 'Идентификатор записи';
comment on column person_discounts.person_id is 'Идентификатор пользователя(внешний ключ к таблице person)';
comment on column person_discounts.pizzeria_id is 'Идентификатор пиццерии(внешний ключ к таблице pizzeria)';
comment on column person_discounts.discount is 'Размер скидки';