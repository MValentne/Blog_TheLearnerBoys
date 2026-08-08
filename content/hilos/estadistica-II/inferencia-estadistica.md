+++
date = '2026-08-06T20:43:06-03:00'
draft = false
title = 'Inferencia Estadistica'
author = 'Valen'
keywords = ["inferencia", "repaso", "conceptos base"]
category = ["Estadistica"]
toc = true
tocBorder = true
+++

Primero que todo, quiero alivianar la formalidad de este hilo; no estaremos hablando sobre axiomas ni estaremos haciendo demostraciones con tanto rigor (a menos que me de una corazonada). Por lo que nos podremos centrar en el proposito principal de esta parte de la materia.

Me parece interesante esta forma de ver la estadistica, ya que no hay tanto interes en lo numerico, sino que podemos abstraer completamente esta parte para centrarnos en la interpretacion de dichos numeros; de hecho, podriamos usar software estadistico para conseguir estos valores y concentrarnos en el analisis de estos.

A mi parecer, es intuitivo ver la estadistica de esta forma, lo cual nos permite modelar estos procesos estadisticos y usarlos de forma practica, por lo que me parece bastante funcional en cualquier escenario.

# Un repaso a la inferencia
Este post es un repaso de las conclusiones que se dan en Estadistica I, dando el salto de la estadistica descriptiva a la inferencial. Para mi, fue pesado cursar Estadistica I, no por complejidad en el contenido, sino por lo tedioso que es el material; este se centra en la propia descripcion de datos, por lo que se usa para analizar un conjunto de datos resumido en algunos valores clave, medidas de tendencia central, varianza, dispercion, graficos, etc. 

Lo que quiero decir, y espero que no suene denigrante, es que todos estos procedimientos se pueden hacer con herramientas ya conocidas como excel, por lo que me parece una labor innecesaria.

Aqui entra la estadistica inferencial a callarme cual hueso al perro. En la estadistica inferencial obviamos estos procedimientos, incluso se promueve el uso de software para conseguir estos resultados (imaginarme feliz) y empezar a usar esto de forma pragmatica para modelar el comportamiento de un fenomeno. 

La estadistica inferencial consiste en obtener conclusiones sobre una poblacion (parametros) a partir de informacion muestral (estadisticos). Por lo que estudiando una muestra aleatoria significativa, podemos inferir el comportamiento de la poblacion en cierto parametro de interes.

No gastare tiempo en conceptos introducidos en Estadistica I, pero de no estar familiarizado con estos conceptos, googlear lo siguiente bastaria para estar en contexto:

* Teorema del Limite Central (TLC)
* Error estandar
* Significancia
* P-Valor
* Poblacion y muestra
* Estadistico y parametro

Aunque quiza y hable de alguna definicion mas adelante.

# Conceptos fundamentales de la inferencia
(Respecto a lo anterior, dicho y hecho) Empecemos hablando de algunas ideas base para platicar mas adelante:

- Poblacion: Es el conjunto de todas las unidades de analisis o elementos del conjunto del cual se observa una o mas caracteristicas. Tiende a ser el objeto de interes en estudios estadisticos. 
- Variable: Caracteristica o propiedad de una unidad de analisis. Puede ser medida y comparada mediante un valor numerico o una categoria. Tenemos variables cuantitativas continuas y discretas, y cualitativas nominales (sin orden. Dicotomicas o politomicas) y ordinales (con orden).
- Hipotesis estadistica: Proposicion o afirmacion sobre una caracteristica de la poblacion que se puede poner a prueba para establecer si es verdadera o falsa. (La mayor parte de nuestro estudio de Estadistica II consiste en la refutacion de hipotesis estadisticas)
- Hipotesis nula y alternativa: La hipotesis nula consiste en una afirmacion base sobre un fenomeno, mientras que la hipotesis alternativa aquella con la que se hace un contraste a la nula, probando con cierta confianza si esta estadisticamente sea verdadera o falsa.
- Tecnicas de muestreo: Tenemos muestreo probabilistico y no probabilistico, donde a nosotros nos interesa mas el probabilistico, enfocado en la aleatoriedad para aprovechar los principios del Teorema del Limite Central. 
- Estadistico: Es una caracteristica numerica representante de una muestra respecto a una poblacion. Es una variable (no como los parametros, que son constantes), ya que depende completamente de los elementos de la muestra, y la muestra es aleatoria. 
- Variable tipificada *z*: Para poder usar nuestros procedimientos estadisticos, necesitamos transformar nuestras variables en variables tipificadas *z*, que son variables estandarizadas que representan la distancia de cada valor respecto a la media de la muestra. Basicamente usamos una metrica estandar para poder aplicar estos procedimientos. La media es 0 y la unidad de medida es la desviacion estandar.
- Significancia: Se denota con $\alpha$ y representa la probabilidad de rechazar la hipotesis nula cuando esta es verdadera. Es un margen de error que asumimos. La confianza es el complemento de esta, por lo que se la confianza se denota $1 - \alpha$.
- P-Valor: Un numero muy usado en investicacion, que representa la probabilidad de obtener un valor igual o mas extremo que el observado, si la hipotesis nula es verdadera. Nos permite cuantificar el riesgo de rechazar una hipotesis cuando esta es verdadera, por lo que seria un falso positivo.

