+++
date = '2026-07-26T14:10:53-03:00'
draft = false
title = 'Ecuaciones Diferenciales'
author = 'Valen'
keywords = ["calculo", "algebra"]
categories = ["Matematica"]
toc = true
tocBorder = true
+++

Esta es la ultima unidad contenido de examen, por delante quedan algunos otros temas que seran vistos por interes propio; el enfoque de estudio principal llega hasta este capitulo (inclusivo).

Las ecuaciones diferenciales toman concepto de la derivada y la integral para resolver, mediante algebra, ecuaciones en las que no encontramos el valor de una variable, sino que una funcion en concreto. A lo largo del post referenciare el siguiente video, que me parece bastante completo:

{{<youtube MdKOjS8-oNw>}}

El estudio de las ecuaciones diferenciales se extiende mas alla de lo que se puede dar en un curso cuatrimestral centrado en analisis matematico, ya que es una area de estudio por si sola. Nosotros nos centraremos en algunos aspectos tirando a practicos para entender conceptualmente que es una ecuacion diferencial.

# 1: Introduccion a las ecuaciones diferenciales
Una ecuacion diferencial no toma como incognita un valor, sino que una funcion. Se llaman ecuaciones diferenciales debido a que no incluyen solamente el valor de la funcion incognita, sino que tambien a la derivada de esta funcion.

Existen muchos tipos de ecuaciones diferenciales, ya que es un campo grande y no hay una solucion generica para cada tipo, digase, cada uno usa una metodologia distinta.

> De ahora en adelante nos conviene utilizar *y* en vez de *f(x)* para facilitar la notacion.

