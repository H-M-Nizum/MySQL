/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
select Doctor, Professor, Singer, Actor
from
(
    select Name, Occupation,
    row_number() over(partition by occupation order by Name) row_numb
    from OCCUPATIONS
) base_table
pivot
(
    max(Name) for Occupation in (Doctor, Professor, Singer, Actor)
)pivot_table
order by row_numb