$$\text{Si } p \leq \alpha \Rightarrow \text{se rechaza } H_0$$ $$\text{Si } p > \alpha \Rightarrow \text{no se rechaza } H_0$$

# Distribuciones de muestreo
## Distribuciones de muestreo de medias muestrales
Es la distribucion de probabilidad de todas las posibles medias muestrales segun un tamaño de muestra dado, y su probabilidad asociada.

$$\bar{X} = \frac{1}{n}\sum_{i=1}^{n} X_i \qquad \Rightarrow \qquad E(\bar{X}) = \mu$$

La media de todas las medias de cada muestra de un tamaño dado, es la media de la poblacion. El valor de muestra esperado $E(\bar{X})$ es igual a la media poblacional $\mu$.

$$\bar{X} \sim N\left(\mu, \frac{\sigma^2}{n}\right)$$

$$Z = \frac{\bar{X} - \mu}{\sigma/\sqrt{n}} \sim N(0,1)$$

$$T = \frac{\bar{X} - \mu}{S/\sqrt{n}} \sim t_{n-1}$$

Y a partir de esto es bueno repasar el TLC:

## Teorema del Limite Central (TLC)
El teorema dice que si nuestras muestras cumplen con $n >= 30$, entonces la distribucion de las medias muestrales se aproxima a una distribucion normal. Por lo que si tomamos una muestra **aleatoria** de por lo menos 30 elementos, podemos asumir normalidad aproximada en la poblacion.

$$\text{Si } X_1, X_2, \ldots, X_n \text{ son i.i.d. con } E(X_i)=\mu \text{ y } Var(X_i)=\sigma^2,$$

$$\text{entonces } \bar{X} \xrightarrow{d} N\left(\mu, \frac{\sigma^2}{n}\right) \quad \text{cuando } n \to \infty$$

Por lo que entre mas crece el tamaño de la muestra, mas se aproxima a una distribucion normal, eso quiere decir $n \to \infty$

## Distribucion muestral de las proporciones muestrales
Al igual que con las medias muestrales, se observa que con muestras de $n >= 30$, la distribucion de las proporciones muestrales se aproxima a una distribucion normal, o digase que el centro de la distribucion es la proporcion poblacional.

$$\hat{p} \sim N\left(p, \frac{p(1-p)}{n}\right)$$

$$Z = \frac{\hat{p} - p}{\sqrt{\dfrac{p(1-p)}{n}}} \sim N(0,1)$$

Siempre y cuando se cumpla:

$$np \geq 5 \quad \text{y} \quad n(1-p) \geq 5$$

> En sintesis, ambas distribuciones muestrales se aproximan a una normal cuando $n >= 30$, por lo que se puede estimar sobre su poblacion con base a una muestra significativa.

# Estimaciones
## Estimaciones puntuales
Se estima una caracteristica poblacional a partir de un solo valor extraido de la muestra. Es lo opuesto a un intervalo de confianza, que te da un rango de valores posibles; en una estimacion puntual se utiliza un solo valor. Ejemplos de estimacion puntual:

