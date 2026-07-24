+++
date = '2026-07-22T12:28:12-03:00'
draft = true
title = 'Integrales Indefinidas'
author = 'Valen'
keywords = ["calculo", "integrales", "calculo integral"]
categories = ["Matematica"]
toc = true
tocBorder = true
+++

Anteriormente hablamos sobre infinidad e indeterminaciones con limites, y dimos calculo diferencial con derivadas y sus aplicaciones. Ahora introducimos un tema aplicado muy ampliamente en las mastematicas; el [calculo integral](https://es.wikipedia.org/wiki/Integraci%C3%B3n).

El calculo integral da introduccion a una **funcion inversa a la derivada**, la [antiderivada](https://es.wikipedia.org/wiki/Integraci%C3%B3n_indefinida) o **integral indefinida** (despues hablaremos de la definida).

En terminos de Layman, una integral es una funcion que nos da un valor de salida, y dependiendo el contexto, este puede ser interpretado de diferentes formas. Una forma comun, mediante un teorema que presentaremos despues, nos permite calcular el area debajo de una curva, lo cual aplicado a funciones da paso a muchas aplicaciones usadas en fisica, estadistica, economia, medicina, etc. Siendo usada para calcular **magnitudes acumulativas**.

# 1: Integrales indefinidas
En este apartado nos dedicaremos al estudio de las integrales indefinidas. Llamamos integral indefinida a la familia de funciones inversas de la derivada. Decimos que es una familia de funciones debido a que para una derivada, existen una infinita cantidad de funciones inversas que dan "solucion" a la inversa, por lo que generalizamos esta idea en una *integral indefinida*

# 2: Funcion primitiva y su notacion
Primero que todo, si una funcion es derivable en cualquier punto, ese punto tambien admitira una integral, que no es mas que la inversa de la derivada, por lo que podemos pensarlo como:

> *f(x)* es una funcion. Llamamos *F(x)* a la integral indefinida de *f(x)*. La derivada de la antiderivada nos resulta en la funcion original *f(x)*, por lo que: *F'(x) = f(x)*

Ejemplificado visualmente:
![ejemplo-integral-indefinida.png](https://i.postimg.cc/W3tBvL20/ejemplo-integral-indefinida.png)

Por lo que introducimos esta nueva notacion para la integral. Ahora, mencionamos que hay una familia de funciones para la antiderivada, esto se da de la siguiente manera:

![primitiva-de-una-funcion.png](https://i.postimg.cc/wxfVSyPD/primitiva-de-una-funcion.png)

Se puede apreciar que el resultado de cada una de las integrales deja una *C*, y que al final esas *C's* se unen en una *C* generica, eso representa cualquier valor real, por lo que se incluye en la expresion final a toda la familia de funciones inversas posibles de *f'(x)*. Cada valor que tome *C* implica una primitiva distinta, por lo que:

> Al conjunto de todas las funciones primitivas de *f(x)* se le llama *integral indefinida de f(x)*

# 3: Integracion inmediata
Se denominan integrales inmediatas a las que resultan **evidentes** por ser el integrando la derivada de una función conocida. Digase, soluciones triviales. De aqui viene, de igual forma que con las derivadas, el uso popular de [tablas de integracion](https://es.wikipedia.org/wiki/Anexo:Integrales), que abstraen el tener que resolver manualmente cada integral, por lo que se agiliza bastante el trabajar con integrales.

Aqui algunas integrales comunes:

![integrales-comunes.png](https://i.postimg.cc/JnmmJ4WW/integrales-comunes.png)

Tambien es relevante el comportamiento para una funcion compuesta:

![integral-de-una-funcion-compuesta.png](https://i.postimg.cc/NGZDxN0r/integral-de-una-funcion-compuesta.png)

Lo cual nos es fundamental a la hora de usar el metodo de sustitucion, del cual hablaremos despues.

# 4: Propiedades de la integral indefinida
Las propiedades seran muy importantes al trabajar con integrales, ya que simplifican notioramente el manejo de expresiones que parecen complicadas en primera instancia.

![propiedades-de-las-integrales-indefinidas.png](https://i.postimg.cc/jq8H8MSt/propiedades-de-las-integrales-indefinidas.png)

# 5: Metodos de integracion
Trabajaremos con algunos metodos de integracion, que a grandes razgos consisten en transformar una expresion para despues integrar en algo mas sencillo de operar.

## Integración por descomposición en sumandos.
Consiste en separar una expresion en sumas de integrales mas pequenas, es simplemente aplicar la propiedad que vimos anteriormente, por ejemplo:

![descomposicion-en-sumandos.png](https://i.postimg.cc/595MCk1P/descomposicion-en-sumandos.png)

## Integración por cambio de variable o sustitución.
Esta es mi favorita en lo personal, ya que demanda de cierto pensamiento para determinar algebraicamente que es lo mejor a sustituir. 

![sustitucion.png](https://i.postimg.cc/L5PkJZrn/sustitucion.png)

Se pone bastante interesante cuando tienes que jugar algebraicamente con la expresion derivada *du*, hay veces en las que no es tan trivial la solucion, por lo que uno tiene que usar artificios algebraicos para solucinar y es bastante agradable.

## Integración por partes.
Y bienvenida sea **la famosa vaca vestida de uniforme**! De aqui surge un famoso mnemotecnico que facilita el recordar la siguiente formula:

![vaca-vestida-de-uniforme.png](https://i.postimg.cc/Gtn8SgSN/vaca-vestida-de-uniforme.png)

> *"Un dia vi una vaca sin cola vestida de uniforme"*

Esta es una identidad muy frecuente a la que podemos llegar con sustitucion, reglas de integracion y un poco de algebra: 

![por-partes.png](https://i.postimg.cc/MTB2p9KX/por-partes.png)

Es bastante sencillo, ya que se llega a la forma indicada por la formula y solo queda acomodar para dejar prolijo, aunque no es de vital importancia. Puede ser tambien que se presente un escenario en el que se tenga que volver a integrar usando el mismo metodo.

Tambien es posible un **escenario ciclico**, en el que el usar el metodo resulta en una expresion identica a la original, es un caso interesante, por lo que a continuacion ejemplifico con esto mismo: 

<img src="https://i.ibb.co/spQvdgst/por-partes.png" alt="por partes" border="0">

Se puede apreciar como llegamos a la expresion original partiendo de la forma de la integral por partes, entnces es importante detectar que estamos cayendo en un ciclo para no volver a integrar sin sentido. Creamos una igualdad y resolvemos la ecuacion.

## Integración de funciones racionales.
En este apartado tratamos con funciones de la forma *f(x) / g(x)*, donde ambas *f(x)* y *g(x)* son funciones polinomicas, por lo que podemos asignarles grado *m* y *n* respectivamente. Por lo que se dividen en dos categorias, **propias e impropias**, ahora veremos como tratar con cada una. 

Empezando por las **propias**, su grado *m > n*, por lo que el **numerador sera de mayor grado**. El metodo consiste en descomponer en fracciones simples, a lo que se suele llamar **Cover Up Method**:

{{<youtube fgPviiv_oZs>}}

A continuacion, un ejemplo de esto:

<img src="https://i.ibb.co/Pvyp5JHV/raices-reales-simples.png" alt="raices reales simples" border="0">

Descompusimos en raices simples, usamos Cover Up para determinar los valores de A y B, y resolvimos la intergal trivialmente.

Ahora, pasamos a ver **racionales con raices reales multiples**, donde si bien la idea es similar, cambia el juego con el denominador:

{{<youtube TdDCzoUwvnY>}}

Un ejemplo de esto: 

<img src="https://i.ibb.co/8nLFVp20/raices-reales-multiples.png" alt="raices reales multiples" border="0">

Donde la idea es llegar a una ecuacion o un sistema de ecuaciones para encontrar los valores de *A*, *B*, *C*, ..., para despues resolver trivialmente la integral. Cable recordar que podemos probar con diversos valores de *x* para resolver la ecuacion, yo inicialmente escogi *x = 5* ya que es raiz.

Otro ejemplo:

<img src="https://i.ibb.co/DfDtVfxF/raices-reales-multiples-2.png" alt="raices reales multiples 2" border="0">

Y por ultimo, abordamos **raices parciales imaginarias**, donde no tenemos factores reductibles. 

{{<youtube OsFW_cxMie4>}}

Un ejemplo de como resolver, aunque a partir del como acomodar la forma, es un proceso similar a lo que venimos viendo.

<img src="https://i.ibb.co/1GbDsG9N/raices-imaginarias-simples.png" alt="raices imaginarias simples" border="0">

## Integración de funciones trigonométricas.
Para lidiar con funciones trigonometricas, usualmente tenemos que recurrir a [identidades trigonometricas](https://es.wikipedia.org/wiki/Anexo:Identidades_trigonom%C3%A9tricas) particulares para poder solucionar las integrales de forma trivial, es sencillo una vez que conocemos algunas de estas.

Un metodo para resolver ciertos escenarios es mediante la paridad del exponente de las funciones, por ejemplo:

<img src="https://i.ibb.co/TXg9xh3/identidades-de-paridad.png" alt="identidades de paridad" border="0">

Son identidades fundamentales para trabajar mediante sustitucion en algunos escenarios, a continuacion desarrollo alguno:

* Ejemplificamos con un ejercicio en el que tenemos la forma de la integral de un producto de *seno* y *coseno*, uno tiene exponente par, el otro impar.

<img src="https://i.ibb.co/xqxHnZzx/trigonometricas-paridad.png" alt="trigonometricas paridad" border="0">

* En este otro ejemplo, ambos exponentes son enteros positivos pares, por lo que usaremos las identidades que mostramos mas arriba en este apartado.

<img src="https://i.ibb.co/zW1yR3bG/trigonometricas-paridad-2.png" alt="trigonometricas paridad 2" border="0">

Ahora, como tratamos con una integral compuesta por **el producto** de funciones trigonometricas? Nuevamente, utilizamos identidades de la siguiente forma:

<img src="https://i.ibb.co/9jZ5YTM/trigonometricas-productos.png" alt="trigonometricas productos" border="0">

*Ahora ejemplificamos un ejercicio solucionado mediante el uso de estas.

<img src="https://i.ibb.co/GKfXggR/trigonometricas-producto-ejemplo.png" alt="trigonometricas producto ejemplo" border="0">

Lo cual es utilizar las identidades que vimos y jugar con algebra y propiedades de la integral, nada del otro mundo.

> Originalmente pensaba en incluir **Integrales Definidas** dentro de esta misma publicacion, pero viendo lo extenso que se esta haciendo esto, voy a dividir el tema en dos partes. Vease el siguiente post, Integrales Definidas, para ver la aplicacion practica de todo lo que hemos dado en esta parte.
