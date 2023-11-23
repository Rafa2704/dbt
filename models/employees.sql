
with calc_employees as (
SELECT 
      DATEDIFF(YEAR, birth_date, GETDATE()) AS idade,
   DATEDIFF(YEAR, hire_date, GETDATE()) AS tempo_servico,
   first_name ||  ' '  || last_name AS nome_completo,
   *
FROM {{source('sources', 'employees')}}

) 
select * from calc_employees