$$\bar{X} \text{ estima a } \mu$$
$$\hat{p} \text{ estima a } p$$
$$S^2 \text{ estima a } \sigma^2$$

A medida de que *n* crece, el error estandar de la estimacion se reduce, lo que significa que la estimacion es mas precisa.

## Estimaciones de intervalo de confianza
Ahora no estimamos con base a solo un valor, sino que consideramos un intervalo en funcion de la significancia a la cual estamos interesados, en el cual quiza este el parametro que estimamos.

$$\text{Estimador puntual} \pm \text{Margen de error}$$

$$IC = \bar{X} \pm z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}}$$

para la media con $n < 30$ $$IC = \bar{X} \pm t_{\alpha/2,\, n-1} \cdot \frac{S}{\sqrt{n}}$$

y para la proporcion $$IC = \hat{p} \pm z_{\alpha/2} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$

Y cabe aclarar que cuando hablamos de la confianza en dicho intervalo, no hablamos sobre que tenga cierta probabilidad de tener al parametro, sino que consideramos la probabilidad de la generacion de un intervalo que lo contenga.

# Tamaño de muestra
## Factor de correccion de poblacion finita
Se dice que una poblacion con cota superior es finita. Es comun trabajar con poblaciones infinitas, cuales estadisticamente son tan masivas que siquiera pensamos en una cota superior. 

En los casos en los que es presente esta cota superior, se puede aplicar un factor de correccion para tratarla como una poblacion estadisticamente infinita. 

Una regla practica para considerar finita a una poblacion  $$\frac{n}{N} > 0.05$$

El factor en si $$FCPF = \sqrt{\frac{N-n}{N-1}}$$

Aplicado a la media $$\sigma_{\bar{X}} = \frac{\sigma}{\sqrt{n}} \cdot \sqrt{\frac{N-n}{N-1}}$$
$$IC = \bar{X} \pm z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}} \cdot \sqrt{\frac{N-n}{N-1}}$$

Y aplicado a la proporcion $$\sigma_{\hat{p}} = \sqrt{\frac{p(1-p)}{n}} \cdot \sqrt{\frac{N-n}{N-1}}$$ 
$$IC = \hat{p} \pm z_{\alpha/2} \cdot \sqrt{\frac{p(1-p)}{n}} \cdot \sqrt{\frac{N-n}{N-1}}$$

Si no se aplica este factor de correccion, el error estandar queda sobreestimado, lo cual exagera la variabilidad real del estimador.

$$\frac{\sigma}{\sqrt{n}} \geq \frac{\sigma}{\sqrt{n}} \cdot \sqrt{\frac{N-n}{N-1}}$$

Sin el factor de correccion, la varianza se nos dispara a valores muy altos, lo cual no es correcto.

## Tamaño de muestra para proporciones (u otro estimador)
Y ahora solucionamos un problema muy tangible, si queremos hacer una muestra para hacer un estudio, en primer lugar como determinamos un tamano de muestra?

Partimos de la definicion de intervalo de confianza para una proporcion

$$E = z_{\alpha/2} \cdot \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$

$$\frac{E}{z_{\alpha/2}} = \sqrt{\frac{\hat{p}(1-\hat{p})}{n}}$$

$$\left(\frac{E}{z_{\alpha/2}}\right)^2 = \frac{\hat{p}(1-\hat{p})}{n}$$

$$\frac{E^2}{z_{\alpha/2}^2} = \frac{\hat{p}(1-\hat{p})}{n}$$

$$n \cdot E^2 = z_{\alpha/2}^2 \cdot \hat{p}(1-\hat{p})$$

$$n = \frac{z_{\alpha/2}^2 \cdot \hat{p}(1-\hat{p})}{E^2}$$

Por lo que con esta idea podemos conseguir el tamano de muestra ideal para una significancia dada y un margen de error, recordando que 

$$IC = \text{Estimador puntual} \pm \text{Margen de error}$$

Si bien ejemplificamos con proporciones anteriormente, es la misma idea para las medias; bello manejo algebraico.

---

Y bueno, este capitulo tuvo una carga conceptual fuerte, espero que no se haya leido como conceptos que fui aventando (aunque parcialmente fue eso), pero ya estamos en contexto para charlar un poco de los temas posteriores.
