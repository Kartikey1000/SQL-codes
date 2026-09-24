SELECT "title" FROM "books" 
where "publisher_id" = (
    select "id" from "publishers" 
    where "publisher" = 'Fitzarcallo');