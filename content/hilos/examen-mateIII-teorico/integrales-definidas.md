+++
date = '2026-07-24T15:40:37-03:00'
draft = false
title = 'Integrales Definidas'
author = 'Valen'
keywords = ["calculo", "integrales", "calculo integral"]
categories = ["Matematica"]
toc = true
tocBorder = true
+++

Las [integrales definidas](https://www.superprof.es/apuntes/escolar/matematicas/calculo/integrales/integral-definida.html) nos permiten llevar a la practica todo lo visto en el apartado de **Integrales Indefinidas**, ya que en vez de ver toda la familia de antiderivadas posibles para una funcion *f(x)*, empezamos a ver que la integral nos devuelve un valor puntual.

Este tipo de integrales nos permite calcular **el area comprendida** entre dos puntos en una curvatura, por lo que tiene una amplia utilidad al calcular areas y **valores acumulativos** en general.

Me gusta pensar en integrales indefinidas como una introduccion a las herramientas para agilizar el uso de integrales definidas; en mucha bibliografia se habla primero de la integral definida porque es un poco mas intuitiva la idea, pero para tener una buena base me parece relevante conocer las integrales indefinidas.

# 1: Sumatorias
Nos resulta util entender como funciona una [sumatoria](https://es.wikipedia.org/wiki/Sumatorio) para poder introducir conceptos mas adeltane para entender formalmente que es una integral definida, por lo que brevemente hablaremos sobre esta herramienta. 

Una sumatoria consiste en una sucesion de sumandos, representada con la letra griega *sigma*, nos permite sumar desde i hasta n cantidad de veces una expresion.

Para verlo de una forma mas intuitiva:

<img src="https://i.ibb.co/5WLVR4C0/sumatoria.png" alt="sumatoria" border="0">

Personalmente me gusta verlo como un ciclo for, por lo que podemos verlo intuitivamente con logica de programacion.

Algunas propiedades simples y relevantes:

<img src="https://i.ibb.co/7Jd548gz/propiedades-sumatorias.png" alt="propiedades sumatorias" border="0">

Y ademas cabe aclarar que para diferentes sumatorias (diferente parametro de la funcion sumatoria), existe una funcion correspondiente o *formula* que da exactamente el mismo resultado, pero a mi parecer es tedioso recurrir a dichas funciones cuando se puede trabajar directamente con la sumatoria. (Pero eso no significa que sean inutiles, ya que por ejemplo, en un programa de computadora puede llegar a ser mas optimo el operar una funcion que iterar n cantidad de veces una expresion.)

Ejemplos de estas funciones son:

<img src="https://i.ibb.co/1ffXMCPN/formulas-sumatorias.png" alt="formulas sumatorias" border="0">

La idea no es memorizar dichas funciones, sino saber que hay una funcion correspondiente a cada valor expresado en funcion sumatoria. 

# 2: El problema del calculo del area
Empezamos a meter mano en un tema de interes mayor para las integrales definidas, el calcular areas bajo la curva de una funcion. 

Supongamos que tenemos una funcion *f(x)* y un area correspondiente en un intervalo *[a,b]* perteneciente a *x*, con el area *A*:

<img src="https://i.ibb.co/7JT9h1Gp/area-bajo-curva.png" alt="area bajo curva" border="0">

La idea con la que los matematicos del pasado solucionaban el problema de calcular el area debajo de la funcion era con una sumatoria; esta gente llego a la idea de que bajo la curva, podian hacer una aproximacion del area comprendida entre dos puntos y su imagen, a partir de la suma del area de n rectangulos. 

Entonces es facil visualizar esta sumatoria:

<img src="https://i.ibb.co/C5YSSzcR/la-idea.png" alt="la idea" border="0">

Donde *delta x* sera tomada como la base del rectangulo, y su imagen sera la altura, por lo que es la sumatoria de productos entre base y altura.

Tambien es relevante el percatar que hay un **error** en el valor del area debido a la precision en los rectangulos, por lo que la idea es que los rectangulos sean lo mas delgados posibles, y que haya una cantidad masiva de ellos, por lo que se va a formar una figura practicamente identica al area verdadera de la curvatura comprendida entre *a* y *b*.

> Por lo que queremos decir que *n -> inf* y que *delta x -> 0*

Entonces, el proceso entero toma esta forma:
1. Se divide el intervalo *[a,b]* en *n* subintervalos *[x[k-1], x[k]]*, con *k = 1, 2, 3, 4, ...,n*,donde *x[0] = a* y *x[k] = b*.
2. Se denota la longitud de cada subintervalo (base de cada triangulo) con *delta x[k]*, y los intervalos no necesariamente tienen la misma amplitud.
3. Elegir la imagen de cada intervalo.
4. Formar el producto *f(x[k]).deltax[k]*, que es el area de cada rectangulo generado.
5. Se forma la sumatoria para obtener una aproximacion del valor de A.

Con ese procedimiento, ahora se puede formular formalmente una definicion de integral definida.

> A esta sumatoria se le conoce como [Sumatoria de Riemann](https://es.wikipedia.org/wiki/Suma_de_Riemann)

# 3: Definicion de la integral definida
Vamos a ir trabajando la definicion partiendo de lo que vimos anteriormente:

![definicion-integral-definida.png](https://i.postimg.cc/Fs9c6pYy/definicion-integral-definida.png)

Si bien podemos tener subintervalos de cualquier tamano, es practico hacer que todos sean del mismo tamano y que el ultimo subintervalo tenga como extremo derecho directamente al valor *b*, asi podemos trabajar mas sencillamente con la sumatoria de areas.

Para tener esa frontera en el ultimo subintervalo haciemos lo siguiente, teniento en cuenta que *x[0] = a*:

![frontera-del-subintervalo.png](https://i.postimg.cc/zv3NL4dk/frontera-del-subintervalo.png)

Sustituyendo algunos valores llegamos a la siguiente definicion:

![definicion-integral-definida-2.png](https://i.postimg.cc/htndmrBv/definicion-integral-definida-2.png)

Y un ejemplo practico del uso de esta definicion:

![definicion-integral-definida-ejemplo.png](https://i.postimg.cc/P5K0sSfw/definicion-integral-definida-ejemplo.png)

Lo cual empieza a ser tedioso (no imposible), por lo que parte del **Teorema fundamental del calculo** (todavia no hablamos de esto) propone una forma mas intuitiva de resolver estas areas, y sea bienvenida la definicion **moderna** de integral definida.

> Denotese ||P|| a la amplitud del subintervalo mas grande.

![definicion-moderna-de-integral-definida.png](https://i.postimg.cc/9X4d32jV/definicion-moderna-de-integral-definida.png)

# 4: Propiedades de las integrales definidas

![propiedades-integral-definida.png](https://i.postimg.cc/DwsW5fsX/propiedades-integral-indefinida.png)

Ademas, algunas notas relevantes a tener en cuenta:
* Una integral indefinida es una familia de funciones de *x*, una integral definida es un valor perteneciente a los reales.
* Si el limite superior de una integral definida es una variable *x*, entonces la integral es una funcion de *x*.
* La integral definida es un numero fijo, siempre y cuando *a* y *b* sean numeros fijos tambien.

# 5: Teorema del valor medio 
Este teorema nos dice que hay un punto medio en la funcion, cuyo rectangulo generado por su altura *f(c)*, y su base formada por *b - a*, tendra un area igual al area formada por la curvatura en el intervalo [a,b]. 

![Teorema-del-valor-medio-integrales.png](https://i.postimg.cc/XJmS2CTx/Teorema-del-valor-medio-integrales.png)

Y un ejemplo practico para encontrar ese *f(c)* en la funcion:

![buscando-el-valor-medio.png](https://i.postimg.cc/K88b8xrL/buscando-el-valor-medio.png)

Y la demostracion simple de esto:

De igual forma, para mayor claridad:

{{<youtube bB2y6-Pjtn0>}}

# 6: Teorema fundamental del calculo
El elemento principal del teorema es la integral como inversa a la derivada. De ahi surge todo el estudio del calculo integral.

El teorema se divide en dos formas, la primera tratando de la integral definida como area bajo la curva mediante una funcion acumulada. La segunda, la [Regla de Barrow](https://www.superprof.es/apuntes/escolar/matematicas/calculo/integrales/regla-de-barrow.html) hablando de como calcular esta area de forma sencilla.

![primera-parte-del-teorema.png](https://i.postimg.cc/HnPNWc0k/primera-parte-del-teorema.png)

Con lo que definimos la integral como una funcion acumulativa del area debajo de la curvatura de la funcion.

![primera-parte-del-teorema-2.png](https://i.postimg.cc/g2h7d0nT/primera-parte-del-teorema-2.png)

Y definimos la integral y la derivada como inversas.

La segunda forma del teorema nos sirve para abstraer las sumatorias de Riemann, ya que llegamos a una forma mucho mas amigable a la hora de resolver problemas:

![segunda-parte-del-teorema.png](https://i.postimg.cc/8c9jR4dt/segunda-parte-del-teorema.png

Entonces, podemos resolver algun problema de forma trivial, como el siguiente:

![ejemplo-aplicacion-segunda-forma.png](https://i.postimg.cc/6QXzVLYZ/ejemplo-aplicacion-segunda-forma.png)

# 7: Aplicaciones de la integral definida

![ejemplo-aplicacion-1.png](https://i.postimg.cc/HxMCVCWf/ejemplo-aplicacion-segunda-forma-1.png)

![ejemplo-aplicacion-2.png](https://i.postimg.cc/pVDHvx6L/ejemplo-aplicacion-segunda-forma-2.png)

# 8: Integrales impropias
Por ultimo, hablemos un poco de integrales impropias. Anteriormente mencionamos en una nota que una integral tiene que tener por extremo valores fijos para resultar en un valor fijo, pero que ocurre cuando esos valores resultan en indeterminaciones tales como el infinito?

![integrales-impropias.png](https://i.postimg.cc/pLdrypNH/integrales-impropias.png)

En los primeros dos casos, la integral impropia converge si el limite existe, de lo contrario diverge. En la tercera, la integral a la izquierda diverge si la integral a la derecha diverge.

> Convergencia significa que se acerca a un valor puntual, divergencia implica que tiene un crecimiento infinito y no se acerca a ningun valor en particular.
