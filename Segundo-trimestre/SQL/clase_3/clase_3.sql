--like=comience con un parametro(solo numero)
--between= esta hecho para numeros y fechas 
--in= esta hecho para numeros y fechas


--like:
example: select * from emp 
where nom like '% a'

'[3] [0-3] [3,2]' --esos corchetes son para especificar el caracter que quiere que contenga
--es diferente tener una coma a un guion

-- between:
-- es un rango de fechas y numeros 
 example: select * from emp
 where cod between 0 and 20

 --in:
 example: select * from emp 
 where cod in (2,10,20)