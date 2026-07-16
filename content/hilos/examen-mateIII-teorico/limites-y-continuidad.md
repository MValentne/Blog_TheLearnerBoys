+++
date = '2026-07-13T18:11:20-03:00'
draft = false
title = 'Limites Y Continuidad'
author = 'Valen'
keywords = ["calculo", "limites", "continuidad"]
categories = ["Matematica"]
+++
El interes de esta unidad es hablar sobre las bases fundamentales del calculo, en particular del concepto de limite, ya que todo se desarrolla a partir de ese concepto.

# 1: Intervalos
Empecemos hablando sobre algo simple, intervalos.
Siendo que tenemos *a < b*:

![intervalos.png](https://i.postimg.cc/ZnjjSvKG/intervalos.png)

Se tiene en cuenta que hablamos de valores pertenecientes al conjunto de los Reales, por lo que nos referimos a valores **continuos**, digase, que hay una cantidad infinita de valores entre un punto *u* y otro *v*.

Puede ser un intervalo abierto o cerrado, lo cual considera si se incluyen o no sus extremos como parte del conjunto intervalo.

# 2: Entornos
Un entorno consiste en el alrededor de un valor puntual en un intervalo. Si un punto *a* es un valor cualquiera en la recta real y *h* es un valor positivo, un entorno de centro *a* y radio *h* es el intervalo abierto **(a-h, a+h)**. A esto se le designa **E(a,h)**:

![entornos.png](https://i.postimg.cc/dt6QbsRt/entornos.png)

En el entorno reducido, no se toma en cuenta el valor puntual de *a*.

# 3: Punto de acumulacion
El punto de acumulacion es la base para el limite y la derivada. Aca un gran video explicativo del tema:

{{<youtube GlPcclwproI>}}

La idea clave es que exista un *x* para todo entorno reducido de *a*, cuya interseccion con el conjunto *C* sea distinta de vacio.

![Punto-de-acumulacion.png](https://i.postimg.cc/3Jx6SYtQ/Punto-de-acumulacion.png)

Se puede observar que *y* no es punto de acumulacion, ya que si bien, se puede expandir el entorno reducido para cumplir con la condicion, esta interseccion debe cumplir para todos los posibles entornos reducidos de *x*, por lo que al haber por lo menos un entorno que no cumple, rompe la condicion y no es punto de acumulacion.

# 4: Limite intuitivo y definicion formal
Ahora tocamos el tema principal y fundamental para todo lo que veremos a partir de ahora, el **limite**. Ejemplifico con una idea intuitiva para entender el peso del concepto; supongamos que tengo una taza frente a mi, si bien hay una distancia fija entre la taza y mi mano, la distancia es un valor continuo, por lo que hay una infinidad de valores entre la taza y mi mano. Ahora la idea central, yo al agarrar la taza, bajo esa misma idea de valores continuos, puedo acercarme con una precision infinitesima al mango de la taza, digase, entre mas se acerca mi mano a la taza, puedo acercarme infinitesimamente a la taza sin tocarla, hasta que eventualmente entro en contacto con ella. Puedo decir que antes de entrar en contacto con la taza, hubo una distancia infinitesimamente pequena entre el mango y mis dedos.

Esa es la idea intuitiva del limite, el poder acercarse infinitesimamente a un valor sin tener que tomar puntualmente dicho valor, por lo que observamos que ocurre alrededor de ese valor. 

Que ocurre cuando hacemos una division por 0? error matematico. pero que pasa cuando nos acercamos infinitesimamente a ese valor? 

![division-por-0.png](https://i.postimg.cc/28j38cwf/division-por-0.png)

Vemos que en la imagen de la funcion, cuando *x* **tiende** a 0, toma un valor infinito. Aqui entra ontro concepto importante, los **limites laterales**. Cuando *x -> 0* por izquierda, la funcion devuelve un valor infinitamente negativo, y cuando *x -> 0* por derecha, devuelve un infinito positivo. No evaluamos el valor puntual de *x*, solo observamos que ocurre cuando nos acercamos infinitesimamente a *x*.

Y a partir de esta idea intuitiva, podemos formalizar el concepto:

![limite-formal.png](https://i.postimg.cc/pVfqtT0Z/limite-formal.png)

# 5: Limites laterales
Sea *f(x)* una funcion definida en el intervalo *(a,b)* donde *a < b*. Si *f(x)* esta arbitrariamente cerca de *L* cuando *x* tiende a *a* desde dentro del intervalo, decimos que *L* es el **limite por derecha** de *f* en *a*. 

Decimos:
> el limite por derecha cuando *x* tiende a *a*, en *f(x)* es igual a *L*.

Sea *f(x)* una función definida en un intervalo *(c, a)* donde *c < a*. Si *f(x)* está arbitrariamente cerca de *M* cuando *x* tiende a a desde dentro del intervalo, decimos que *M* es el **limite por izquierda** de *f* en *a*.

Decimos:
> el limite por izquierda cuando *x* tiende a *a*, en *f(x)* es igual a *M*

Los limites laterales nos sirven para determinar si hay un limite bilateral, digase, si existe un limite en primera instancia. Aqui es donde consideramos cuestiones de **continuidad**, ya que en una funcion, comunmente en funciones por tramos, suelen haber saltos en la funcion, por lo que podemos tener saltos finitos (algunos arreglables al redefinir la funcion) o saltos infinitos (asintotas). 

![limites-laterales.png](https://i.postimg.cc/Gh4srgK8/limites-laterales.png)

Y por ultimo, una funcion tiene un limite bilateral, digase, tiene un limite, si los limites laterales por izquierda y derecha coinciden a un mismo valor, el cual debera coincidir con la imagen del valor puntual evaluado.

# 6: Infinidad en limites
Y a partir de este punto empezamos a jugar con **infinitos**. Primero tenemos que aclarar que el **infinito** es un valor indeterminado, que no toma un valor puntual. Cuando hablamos de infinito, pensemos en un crecimiento o decrecimiento descomunal, no en un solo numero. Es por eso que una indeterminacion de division por 0, llega a tener un crecimiento y decrecimiento infinitos analizando a izquierda y derecha; de ahi surge una asintota.

![limites-laterales-formalizado.png](https://i.postimg.cc/tRw6hvxF/limites-laterales-formalizado.png)

La idea clave es que para cualquier valor que tome *M*, siempre habra una imagen entre *a* y *x* que sea mayor o menor que *M*, por lo que intuitivamente podemos caracterizar el crecimiento infinito de la funcion cuando *x* tiende a *a*, ya sea por izquierda o derecha.

Tambien es frecuente el escenario en el que queremos estudiar que ocurre cuando *x* tiende al infinito en *f(x)*, a esto lo llamamos un **limite al infinito**.

![limites-al-infinito.png](https://i.postimg.cc/ncbh8xFK/limites-al-infinito.png)

Y por ultimo, tambien es posible un **limite infinito en el infinito**, al que podemos visualizar intuitivamente como un crecimiento sin limitaciones, por lo que cuando *x* tiende a *infinito* en *f(x)*, *f(x)* tambien va a tender a *infinito*.

# 7: Propiedades de los limites
Ya entrando un poco mas en cuestiones practicas, tenemos las siguientes propiedades fundamentales al operar con limites:

![propiedades-de-los-limites.png](https://i.postimg.cc/43ShV0zv/propiedades-de-los-limites.png)

> La demostracion de estas propiedades requiere de **demostraciones epsilon - delta**, que regresan a la definicion formal del limite. Eso va mas alla de la intencion de este estudio, ya que lo damos por hecho.

Tambien hay que aclarar que si no se presenta una indeterminacion al remplazar el valor inmediato de *x*, entonces el limite tiene una solucion trivial.

# 8: Teorema del emparedado
Esto es intuitivo y nos da una herramienta util a la hora de trabajar con algunas expresiones trigonometricas:

![teorema-del-emparedado.png](https://i.postimg.cc/h41M79Cw/teorema-del-emparedado.png)

Y eso fundamenta la siguiente identidad, que es bastante recurrente:

![aplicacion-teorema-del-emparedado.png](https://i.postimg.cc/xd91qVcn/aplicacion-teorema-del-emparedado.png)

# 9: Indeterminaciones
Aqui nos es relevante tener un algebra decente para poder enfrentarnos a las **indeterminaciones** que pueden surgir al operar con infinitos. Con **resolver una indeterminacion** nos referimos a arreglar la expresion, usualmente mediante el uso de **artificios matematicos** para que al resolver el limite inmediato, este no resulte en una indeterminacion y nos de un valor final.

Tenemos las siguientes indeterminaciones posibles:

![Indeterminaciones.png](https://i.postimg.cc/TYHspV1M/Indeterminaciones.png)

Cada una de ellas tiene un metodo distinto para intentar salvar dicha indeterminacion, a continuacion algunos desarrollos practicos de cada tipo:

![Indeterminaciones-0-0.png](https://i.postimg.cc/TYtCGZYD/Indeterminaciones-0-0.png)

En este tipo de indeterminaciones buscamos factorizar polinomios para poder simplificar y arreglar el problema con el denominador.

Tambien es comun el siguiente escenario:

![Indeterminaciones-0-0-complemento.png](https://i.postimg.cc/Ls1cJHnv/Indeterminaciones-0-0-complemento.png)

Donde utilizamos un **artificio matematico** para multiplicar por *1*, lo cual no afecta a la expresion; multiplicamos y dividimos por el conjugado del numerador, por lo que llegamos a una [diferenca de cuadrados](https://es.wikipedia.org/wiki/Diferencia_de_dos_cuadrados).

![Indeterminaciones-inf-inf.png](https://i.postimg.cc/TwCXrTXY/Indeterminaciones-inf-inf.png)

Se puede observar que el grado del numerador y del denominador son los factores de mayor relevancia en este tipo de indeterminaciones, ya que a simple vista podemos ver, dependiendo de si es una fraccion propia o impropia, el resultado que dara el limite.

![Indeterminaciones-0-x-inf.png](https://i.postimg.cc/P5g6F9M3/Indeterminaciones-0-x-inf.png)

La idea es reescribir el producto a una division, por lo que tenemos una expresion mas facil de manejar, o a lo sumo, otra indeterminacion distinta.

![Indeterminaciones-inf-inf.png](https://i.postimg.cc/RFBM1vbx/Indeterminaciones-inf-inf.png)

Factorizamos, convertimos en un producto y pasa a tener una solucion trivial.

![Indeterminaciones-exponente-0.png](https://i.postimg.cc/sgVrnn3K/Indeterminaciones-exponente-0.png)

Resolvemos utilizando propiedades del logaritmo natural, por lo que nos queda euler elevado a un limite.

![Indeterminaciones-exponente-inf-a-1.png](https://i.postimg.cc/BngYYm2F/Indeterminaciones-exponente-inf-a-1.png)

Usamos bastante juego con propiedades de exponentes y resolvemos de forma trivial siguiendo la forma. Note la constante presencia de euler...

# 10: Continuidad
Como tema de cierre, nos interesa analizar si una funcion es continua, pero que significa que una funcion sea continua? de manera informal y poco rigurosa podemos decir:

> Una funcion continua es aquella que podemos dibujar sin levantar el lapiz de la hoja

Y esto es correcto, pero nos es mas nutritivo entenderlo a profundidad;

![criterio-de-continuidad.png](https://i.postimg.cc/MGYSY0pf/criterio-de-continuidad.png)

Esto, explicado brevemente, nos ayuda a saber si un valor puntual es continuo dentro de la funcion.
1. La imagen existe en ese punto.
2. Cuando la funcion tiende a ese punto, existe un limite (bilateral).
3. La imagen y el limite coinciden en ese punto.

# 11: Discontinuidades de funciones
Cuando hablamos de discontinuidades nos referimos principalmente a tres tipos:
1. Discontinuidad evitable.
2. Discontinuidad inevitable - salto finito.
3. Discontinuidad inevitable - salto infinito.

![discontinuidades.png](https://i.postimg.cc/Qdh269K1/discontinuidades.png)

Y a este punto debio haber surgido esta duda, nosotros estamos probando que la funcion es continua en un valor puntual, pero como analizamos mas alla de solo un punto?

# 12: Propiedades de continuidad
Las siguientes propiedades nos sirven para probar la continuidad de mas alla de un solo punto en la funcion:
**si las funciones *f* y *g* son continuas en *x = c*, entonces las siguientes funciones son continuas en:**
1. *f* + *g* y *f* - *g*
2. *fg*
3. *kf*, donde *k* es cualquier numero real.
4. *f/g*, si *g(c) != 0*
5. *(f(c))^(m/n)*, si *f(x)* esta en un intervalo que contenga a *c*, y *m* y *n* son enteros.

Y ademas, para funciones **polinomicas** y **racionales**:
> Todo polinomio es continuo en cualquier punto de la recta real. Toda funcion racional es continua en cualquier punto de la recta real, siempre y cuando el denominador sea distinto de cero.
