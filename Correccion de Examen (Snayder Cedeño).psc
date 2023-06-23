/// Correcion del examen de Algoritmo 

/// Nombre y apellido: Jostyn Snayder Cedeño Jimenez
/// Paralelo = B2


/// 2) Dado el siguiente algoritmo ¿Indique que linea se puede modificar para el seudocodigo imprime un triangulo de *
/// tal como se indica en la salida? 
/// Nota: Escribir "ok" Sin saltar // se imprime ok y el cursor se queda en la misma linea 

/// Codigo                                                      /// Salida                  Prueba de Escritorio
Funcion triangulo_estrellas()                                  /// *                       I = 1 ; J = *
	Definir n, i, j Como Entero                              /// **                      I = 2 ; J = **
	n = 5                                                      /// ***                     I = 3 ; J = ***
	para i <- 1 Hasta n                                       /// ****                     I = 4 ; J = ****              
		para j <- 1 Hasta i                                   /// *****                   I = 5 ; J = *****
			Escribir "*" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion
/// Seleccione una alternativa correcta:
/// a. 4
/// b. 5 
/// c. 6  <-- Respuesta.
/// d. 8

/// 3) ¿Cual es el resultado que presenta la variable x en el siguiente seudocodigo?
Funcion expresion()
	Definir a, b, x Como Entero
	a = 3; b = 6
	x = a + a * ( a + b) - b * a + ( trunc(b/3) -2 + a * (a mod 2))
	Escribir x
FinFuncion
/// Seleccione una alternativa correcta:
/// a. 39
/// b. 13
/// c. 15 <-- Respuesta.
/// d. 16

/// 4) Analice las siguientes lineas de programa y escriba ¿Cual es la respuesta que genera m y n?
Funcion presentar()
	Definir n, m, r Como Entero                                     /// Prueba de Escritorio
	n = 15; m = 25; r = 1                                             /// m= 25 n=15 r= 1
	mientras (r <> 0) Hacer                                          /// m= 10 n=25 r=10
		r = m mod n                                                  /// m 10 n=10 r=10
		si (r = 0) Entonces                                         /// m=10 n=10 r=0 
			Escribir "M=", m," n=", n
		SiNo
			n = m
			m = r 
		FinSi
	FinMientras
FinFuncion
/// Seleccione una alternativa correcta: 
/// a. m=25, n=15
/// b. m= 10 n=25
/// c. m=5 n=5
/// d. m=10 n=10 <-- Respuesta

/// 5) Realizar un seudocodigo que permita verificar si la cantidad de parentesis es proporcional dentro de una expresion matematicas.
/// La expresion se ingresa caracter por caracter. A final debera mostrar un mensaje si la expresion tiene la misma cantidad de parentesis o no.
/// El algortimo termina cuando se ingresa el caracter "."
/// Ejemplo: Si la expresion= "(4+2)*5+(5-3)" presentar "Numero de parentesis correcto"
/// Ejemplo: Si la expresion= "(4+2)*5+(5-3" presentar "Error, numero de parentesis incorrectos"

///Desarrolle su respuesta:
// Entrada: Car(leer)
// Proceso: Repetir hasta que car = ".", Dentro del bucle hacer condicionales, Si car = "("; si car = ")" ; contador + 1
// Salida: Numero de Parentesis correctos o incorrectos
Funcion Parentesis() 
	Definir Car Como Caracter
    Definir contador Como Entero
	
    contador <- 0
	
    Repetir
        Escribir "Ingrese un caracter ( . para salir): "
        Leer Car
        
        Si Car = "("
            contador <- contador + 1
        FinSi
		
        Si Car = ")"
            contador <- contador - 1
        FinSi
		
    Hasta Que Car = "."
	
    Si contador = 0
        Escribir "Número de paréntesis correcto"
    Sino
        Escribir "Error, número de paréntesis incorrecto"
    FinSi
FinFuncion

/// 6) Elaborar un algortimo tal, que dado un nombre y la edad en años. Calcule el numero de pulsacion que debe
/// tener por cada segundo de ejercicios segun la edad de la persona.
/// Si la edad es menos de 10 años las pulsaciones es igual a (200 - edad)/10; si es menor a 18 las pulsaciones es (220-edad)/15 
/// y es mayor de edad las pulsaciones es igual (200-edad)/20.
/// Debe presentar la edad y las pulsaciones calculada.

///Desarrolle su respuesta:
// Entrada: P, nombre, edad(leer)
// Proceso: Si edad < 10 = (200 - edad)/10; edad < 18 = (220- edad)/15; edad >= 18 = (200 - edad)/20
// Salida: Edad y pulsaciones calculadas.
Funcion Edades()
	Definir Nombre como caracter 
	Definir edad, p como reales
	Escribir "Digite su nombre"
	leer Nombre
	Escribir "Digite su edad" 
	leer edad 
	
	Si edad < 10 Entonces
		P <- (220 - edad)/15
	SiNo
		Si edad < 18 Entonces
			p <- (220 - edad)/15
		SiNo
			Si edad >= 18 Entonces
				p <- (200 - edad)/ 20
			FinSi
		FinSi
	FinSi
	
	Escribir "La edad es: ", edad
	Escribir "Sus pulsaciones son de: ", p
FinFuncion

/// 7) ¿Elaborar un seudocodigo que dado una serie de numeros presente aquellos numeros que son multiplos de 2 y tambien de 5; 
/// Al final debera presentar la suma de los numeros multiplos de 3 positivos?
/// Ejemplo: serie = 20, 13, 5, 10, 21, -3, 9
/// Respuesta: Presentar multiplos2_5 = 20 10
/// Presentar suma_multiplos_3_positivos(21+9)= 30

/// Desarrolle su respuesta
// Entrada: num(leer)
// Proceso: Condicionales para multiplos de 2 y 5
// Salida: La suma de numeros positivos multiplos de 3 y la cantidad de numeros multiplos de 2 y 5
Funcion SerieMultiplos()
	Definir num, suma, multiplos2y5, multiplos3 Como Entero
	
	num =0 
	Suma =0
	multiplos2y5=0
	multiplos3=0
	
	Escribir "Ingrese una serie de números (Ingrese -1 para finalizar):"
	Repetir
		Leer num
		
		
		Si num <>-1 Entonces
			Si num MOD 2=0 Y num MOD 5=0 Entonces 
				Escribir "El número ", num, " es múltiplo de 2 y 5."
				multiplos2y5= multiplos2y5 +1
				
			FinSi
			
			Si num >0 Y num MOD 3=0 Entonces
				
				
				Suma= suma + num
				multiplos3= multiplos3+ 1
				
				
			FinSi
		FinSi
		
	Hasta Que num =-1
	Escribir "La cantidad de números múltiplos de 2 y 5 es: ", multiplos2y5
	Escribir "La suma de los números múltiplos de 3 positivos es: ", suma 
FinFuncion
Algoritmo Correccion 
//	triangulo_estrellas() 
//	expresion()
	//	presentar()
//	Parentesis() 
	//	Edades()
	SerieMultiplos()
FinAlgoritmo
	