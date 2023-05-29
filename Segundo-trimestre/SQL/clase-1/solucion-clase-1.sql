--Resta dos numero
declare @num,@num_1 int,num_2 int,@multiplicar int,@dividir int
set @num_1=10
set @num_2=5
set @num= @num_1-num_2
print @num
--si la suma de los 2 es mayor a 25 multiplicar 	los 2 números de lo contrario dividir
if @num > 25
begin
    set @multiplicar=@num_1 * @num_2
    print 'El resultado es :' +
    convert ( nvarchar @multiplicar (50))

end

else

begin
    set @dividir=num_1/num_2
    print'El resultado es :' + 
    convert (nvarchar @dividir(50))
end
--CREAR UN EJERCICIO QUE PERMITA CALCULAR EL 	PROMEDIO DE 3 NÚMEROS
declare @1 int , @2 int, @3 int, @promedio int
set @1=10
set @2=30
set @3=8
set @promedio=(@1+@2+@3)/3
begin
    print 'Este es le promedio: '+ @promedio
end

--CALCULAR EL 10% DE LAS VENTAS SI ES MAYOR DE 		1.000.000 DE LO CONTRARIO EL 20%
declare @ventas int , @porcentaje_venta, int @tabla_venta
select
begin
    when @ventas > 1000000 then @ventas* 0.1
    else @ventas*0.2

end as porcentaje_venta
from tabla_venta

--CALCULAR EL AREA DE UN CUADRADO CUYOS LADO ES 20 	CM
declare @area int @cuadrado int = 20
set lado_1=20
@area= @cuadrado*@cuadrado
begin
    print 'El area del cuadrado es :' +  @area
end

--	CALCULAR EL AUXILIO DE TRANSPORTE PARA UN 	EMPLEADO QUE LE PAGAN MENSUALMENTE  CUYO SALARIO BASICO SON 1.000.000  
declare @auxilio float, @EMPLEADO float
begin
    when@auxilio = 1000000 then @EMPLEADO + 140.040
    else @EMPLEADO =1000000
end
--Imprimir los numeros del 1 al 10
declare @i int = 0
begin
    if @i <= 10
    set @i=@i+1
end
--imprmir los numeros de la tabla del 2 hasta el 	40
declare @i int = 0
begin
    if @i <= 40
    set @i=@i+2
end

--calcular el area de un triangulo cuya altura son	45cm y cuya base son 30 cm
declare @area int , @alt int , @base int
set @alt= 45 'cm'
set base= 30 'cm'
@area=@base*@alt
begin
    print 'Ela area del triangulo es: '+ @area    
 end

 --	calcular el promedio de 4 notas de un alumno
   declare @nota_1 int, @promedio int, @nota_2 int,@nota_3 int,@nota_4 int,@notas int
   @nota_1=3
   @nota_2=4
   @nota_3=5
   @nota_4=2
   @notas= (@nota_1+@nota_2+@nota_3+@nota_4)/4
   begin
    PRINT 'El promedio del estudiante es : ' + @notas
   end

   --calcular el promedio general de notas teniendo 	encuenta que el grupo tiene 2 alumnos	y cada 	alumno tiene 2 notas
   declare @nota1 int,  @nota2 int,  @nota3 int , @nota4 int, @promedio int 
   @promedio=(@nota1+@nota2+@nota3+@nota4)/4
   print @promedio

   --realizar un algoritmo que me indique el índice 	de masa corporal  (IMC) e imprimir el resultado 	con  respecto a los datos siguientes:
--bajo peso---- 18,5 
--normal------- 18,5 a 24,9 
--pre obesidad- 25 a 29,9--- de 1 a 10 kilos de mas 
--obesidad 1--- 30 a 34,9--- 10 a 20kilos de mas 
--obesidad 2--- 35 a 39,9--- de 20 a 30kilos de mas 
--obesidad 3--- +40 --------- desde 30 kilos de mas
