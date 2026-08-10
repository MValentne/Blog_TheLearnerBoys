+++
date = '2026-08-09T14:01:28-03:00'
draft = false
title = 'Analisis De Frecuencias Con Chi Cuadrado'
author = 'Valen'
keywords = ["chi-cuadrado", "prueba de hipotesis", "inferencia"]
categories = ["Estadistica"]
toc = true
tocBorder = true
+++

# Introduccion
Entramos a la parte mas linda de la materia, la introduccion al [chi-cuadrado](https://es.wikipedia.org/wiki/Distribuci%C3%B3n_%CF%87%C2%B2) y sus usos practicos. A lo largo de este capitulo hablaremos de los metodos y los usos de la prueba de hipotesis basada en el chi-cuadrado.

Me fascina este tema y lo considero un punto climatico en toda la cursada de Estadistica; las pruebas con chi-cuadrado son muy flexibles, son faciles de modelar y son muy usadas en la practica.

El chi cuadrado nos permite dar respuesta a las siguientes preguntas bajo diferentes modelos:
1. Se puede probar si una poblacion sigue una distribucion de probabilidad dada? (Bondad de ajuste)
2. Existe evidencia para probar que dos variables son independientes? (Independencia)
3. Podemos probar que dos poblaciones son homogeneas o que tienen la misma proporcion segun algun criterio? (Homogeneidad)
4. Podemos probar la aleatoreidad de los resultados de una muestra? (Aleatoreidad)

Y la realidad es que la metodologia para la respuesta a todas estas preguntas se asemeja bastante.

# Distribucion chi-cuadrada
El **estadistico chi-cuadrado** es una medida de discrepancia, digase, mide cuan distantes son los datos observados de un modelo esperado. Todo nuestro recorrido con chi-cuadrado consiste en comparaciones entre datos observados y datos esperados, y podemos hacer magia al llevarlo a la practica. 

Si el valor de chi-cuadrado es grande, entonces hay una discrepancia entre lo observado y lo esperado, por lo que posiblemente lo observado no sigue el modelo esperado; y eso implica que entre mas pequeno sea el chi-cuadrado, mas compatible sera lo observado con lo esperado, o que efectivamente se adhiere al modelo esperado.

El estadistico de prueba chi-cuadrado se calcula a partir de la sumatoria de comparaciones entre observado y esperado, se denota de la siguiente manera:

$$\chi^2 = \sum_{i=1}^{k} \frac{(O_i - E_i)^2}{E_i}$$
$$O_i \equiv \text{valor observado}$$
$$E_i \equiv \text{valor esperado}$$
$$k \equiv \text{grados de libertad}$$

La distribucion de probabilidad de chi-cuadrado se ve de la siguiente forma:

![distribucion chi-cuadrado](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNtwvsYnHg803NeNKIx_cY28WtQrMQQoEbffCjsKpbS-tYUV_ul4Z37stG&s=10)

- Es asimetrica a la derecha pero cuando $n \geq 30$ se aproxima a una normal
- $\chi^2$ tiene un dominio que va desde $0$ al $\infty$
- Su moda es $k - 2$ siendo su media $k$ y varianza $2k$

Y sobre su uso, ya vimos algunos escenarios de uso, pero algunas especificaciones de estos son:

- **Bondad de ajuste**: Una variable, un grupo. (Mis datos encajan con un modelo?)
- **Independencia**: Dos variables, un grupo. (Estan relacionadas mis variables?)
- **Homogeneidad**: Una variable en comun por grupo, dos grupos. (La variable se distribuye igual en ambos grupos?)

# Bondad de ajuste con chi-cuadrado
Supongase que en una muestra se observa una serie de sucesos $E_1, E_2, E_3, ..., E_k$ de los cuales se extraen ciertas ocurrencias $o_1, o_2, o_3, ..., o_k$ y una suposicion de que estas ocurrencias sigan un resultado particular esperado $e_1, e_2, e_3, ..., e_k$. 

Buscamos saber si los valores observados $o$ se comportan de la misma forma que $e$, por lo que nos interesa saber si $o_k \approx e_k$.


$$\chi^2 = 0 \implies O_i = E_i \text{ (exacto)}$$

$$\chi^2 > 0 \implies O_i \neq E_i$$

$$\chi^2 \uparrow \implies \text{mayor discrepancia } O_i, E_i$$

$$E_i \geq 5 \implies \text{mejor aproximacion}$$

$$gl: k = C - 1 - m$$

$$C = \text{clasificaciones}$$

$$m = \text{parametros estimados}$$

## Robustez de la prueba
Puede ser que una prueba con chi-cuadrado no sea robusta, por lo que no podemos confiar del todo en su resultado. Para eso queremos asegurarnos de que la prueba lo sea; para ello usamos el siguiente criterio:

$$E_i \geq 1 \quad \text{(minimo absoluto)}$$

$$P(E_i \geq 5) \geq 0.80$$

$$P(1 \leq E_i < 5) \leq 0.20$$

$$gl = 1 \implies E_i \geq 5 \text{ (recomendado)}$$

Por lo que dicho en terminos simples, si a la hora de tabular no se cumple este criterio, decimos que la prueba no es robusta, y lo aclaramos para que no se tomen decisiones cruciales con base a estos resultados.

Ahora, en caso de que nuestra prueba no sea robusta, inentamos replantear la prueba de la siguiente forma:

1. Combinando categorias. Si es posible juntar elementos de la muestra sin afectar lo que estamos estudiando, abstraer de esta forma el problema nos puede dar mas robustez.
2. Pruebas exactas con software.
3. O simplemente indicamos que la prueba no es robusta y que se tenga precaucion con los resultados de esta, ya que no dictan informacion del todo confiable.

## Ejemplificamos con un dado

Supongamos que queremos saber si un dado de 6 caras es "justo" (equilibrado). Lo lanzamos 60 veces y anotamos cuántas veces sale cada cara.

Si el dado fuera perfectamente justo, esperaríamos que cada cara salga la misma cantidad de veces:

$$E_i = \frac{n}{k} = \frac{60}{6} = 10$$

Es decir, esperamos 10 apariciones para cada una de las 6 caras. Las frecuencias observadas $O_i$ son lo que realmente contamos al tirar el dado. Por lo que esperamos que el dado siga una distribucion de probabilidad uniforme (bastante simple e intuitivo)

Planteamos las hipótesis:

$$H_0: \text{el dado es justo (las proporciones son iguales)}$$

$$H_1: \text{el dado no es justo}$$

## Nivel de significancia y regla de decisión

Elegimos un nivel de significancia $\alpha$, generalmente:

$$\alpha = 0.05$$

Con esto y los grados de libertad calculamos el valor crítico $\chi^2_{\alpha, gl}$ en la tabla de chi-cuadrado.

Para nuestro ejemplo del dado, con $k=6$ categorías y sin estimar parámetros ($m=0$):

$$gl = k - 1 - m = 6 - 1 - 0 = 5$$

La regla de decisión es:

$$\chi^2_{calculado} > \chi^2_{\alpha, gl} \implies \text{se rechaza } H_0$$

$$\chi^2_{calculado} \leq \chi^2_{\alpha, gl} \implies \text{no se rechaza } H_0$$

## Calculo del estadistico

Con los datos observados y esperados armamos una tabla y aplicamos la fórmula:

$$\chi^2 = \sum_{i=1}^{k} \frac{(O_i - E_i)^2}{E_i}$$

| Cara | $O_i$ | $E_i$ | $(O_i - E_i)^2 / E_i$ |
|------|-------|-------|------------------------|
| 1    | 8     | 10    | 0.4                    |
| 2    | 12    | 10    | 0.4                    |
| 3    | 9     | 10    | 0.1                    |
| 4    | 11    | 10    | 0.1                    |
| 5    | 7     | 10    | 0.9                    |
| 6    | 13    | 10    | 0.9                    |

Sumando la última columna obtenemos el estadístico calculado:

$$\chi^2_{calculado} = 2.8$$

## Decision y conclusion

Comparamos el valor calculado contra el valor crítico de tabla. Para $gl=5$ y $\alpha=0.05$:

$$\chi^2_{0.05, 5} = 11.07$$

Como:

$$\chi^2_{calculado} = 2.8 < 11.07 = \chi^2_{0.05, 5}$$

No rechazamos $H_0$. Concluimos que no hay evidencia suficiente para afirmar que el dado esté cargado; los datos son consistentes con un dado justo.

Por ende, el dado no esta trucado con una confianza del 95%. Es una prueba robusta.

## Prueba chi-cuadrada para la bondad de ajuste de distribuciones conocidas

La misma lógica se extiende para comprobar si una muestra sigue una distribución teórica conocida (Normal, Poisson, Binomial, etc.), no solo una distribución uniforme como en el dado.

La diferencia clave está en el cálculo de las frecuencias esperadas $E_i$: en vez de dividir por partes iguales, se calculan usando la función de probabilidad (o densidad) de la distribución que se supone que siguen los datos.

Si algún parámetro de esa distribución (como $\mu$ o $\lambda$) se estima a partir de la propia muestra, hay que descontarlo de los grados de libertad:

$$gl = k - 1 - m$$

Por ejemplo, si probamos ajuste a una distribución Normal y estimamos $\mu$ y $\sigma$ desde los datos:

$$m = 2 \implies gl = k - 1 - 2 = k - 3$$

El resto del procedimiento (cálculo del estadístico, comparación con el valor crítico, decisión) es idéntico al caso de bondad de ajuste general.

# Prueba de independencia con chi-cuadrado
> Hay una confusion comun entre independencia y homogeneidad, nuestro punto clave de referencia es interpretar las poblaciones que se contemplan. Si estamos trabajando con dos variables **de la misma poblacion**, trabajamos con una prueba de independencia. 

La idea de la prueba de independencia es probar si dos variables cualitativas de una misma poblacion estan relacionadas de tal forma en la que una implica a la otra. Nosotros lo pensamos de esta forma:

$$H_0: \text{las variables son independientes}$$

$$H_1: \text{las variables no son independientes}$$

Lo comun es armar una tabla de contingencia de este estilo: 

| | Columna 1 | Columna 2 | ... | Columna $c$ | Total renglon |
|---|---|---|---|---|---|
| **Renglon 1** | $O_{11}$ | $O_{12}$ | ... | $O_{1c}$ | $O_{1.}$ |
| **Renglon 2** | $O_{21}$ | $O_{22}$ | ... | $O_{2c}$ | $O_{2.}$ |
| **...** | ... | ... | ... | ... | ... |
| **Renglon $r$** | $O_{r1}$ | $O_{r2}$ | ... | $O_{rc}$ | $O_{r.}$ |
| **Total columna** | $O_{.1}$ | $O_{.2}$ | ... | $O_{.c}$ | $n$ |

Por lo que vamos a conseguir el estadistico chi-cuadrado de esta forma:

$$\chi^2 = \sum_{i=1}^{r} \sum_{j=1}^{c} \frac{(O_{ij} - E_{ij})^2}{E_{ij}}$$

Donde $O_{ij}$ son los valores observados y $E_{ij}$ son los valores esperados bajo la hipotesis nula.

Nuestros grados de libertad toman la forma:

$$gl = k = (r - 1)(c - 1)$$

## Ejemplo práctico

Supongamos que queremos estudiar si el hábito de hacer ejercicio está relacionado con el nivel de estrés en estudiantes universitarios. Se encuesta a 120 estudiantes, registrando ambas variables. Notese como se cruzan ambas variables en la tabla de contingencia:

|                       | Estrés alto | Estrés bajo | Total |
| --------------------- | ----------: | ----------: | ----: |
| **Hace ejercicio**    |          20 |          40 |    60 |
| **No hace ejercicio** |          35 |          25 |    60 |
| **Total**             |          55 |          65 |   120 |

Queremos determinar si ambas variables son independientes utilizando un nivel de significancia de

$$
\alpha=0.05
$$

## Regla de decisión

Las hipótesis son

$$
H_0:\text{ el hábito de hacer ejercicio y el nivel de estrés son independientes}
$$

$$
H_1:\text{ el hábito de hacer ejercicio y el nivel de estrés no son independientes}
$$

Calculamos los grados de libertad

$$
gl=(2-1)(2-1)=1
$$

Para un nivel de significancia de $\alpha=0.05$ y $1$ grado de libertad, el valor crítico es

$$
\chi^2_{0.05,1}=3.841
$$

La regla de decisión es:

* Si $\chi^2_{calc}>3.841$, rechazamos $H_0$.
* Si $\chi^2_{calc}\le3.841$, no rechazamos $H_0$.

## Cálculo del estadístico

Las frecuencias esperadas se obtienen mediante

$$
E_{ij}=\frac{(\text{total del renglón})(\text{total de la columna})}{n}
$$

Los valores esperados son

|                       | Estrés alto | Estrés bajo |
| --------------------- | ----------: | ----------: |
| **Hace ejercicio**    |        27.5 |        32.5 |
| **No hace ejercicio** |        27.5 |        32.5 |

Calculamos cada término del estadístico:

$$
\frac{(20-27.5)^2}{27.5}=2.045
$$

$$
\frac{(40-32.5)^2}{32.5}=1.731
$$

$$
\frac{(35-27.5)^2}{27.5}=2.045
$$

$$
\frac{(25-32.5)^2}{32.5}=1.731
$$

Sumando todos los términos obtenemos

$$
\chi^2_{calc}=2.045+1.731+2.045+1.731=7.552
$$

## Decisión y justificación

Comparamos el estadístico calculado con el valor crítico:

$$
7.552>3.841
$$

Por lo tanto, cae en zona de rechazo.

Existe evidencia estadísticamente significativa para afirmar que el hábito de hacer ejercicio y el nivel de estrés no son independientes. Con una confianza del 95% y es una prueba robusta.


# Prueba de Homogeneidad con chi-cuadrado
Ahora entramos en situacion, tenemos dos poblaciones que comparten una variable. Pensemos en hombres y mujeres respecto a preferencias entre salado/dulce; sera que ambas poblaciones se comportan de la misma manera?

El planteamiento de las hipotesis se razona de esta manera:

$$ H_0:\text{ las preferencias entre salado/dulce son iguales entre hombres y mujeres} $$

$$ H_1:\text{ las preferencias entre salado/dulce son diferentes entre hombres y mujeres} $$

> El procedimiento es identico al de la prueba de independencia.

## Ejemplo práctico

Se desea comparar si las preferencias entre salado y dulce son iguales entre hombres y mujeres (lo que veniamos diciendo). Para ello se encuesta a **50 hombres** y **50 mujeres**, obteniendo los siguientes resultados:

|             | Prefiere salado | Prefiere dulce | Total |
| ----------- | --------------: | -------------: | ----: |
| **Hombres** |              35 |             15 |    50 |
| **Mujeres** |              20 |             30 |    50 |
| **Total**   |              55 |             45 |   100 |

Queremos determinar si ambas poblaciones presentan la misma distribución de preferencias utilizando un nivel de significancia de

$$
\alpha=0.05
$$

## Regla de decisión

Las hipótesis son

$$
H_0:\text{ las preferencias entre salado y dulce son iguales entre hombres y mujeres}
$$

$$
H_1:\text{ las preferencias entre salado y dulce son diferentes entre hombres y mujeres}
$$

Calculamos los grados de libertad

$$
gl=(2-1)(2-1)=1
$$

Para un nivel de significancia de $\alpha=0.05$ y $1$ grado de libertad, el valor crítico es

$$
\chi^2_{0.05,1}=3.841
$$

La regla de decisión es:

* Si $\chi^2_{calc}>3.841$, rechazamos $H_0$.
* Si $\chi^2_{calc}\le3.841$, no rechazamos $H_0$.

## Cálculo del estadístico

Las frecuencias esperadas se obtienen mediante

$$
E_{ij}=\frac{(\text{total del renglón})(\text{total de la columna})}{n}
$$

Los valores esperados son

|             | Prefiere salado | Prefiere dulce |
| ----------- | --------------: | -------------: |
| **Hombres** |            27.5 |           22.5 |
| **Mujeres** |            27.5 |           22.5 |

Calculamos cada término del estadístico:

$$
\frac{(35-27.5)^2}{27.5}=2.045
$$

$$
\frac{(15-22.5)^2}{22.5}=2.500
$$

$$
\frac{(20-27.5)^2}{27.5}=2.045
$$

$$
\frac{(30-22.5)^2}{22.5}=2.500
$$

Sumando todos los términos obtenemos

$$
\chi^2_{calc}=2.045+2.500+2.045+2.500=9.090
$$

## Decisión y conclusión

Comparamos el estadístico calculado con el valor crítico:

$$
9.090>3.841
$$

Por lo tanto, **cae en rechazo**.

Existe evidencia estadísticamente significativa para afirmar que las preferencias entre salado y dulce no son homogéneas entre hombres y mujeres. Con una confianza del 95% y es una prueba robusta.
