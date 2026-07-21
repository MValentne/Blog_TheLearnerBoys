+++
date = '2026-07-18T20:24:04-03:00'
draft = true
title = 'Aplicaciones Derivadas'
author = 'Valen'
keywords = ["calculo", "derivadas", "calculo diferencial"]
categories = ["Matematica"]
toc = true
tocBorder = true
+++

Vimos anteriormente que es una derivada, ahora veremos para que sirve. La idea intuitiva de derivada es que en un punto dado de una funcion, habra una tangente (si es que el punto en cuestion es derivable), la pendiente de dicha tangente nos indicara el crecimiento o decrecimiento de la funcion en ese punto; esto tiene un gran peso, ya que con solo saber el valor de la derivada, podemos saber en que puntos la derivada crece, decrece o inclusive, donde hay un punto de inflexion en la funcion, cuestiones complicadas de analizar a simple vista en una grafica, por lo que nos da mucha mas profundidad a la hora de **analizar funciones** (hablaremos mas de esto despues).

# 1: Razon de cambio
Empezamos hablando sobre la razon de cambio, que a grandes razgos es una relacion entre el incremento en f(x) y el incremento en x.

![razon-de-cambio.png](https://i.postimg.cc/jqDQfXS2/razon-de-cambio.png)

Y de aqui nace la idea de la derivada como la razon de cambio para un valor puntual, indicada por la inclincacion de la pendiente de la tangente de la funcion en ese punto.

# 2: Diferencial
Primero que todo, hago una introduccion al tema citando a un canal al que le tengo bastante apego.

{{<youtube T3w5WFDdPC8>}}

Entonces podemos conceptualizar un diferencial como una **aproximacion** del cambio de una funcion usando la recta tangente en vez de la curva real de la funcion. Entonces tenemos la siguiente interpretacion:

![introduccion-a-la-diferencial.png](https://i.postimg.cc/cJZPvkqX/introduccion-a-la-diferencial.png)

> Es importante destacar que la pendiente de la recta tangente se representa con *dy*/*dx*

Entonces podemos usar la diferencial de la funcion para predecir el comportamiento de la funcion con un incremento de acuerdo a la pendiente del valor puntual que se toma. En el ejemplo, la imagen de la funcion se aleja de la recta tangente entre mayor es el incremento.

![diferencial.png](https://i.postimg.cc/FFp0GM3s/diferencial.png)

La *diferencial* de una funcion es el producto de su derivada por la diferencial de la variable independiente (*dx*).

![diferencial-intuitiva.png](https://i.postimg.cc/rwHf5htH/diferencial-intuitiva.png)

Se tiene que tener en cuenta que *dy* es dependiente de *dx* en el contexto local de la operacion, ya que no podemos tratar con esos mismos valores en otro contexto ajeno a su relacion.

# 3: Teorema de Rolle
Considero que el [Teorema de Rolle](https://es.wikipedia.org/wiki/Teorema_de_Rolle) es algo conceptualmente intuitivo, y da base al analisis de funciones mediante uso de la derivada como herramienta.

![Rolle.png](https://i.postimg.cc/mDgt3G1z/Rolle.png)

Lo que dice el Teorema de Rolle es que si tenemos dos puntos cualesquiera en la imagen donde se cumple que *f(a) = f(b)* (digase que estan "al mismo nivel"), entonces habra un punto en dicho intervalo donde la derivada (la pendiente de la recta tangente respecto a un punto) sera igual a 0, por lo que en ese valor puntual no habra crecimiento ni decrecimiento. 

Si en un punto no hay crecimiento ni decrecimiento, digase, que *f'(x) = 0*, entonces a este se le llama **punto critico**, y un candidato a **maximo** o **minimo**, ya sea **local** o **global**.

> Un [punto critico](https://es.wikipedia.org/wiki/Punto_cr%C3%ADtico_(matem%C3%A1tica)) puede darse si bien la funcion no es diferenciable en ese punto o si *f'(x) = 0*, donde se llega a un **punto estacionario** de la funcion.

Igual hablaremos mas a detalle sobre puntos criticos, maximos y minimos cuando entremos mas a fondo en analisis de funciones, por ahora la idea de Rolle es el tener un punto estacionario dado que tenemos dos puntos en la curvatura que tienen la misma imagen.

# 4: Teoremas del valor medio y de Cauchy
Empezando por el [Teorema del valor medio](https://es.wikipedia.org/wiki/Teorema_del_valor_medio), este sigue una idea similar a Rolle, pero ampliado mas alla de buscar un punto estacionario; en Rolle buscamos un punto en el que la pendiente sea paralela al eje x con una pendiente 0 en su recta tangente. 

En el Teorema del valor medio buscamos algo similar, tendremos **dos puntos en la funcion**, por lo que comprendemos una **secante** que corta en esos dos puntos. El teorema dice que habra algun punto intermedio en el que la recta tangente sea paralela a dicha secante.

![Lagrange.png](https://i.postimg.cc/DyZtXffn/Lagrange.png)

[Cauchy](https://es.wikipedia.org/wiki/Teorema_del_valor_medio_de_Cauchy) es una generalizacion del Teorema del valor medio que vimos anteriormente, este establece la base para la regla de L'Hopital, una herramienta muy pesada para simplificar el operar con limites.

![Cauchy.png](https://i.postimg.cc/4xDfPLBc/Cauchy.png)

Conceptualmente sigue la misma idea que el Teorema de Lagrange, pero introduce esta identidad interesante que nos sirve bastante.

{{<youtube 4-XN0Pilhcw>}}

Por ultimo, una ecuacion utilizando cauchy:

![Ejercicio-Cauchy.png](https://i.postimg.cc/65328P8n/Ejercicio-Cauchy.png)

# 5: Regla de L'Hopital y algunos limites interesantes
Con [la regla de L'Hopital](https://es.wikipedia.org/wiki/Regla_de_l%27H%C3%B4pital) podemos salvar algunas indeterminaciones de una forma mucho mas trivial de lo que habiamos visto anteriormente, e incluso llega a ser una ruta alternativa frente a limites que antes veiamos como imposibles de salvar!

Se fundamenta fuertemente en el Teorema del valor medio de Cauchy, y se define de la siguiente manera:

![Lhopital.png](https://i.postimg.cc/rmMKCV9P/Lhopital.png)

Por lo que para escenarios de *0/0* o *+-inf/+-inf*, podemos solucionar de forma trivial utilizando derivadas y L'Hopital. Y ademas se pueden presentar situaciones bellas en las que podemos reescribir una expresion para causar un escenario con solucion posible mediante L'Hopital, es una herramienta muy versatil.

A continuacion, el desarrollo de algunos limites mediante L'Hopital:

![Lhopital-ejercicios.png](https://i.postimg.cc/66yFBDn9/Lhopital-ejercicios.png)

# 6: Derivadas sucesivas
Ya entrando en analisis de funciones, nosotros podemos usar como herramienta la derivada; de tal forma en la que podemos estudiar una funcion y valores puntuales relevantes de esta sin tener que recurrir a una grafica o software para tener precision.

La herramienta principal que utilizaremos seran las derivadas primera, segunda y tercera. Con estas derivadas nos referimos a literalmente derivar multiples veces consecutivas para conseguir diferentes significados en cada una de ellas.

![derivadas-sucesivas.png](https://i.postimg.cc/76xDBXWb/derivadas-sucesivas.png)

la primera derivada nos da la pendiente de la recta tangente de ese punto, la segunda derivada nos indica concavidad y la tercera nos puede ayudar a encontrar puntos de inflexion (cambio de concavidad).

# 7: Analisis de funciones y sus herramientas
La idea de estudiar una funcion con derivadas, es que podemos encontrar valores puntuales de la funcion que sean relevantes para entender el comportamiento de esta. Puede llegar a ser complicado a simple vista indicar en que valor puntual de *x* se genera un cambio de concavidad en *f(x)*, por lo que es mucho mas intuitivo usar las herramientas que hemos desarrollado hasta este punto (limites y derivadas) para poder estudiar este comportamiento de una funcion *f(x)*.

![figura-para-analisis-de-funcion.png](https://i.postimg.cc/xCswN1Cj/figura-para-analisis-de-funcion.png)

## Puntos criticos
Me atrevo a empezar este tema hablando de **puntos criticos** (los mencionamos anteriormente cuando hablamos de Rolle), que nos van a simplificar el trabajo al **dividir la funcion en intervalos** separados por puntos de interes; estas divisiones seran marcadas por puntos criticos en la funcion, por lo que podremos tomar trozos distintos y determinar su crecimiento o decrecimiento, y concavidad.

![punto-critico.png](https://i.postimg.cc/SsgC8wCv/punto-critico.png)

Ya que dividimos en intervalos, podemos analizar cada intervalo por separado, modulando el estudio de la funcion.

## Extremos relativos
Empecemos hablando sobre crecimiento y decrecimiento.
> Supongamos un intervalo centrado en *a* y cualquier valor x dentro de ese intervalo. Si *x < a*, entonces *f(x) < f(a)* y decimos que el intervalo es **creciente**. En cambio, si *x<a* y *f(x) > f(a)*, entonces estamos hablando de un intervalo **decreciente**.

Ademas, podemos verlo tambien de forma intuitiva mediante el uso de la derivada primera, ya que al ser la pendiente de la recta tangente, y al haber separado la funcion previamente en intervalos separados por puntos criticos, entonces **basta con probar para un valor del intervalo**, ver si la pendiente para ese punto es positiva o negativa, y con base a eso puedes tomar conclusiones sobre todo el intervalo, ya que solo habra un cambio en el signo de la pendiente a partir del punto critico, y nosotros ya conocemos donde se encuentran estos puntos.

Entonces como extremos relativos nos referimos a un valor maximo o minimo dependiendo de la informacion del **entorno del punto critico en cuestion**, ya que si por izquierda es creciente y por derecha decreciente, entonces hablamos de un **valor maximo relativo**, y si por izquierda es decreciente y por derecha creciente, es un **valor minimo relativo**. Esta informacion la podremos conseguir a partir del estudio previamente mencionado en los intervalos.

Ejemplifiquemos:

![extremos-relativos.png](https://i.postimg.cc/fyBCz8w3/extremos-relativos.png)

Ademas, tambien hay forma de plantear maximos y minimos a partir de la derivada segunda, ya que nos da informacion sobre la concavidad en ese punto (mas de esto en el apartado que viene).

## Concavidad
Como mencionamos anteriormente, podemos usar la derivada segunda para saber si un punto critico sera un extremo relativo maximo o minimo, pero tambien **nos da informacion sobre la concavidad de dicho valor puntual**. Si la derivada segunda nos da un valor positivo, hablamos de una concavidad hacia arriba (un minimo), y si nos da un valor negativo, hablamos de una concavidad hacia abajo (un maximo).

![concavidad.png](https://i.postimg.cc/QxxGSYV8/concavidad.png)

Por lo que de forma simplificada podemos determinar si hay un maximo o minimo. Ahora, si la derivada segunda nos da *f''(x) = 0*, tenemos un **candidato a punto de inflexion**, que probaremos con la derivada tercera o analizando su entorno.

## Puntos de inflexion

---

# Extra: Algunas funciones analizadas
> Con el tiempo ire agregando ejemplos en este apartado