![en-que-consiste-una-ecuacion-diferencial.png](https://i.postimg.cc/FsnWZgcG/en-que-consiste-una-ecuacion-diferencial.png)

Entonces podriamos tener algo como esto:

![definicion-de-ED.png](https://i.postimg.cc/xTh246d9/definicion-de-ED.png)

Entonces, en pocas palabras decimos que una ED es una ecuacion con al menos una derivada para la variable dependiente con respecto a por lo menos una variable independiente.

Estas ecuaciones se pueden clasificar mediante tres metricas:
1. Tipo
2. Grado / Orden
3. Linealidad

# 2: Clasificacion por tipo
A aquellas que llamamos [EDOs](https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_diferencial_ordinaria) (Ecuaciones Diferenciales Ordinarias), cuentan con:
* Una sola variable independiente
* Y una o mas derivadas respecto de tal variable.
* Contiene solo derivadas ordinarias

![Ejemplo-de-EDO.png](https://i.postimg.cc/HnWyFpBW/Ejemplo-de-EDO.png)

> Y nos estaremos centrando principalmente en las EDOs, por lo que no nos son tan relevantes las EDPs para este estudio.

A aquellas que llamamos [EDPs](https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_en_derivadas_parciales) (Ecuaciones Diferenciales Parciales), cuentan con:
* Contiene derivadas parciales de **una o mas** variables dependientes
* Sus variables son dependientes de **dos o mas** variables independientes.

![Ejemplo-de-EDP.png](https://i.postimg.cc/sDhjykqz/Ejemplo-de-EDP.png)

# 3: Breve explicacion de la notacion de Leibniz
A lo largo de esta unidad estaremos usando mucho la notacion de Leibniz, por lo que es importante hacer aclaraciones sobre esta:

![Tipos-de-notaciones.png](https://i.postimg.cc/bNDxPvqm/Tipos-de-notaciones.png)

Por lo que nos resulta util jugar con la identidad de *y' = dy/dx* para informalmente jugar algebraicamente con los diferenciales.

# 4: Clasificacion por orden
El **orden** de una ED (ya sea EDO o EDP), es el valor mayor *n* en una derivada, digase, el valor maximo de *n* en una expresion *y^n*.

El **grado** grado de una ED, es el **grado algebraico** de la derivada de mayor orden.

![EDO-2ndo-orden.png](https://i.postimg.cc/8CRnw5qb/EDO-2ndo-orden.png)

Para pensar en el orden de una ED, es tan simple como ver el grado de la derivada, digase: *y', y'', y''', y^n, ...*

A veces se muestran las EDOs en **forma diferencial**, donde simplemente es igualar a 0 y agrupar en sus diferenciales correspondientes.

![EDO-forma-diferencial.png](https://i.postimg.cc/PxrzMtGm/EDO-forma-diferencial.png)

Tambien tenemos las formas **general** y **normal** de orden *n* de una EDO:

![EDO-forma-general-y-normal.png](https://i.postimg.cc/MTqxPFt7/EDO-forma-general-y-normal.png)

Que son formas comunes que usamos todo el tiempo, y notese la relacion entre ambas (en los ejemplos usamos la misma funcion y es un despeje simple la diferencia).

Ejemplos de determinacion de grado y orden:

![EDO-orden-y-grado.png](https://i.postimg.cc/MH9X7QkL/EDO-orden-y-grado.png)


# 5: Clasificacion por linealidad
Para que una EDO sea lineal, debe cumplir con lo siguiente:
1. Que todas sus derivadas (*y',y'',y''', ... y^n*) esten elevadas exclusivamente a la potencia 1.
2. No hay productos entre *y* y sus derivadas, ni entre derivadas de distinto orden.
3. No hay funciones [no lineales](https://www.ck12.org/flexi/es/grado-8/resolver-sistemas-lineales-mediante-graficas/cual-es-un-ejemplo-de-una-funcion-no-lineal/) que dependan de *y* (si dependen de x, esta bien).
4. Los coeficientes *a[i]* pueden depender de *x* libremente. (no rompe linealidad)

Si se incumple con cualquiera de esas reglas, clasificamos como EDO no lineal. Se dan de la siguiente forma:

![EDO-linealidad.png](https://i.postimg.cc/SQz7fQjH/EDO-linealidad.png)

Y algunas categorizaciones mas con base a linealidad:

![EDO-linealidad-ejemplos.png](https://i.postimg.cc/CMCvyHpQ/EDO-linealidad-ejemplos.png)

# 6: Solucion formal de una EDO
La solucion de una EDO es una funcion que al reemplazar su valor en la funcion da una solucion. Hay distintos tipos de soluciones. 

Una EDO puede tener:
* Infinitas soluciones
* Una unica solucion
* Ninguna solucion

Vuelvo a usar esta imagen para aclarar la ultima etapa.

![en-que-consiste-una-ecuacion-diferencial.png](https://i.postimg.cc/FsnWZgcG/en-que-consiste-una-ecuacion-diferencial.png)

Nosotros podemos buscar la solucion de la EDO **como se nos ocurra**, inclusive mediante fuerza bruta, aunque no es tan inteligente ni metodico, ya que sigue siendo solucion. Lo relevante es poder probar que la solucion a la que llegamos es realmente la solucion. 

Por ejemplo, demostremos esta solucion a la ecuacion dada:

![EDO-comprobacion-de-solucion.png](https://i.postimg.cc/Lsnyrnzc/EDO-comprobacion-de-solucion.png)

Otro ejemplo en el que no se verifica:

![EDO-comprobacion-de-solucion-2.png](https://i.postimg.cc/mgbZNGQH/EDO-comprobacion-de-solucion-2.png)

Y ahora hagamoslo a la inversa, tenemos una funcion y queremos encontrar una ecuacion diferencial que la satisfaga:

![EDO-creacion-de-la-ecuacion.png](https://i.postimg.cc/Hk8GMYxz/EDO-creacion-de-la-ecuacion.png)

Y a continuacion, nosotros tenemos distintas posibles soluciones a una EDO:

## Solucion explicita
La variable dependiente esta expresada solamente en terminos de variables independientes y constantes.
> *y* esta despejada sola y solo sale de un lado de la ecuacion. Del otro lado hay constantes e independientes. *y = f(x)*, donde *f(x)* no contiene *y* en ningun lado.

![EDO-solucion-explicita.png](https://i.postimg.cc/CL30mBWw/EDO-solucion-explicita.png)


## Solucion implicita
Siguen una forma *G(x, y, C) = 0*, por lo que la variable dependiente y la independiente estan *enredadas* en la expresion.
> Expresada de tal forma en la que *y* no esta despejada sola.

![EDO-solucion-implicita.png](https://i.postimg.cc/LsTwjnzx/EDO-solucion-implicita.png)

## Familias de soluciones, solucion particular y solucion singular.
Englobo estos tres titulos en uno solo debido a su interesante relacion. Cuando hablamos de **familias de soluciones**, nosotros ya debemos estar acostumbrados a pensar en una forma generica incluyendo una constante *C*, tal que *C* es un valor cualquiera, por lo que la solucion dada en algo que incluya a tal *C* engloba a una infinidad de posibles soluciones por cada valor puntual que tome *C*. 

Una **solucion particular** consiste en una sola de estas ramas posibles de la familia de soluciones. Estamos hablando de que *C*, al tomar un valor en concreto, no da un valor particular, por lo que solo nos referimos a ese valor de *C* que cumple con la identidad planteada para la ecuacion.

Y ahora, una **solucion singular** se refiere a aquella que **no tiene solucion** generable a partir de los valores de *C*. Satisface la ecuacion pero no mediante *C*. 

# 7: Problemas de valores iniciales (PVI)
Tambien llamados [Problemas de Cauchy](https://es.wikipedia.org/wiki/Problema_de_Cauchy), consisten en encontrar la solucion de una ED que ademas satisfaga condiciones iniciales en *y(x)* y en sus derivadas. Lo mismo que venimos haciendo, pero con informacion y restricciones adicionales sobre la solucion.

Un problema de Cauchy consiste en:
* Una EDO de orden *n*.
* Una o mas condiciones iniciales, todas evaluadas en el mismo punto.
* Deben haber tantas condiciones iniciales como *n* en el orden, por ende *n* condiciones.

Un ejemplo simple:

![EDO-problema-de-Cauchy.png](https://i.postimg.cc/V5QnzyY3/EDO-problema-de-Cauchy.png)

# 8: Resolucion de ecuaciones diferenciales
No existe un metodo general para resolver una ED, por lo que hablamos antes uno puede llegar a una solucion como quiera, siempre y cuando cumpla con la condicion de la ecuacion. Pero si existen **casos conocidos** con procedimientos para solucionarse. 

El **unico metodo** fiel que tenemos para resolver estas ecuaciones, es el poder **clasificar** la ED que queremos resolver para identificar de que tipo es. Si es un caso conocido, aplicamos el procedimiento correspondiente; si no es un caso conocido, podemos intentar forzarla a una forma de caso conocido.

## Separacion de variablese
Este es el metodo mas basico para EDOs de primer orden. 

> Si una EDO de primer orden puede escribirse en forma explícita Y ADEMÁS el lado derecho se puede factorizar como producto de una función de *x* por una función de *y*, entonces es separable y se puede resolver por ese método.

Se opera de la siguiente manera:
1. Se escribe de forma explicita
2. Se integran ambos lados
3. Se suma la constante de integracion en solo un lado
4. A este punto tendremos una solucion en forma implicita, pero podemos llevarla a explicita y mostrar el valor de *y*

Un ejemplo de este metodo:

![EDO-separable.png](https://i.postimg.cc/QttBxHgd/EDO-separable.png)

> Es clave recordar que podemos resolver de forma implicita con esta informacion: *y(4) = -3* implica que *x = -3* y que *y = 4*

Y en caso de que no podamos llegar a la condicion inicial planteada mediante alguna alteracion en *C*, estariamos frente a una **solucion singular**.

# 9: Ecuaciones lineales
Ya vimos que necesita cumplir una ecuacion para ser considerada una ED lineal. Ahora vamos a profundizar en su forma y solucion.

![EDO-lineal-ejemplo.png](https://i.postimg.cc/B6wZnpNH/EDO-lineal-ejemplo.png)

## Factor integrante
El metodo estandar para solucionar EDOs lineales de primer orden es mediante el [factor integrante](https://es.wikipedia.org/wiki/Factor_integrador), nos ayuda a convertir una ED **no exacta** a una ED **exacta**.

Este factor **servira siempre** que se cumpla esta forma.

![factor-integrante.png](https://i.postimg.cc/tgdHsjt7/factor-integrante.png)

Y esto aplicado a un escenario real: 

![factor-integrante-ejemplo.png](https://i.postimg.cc/5ynW9SJ9/factor-integrante-ejemplo.png)

No es lo mas elegante que pude haber hecho pero espero se entienda la intencion.
