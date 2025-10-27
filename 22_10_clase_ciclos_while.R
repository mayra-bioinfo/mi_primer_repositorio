## EJERCICIOS DE CLASE, CICLOS for, EJEMPLOS:


#ejemplo 1:

## ciclos for 
# r = resistentes 
#s = suceptibles

placas <- c("R", "S", "S", "R", "R", "S", "R") ## un objeto en el cual se indican las placas que son resistentes 
resistentes <- 0 ## se crea un objeto asignandole un valor inicial al objeto para 
for (p in placas){ ## comenzamos con el ciclo for, en donde le decimos que la variable p lo tome (???) en el vector de placas 
  if (p == "R"){ ## ponemos una condicion que nos interesa, aqui le decimos que si p es igual a R es verdadero (o sea uqe si cumple la funcion)
    resistentes <- resistentes + 1 ## el +1 es para que no se haga un bucle infinito, al objeto resistentes (que inicia en 0), si se cumple la condicion le va a sumar 1, guardandolos en el mismo objeto
    print (resistentes) ## si le pongo el print dentro del codigo, me sale 1,2,3,4
  }
}
print(resistentes) ## imprimir los resultados, con este solo te sale el valor total de las placas (4)


#ejemplo 2: 

expresion <- data.frame ( ##hacer una dataframe (recuerda que se tiene que tener el mismo numero de renglones)
  muestra = c("A", "B", "C"),
  gen1 = c(5, 0, 3),
  gen2 = c(2, 1, 0),
  gen3 = c(0, 4, 2)
)
expresion

conteo <- numeric (nrow (expresion))  ##que expresion lo tome como numerico 
conteo
for (i in 1:nrow (expresion)) { ##que lo vaya tomando por cada uno de los renglones 
  datos <- expresion [i, 2:4] ## que tome la columna de las 2 a la 4
  conteo [i] <- sum (datos > 0) ## considera cada uno de los reglones u que le sume esoso datos si son mayores a 0
}
conteo

## ¿Cuantos genes se expresan en cada muestra? (2 2 2), e esa muestra se estan expresando dos genes por cada muestra 

## se puede hacer la iteracion por cada columna de la base de datos 
microbiota <- data.frame (
  especie = c("Lactobacillus", "Bacteroides", "Escherichia"),
  muestra1 = c(100, 50, 25),
  muestra2 = c(80, 40, 20)
) ## hacer el data frame 
microbiota


relativas <- microbiota  ## le asignamos la base de datos completa y le pnemos otro nombre (otro objeto)
relativas
for (i in 2:ncol (microbiota)){  ##cada iteracion de la variable i, de dos hasta el numero de columnas, se tiene que especificar para que tengan (???)
  tot <- sum (microbiota [ , i]) ##de nuestra base de datos, suma todos los rengones con la columna especifca, i tiene el valor inicial de 2, suma todos los valores de esa columna y asignalos al valor de tot (???)
  ##que sume los valores de la base de datos microbiota con el valor de i (es como: sum (microbiota [ , 2])) por que i tiene valor inicial de 2 y como va iterando los valores van a cambiar 
  relativas [ , i] <- microbiota [ , i]/tot ## de todos los renglones donde i esta iterando dividelo entre el valor de tot y este valor me lo asignas a la base de daatos anterior en el renglon donde esta iterando (???)
}
relativas

## EJEMPLOS, CICLOS while:
## while (condition) {
# bloque de codigo (condiciones)
# TODO LO QUE ESTA DENTRO 
#mientras la condicion sea VERDADERA
# }

## x <- 1
## while (x <= 5){
#  print (x)
## } 
##
# CON ESTE CODIGO HACES CICLOS INFINITOS (bucle infinito)
##

x <- 1 #le asignas un valor a x 
while (x <= 5){ #que lo imprima hasta que x sea mayor o igual que 5
  print (x) ## bucles infinitos 
  x <- x + 1  ##para que no haga bucles infinitos, le asignas una condicion a x para que se vaya sumando un +1, de esta forma, cuando x alcance el valor de 5 se va a detener 
} 

x <- 1 #le asignas un valor a x 
while (x <= 5){ #que lo imprima hasta que x sea mayor o igual que 5
  print (paste (" el valor de ", x)) ## bucles infinitos 
  x <- x + 1  ##para que no haga bucles infinitos, le asignas una condicion a x para que se vaya sumando un +1, de esta forma, cuando x alcance el valor de 5 se va a detener 
} 

suma <- 0 
contador <- 1

while (suma <= 1000){ ## miestras la variable suma sea menor o igual a 100 
  suma <- suma + contador  ## que sume la suma con el contador
  contador <- contador + 1 ## para np hacer bucles infinitos 

} 

cat ("numero de iteraciones: ", contador -1, "/n")
cat ("suma total: ", suma, "/n")

bacterias <- 100 ## tenemos 100 bacterias iniciales 
horas <- 0 ## iniciamos en la hora 0 

while (bacterias <= 10000){  ## cuantas horas van a pasar hasta que se alcancen las 10000??
  bacterias <- bacterias *2 ## sabemos que las bacterias se duplican cada hora, por eso las bacterias las vamos a multiplicar por 2
  print (paste ("horas:", horas)) ## para que vaya imprimiendo los resultados por cada hora 
  print (paste ("bacterias: ", bacterias)) ## para que nos vaya diciendo el numero de bacterias que se van haciendo 
  horas <- horas + 1 ## para que np se haga bucle infinito 
}

cat ("numero de horas : ", horas)

## estamos observando una colonia bacteriana que se esta reduciedo un 20% cada hora, por falta de nutrientes 
## bacterias iniciales = 500
## queremos saber cuantas horas van a pasar hasta que la poblacion baje hasta 50 bacterias 
## bacterias finales = 50

biniciales <- 500
tiempo <- 0

while (biniciales <= 50){
  biniciales <- biniciales - 0.20 ## del 20%, en decimal es 0.20
  tiempo <- tiempo + 1
}


cat (paste ("el tiempo para que llegue a 50 es de:", tiempo, "horas"))

## en este esta medio raro, checalo   
  
  
  

