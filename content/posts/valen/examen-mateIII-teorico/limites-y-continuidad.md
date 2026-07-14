+++
date = '2026-07-13T18:11:20-03:00'
draft = true
title = 'Limites Y Continuidad'
author = 'Valen'
keywords = ["calculo", "limites", "continuidad"]
category = ["Math"]
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
