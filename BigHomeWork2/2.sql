-- Output id of polinomials with zero coefficients

select id
from bht
group by id
having sum(case when coef = 0 then 1 else 0 end) > 0 

