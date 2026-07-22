+++
date = '2026-07-16T11:09:32-03:00'
draft = false
title = 'Derivadas'
author = 'Valen'
keywords = ["calculo", "derivadas", "calculo diferencial"]
categories = ["Matematica"]
toc = true
tocBorder = true
+++

Basandonos en la teoria dada en [limites y continuidad](limites-y-continuidad), podemos dar el primer paso a lo que es el [calculo diferencial](https://es.wikipedia.org/wiki/C%C3%A1lculo_diferencial). El calculo diferencial, a grandes razgos, consiste en el analisis del cambio en una funcion. Una funcion puede incrementar, decrementar, o no tener un valor "muerto" donde su **pendiente** es cero.

Se trata bastante con el concepto de [pendiente](https://es.wikipedia.org/wiki/Pendiente_(matem%C3%A1tica)), digase, el angulo de la [tangente](https://es.wikipedia.org/wiki/Tangente_(trigonometr%C3%ADa)), ya que ese sera nuestro indicador para indicar el estado de un valor puntual de la funcion.

# 1: Introduccion a la derivada
La [recta secante](https://es.wikipedia.org/wiki/Recta_secante) es la recta que pasa por dos puntos diferentes de una curva, para nuestro interes una funcion. La derivada representa una tasa de cambio en funcion de las variables de la funcion. Las derivadas pueden ser utilizadas para el estudio de funciones; podemos estudiar una funcion sin siquiera tener que graficarla.

![definicion-derivada.png](https://i.postimg.cc/PqhFPZH3/definicion-derivada.png)

Y la idea general de toda la definicion es que partimos de una secante y su pendiente. Cuando nosotros establecemos un punto fijo y acercamos el otro punto a ese valor (mediante un limite), obtenemos una tangente. 

Utilizando la misma idea que con la pendiente de la secante, podemos intuir la pendiente de la tangente, que no es nada mas que la [funcion derivada](https://es.wikipedia.org/wiki/Derivada). 

Por ultimo para simplificar la notacion, hacemos un reemplazo de *xsub0 - x* con *h*, hacemos las sustituciones necesarias, y tenemos una definicion mucho mas prolija para la funcion derivada.

Algunas notaciones usuales:

![notaciones-usuales.png](https://i.postimg.cc/289ZqfDS/notaciones-usuales.png)

Por ahora no es necesario complicarnos con la notacion, por lo que por simplicidad utilizaremos *y'* para referirnos a una derivada primera, *y''*, *y'''*, derivada segunda y tercera respectivamente. Mas adelante sera de mayor utilidad utilizar la [notacion de Leibniz](https://es.wikipedia.org/wiki/Notaci%C3%B3n_para_la_diferenciaci%C3%B3n) (df/dx) cuando estemos trabajando con integrales y ecuaciones diferenciales.

Ejemplo practico de derivada por definicion:

![derivada-por-definicion.png](https://i.postimg.cc/PJpBmwxm/derivada-por-definicion.png)

# 2: Funcion derivada
Ahora hagamos un poco mas de enfasis en la derivada como una funcion, nosotros podemos abstraer el significado geometrico de la derivada para verlo como una funcion que admite una entrada y una salida.

![funcion-derivada.png](https://i.postimg.cc/fLfRd1VN/funcion-derivada.png)

# 3: Derivada y continuidad
> Teorema: Si una funcion es derivable, entonces es continua. (No es reciproco)

![criterio-de-continuidad.png](https://i.postimg.cc/sgYb9WYS/criterio-de-continuidad.png)

Y si bien algo al ser derivable es continuo, esto no implica que el que sea continuo deba ser derivable. Para comprobar esto tenemos que aclarar que para que un valor sea derivable, este debe ser derivable a izquierda y derecha, por lo que es bilateral (como vimos en teoria de limites).

A continuacion un ejemplo de esto:

![no-reciproco.png](https://i.postimg.cc/nrDrz2y9/no-reciproco.png)

Como se aprecia en este ejemplo, si bien por criterio de continuidad, la funcion en ese valor puntual es continua, eso no implica que sea derivable, ya que las derivadas laterales no coinciden en una derivada bilateral. Tambien me parece elegante volver a la definicion de limite salida de la definicion de pendiente de secante para poder analizar la funcion derivada por izquierda y derecha.

# 4: Reglas de derivacion
Y a partir de este punto, podemos abstraer la definicion de derivada para utilizar reglas de derivacion; nuestro primer acercamiento real a lo que es el calculo "practico", ya que no demostramos por definicion cada escenario trivial que nos encontramos. Aqui es donde se populariza el uso de [tablas de derivacion](https://es.wikipedia.org/wiki/Anexo:Derivadas).

Entre las reglas fundamentales, tenemos:

![reglas-fundamentales.png](https://i.postimg.cc/qM7CVfMt/reglas-fundamentales.png)

Cabe aclarar que deben ser derivables en primera instancia. A continuacion, las demostraciones del producto y el cociente:

Para el producto:
![demostracion-producto.png](https://i.postimg.cc/HkfPXQsv/demostracion-producto.png)

Y para el cociente:
![demostracion-cociente.png](https://i.postimg.cc/TYxms0tp/demostracion-cociente.png)

El resto voy a dejarlas obviadas, porque de lo contrario consumire demasiado tiempo en cosas triviales.

# 5: Regla de la cadena
Es frecuente el escenario donde tenemos que derivar [funciones compuestas](https://es.wikipedia.org/wiki/Funci%C3%B3n_compuesta), que consisten en pasar como parametro de una funcion, a otra funcion.
Digase:

> (f o g)(x) = f(g(x))

Y la cuestion es, como derivamos esto? De forma intuitiva, vamos resolviendo la derivada en orden de prioridad de cada funcion y multiplicamos con la siguiente en la cadena, vista de una forma mas simple

> [f(g(x))]' = f'(g(x)) . g'(x)

Y demostrando esta regla:

![demostracion-regla-cadena.png](https://i.postimg.cc/xCf5sZSq/demostracion-regla-cadena.png)

Y un ejemplo practico:

![ejemplo-regla-cadena.png](https://i.postimg.cc/66GcMnkL/ejemplo-regla-cadena.png)

Fuera de eso, se puede desarrollar de forma practica la demostracion de otras reglas de derivacion, pero son triviales para el enfoque de este estudio; refierase a la tabla de derivadas de la seccion anterior. [Aunque como practica previa a examen, posiblemente edite este post y agregue algunas demostraciones adicionales al final de la publicacion.]

# 6: Derivacion de funciones implicitas
Hasta ahora hemos visto derivacion de funciones en su forma explicita, digase en la forma:

> f(x) = ax+b, por decir algo.

Ahora vamos a trabajar con su forma [implicita](https://es.wikipedia.org/wiki/Funci%C3%B3n_impl%C3%ADcita), donde trataremos la funcion en el formato:

> y = ax + b, siguiendo el ejemplo anterior.

Donde *y* es funcion de *x*. Esta forma de representar funciones nos sera util mas adelante cuanto tengamos que ver **ecuaciones diferenciales**, ya que podemos resolver ecuaciones siguiendo esta forma.

Para derivar una funcion implicita, se tienen que aplicar las reglas de derivacion previamente vistas, a este punto empezamos a obviar la definicion formal para centrarnos en algebra y reglas de derivacion.

Algunos ejemplos de derivacion implicita:

![derivadas-implicitas.png](https://i.postimg.cc/fymcj3z8/derivadas-implicitas.png)

# 7: Derivaciones de funciones inversas
No deberia ser intimidante el derivar [funciones inversas](https://es.wikipedia.org/wiki/Funci%C3%B3n_inversa), ya que una funcion inversa no deja de ser una funcion, por lo que el procedimiento de derivacion es el mismo. La distincion con los temas anteriores que podria sumar un poco de dificultad es el tener que encontrar la inversa de la funcion antes de derivar, para lo cual hacemos lo siguiente:

![derivadas-inversas.png](https://i.postimg.cc/HkxtFkBL/derivadas-inversas.png)

Simplemente buscamos la inversa y derivamos dicha funcion. Lo unico relevante, y que debemos de tener en mente, es que la funcion original **admita una funcion inversa**, digase, que la funcion es [biyectiva](https://es.wikipedia.org/wiki/Funci%C3%B3n_biyectiva), y obviamente ademas tiene que ser derivable en primera instancia.

---
# Extra: Algunas demostraciones adicionales 
> Con el tiempo ire agregando ejemplos en este apartado
