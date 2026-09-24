select "name" from "translators"
union
select "name" from "authors";


select 'author' as "profession","name" from "authors"
union
select 'translator' as "profession","name" from "translators";

SELECT "name" FROM "authors"
INTERSECT
SELECT "name" FROM "translators"; 

SELECT "name" FROM "authors"
EXCEPT
SELECT "name" FROM "translators";  


SELECT "book_id" from "transalted" where "translort_id"=(
    select "id" from "tanslators" where "name" = 'Sophie Hughes'
)
INTERSECT 
SELECT "book_id" From "translated" where "tasnlator_id" = (
    SELECT "id" from "translators" where "name" = 'Marget jull costa'
);