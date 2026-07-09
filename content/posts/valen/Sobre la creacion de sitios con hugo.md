+++
date = '2026-07-08T21:06:31-03:00'
draft = false
title = 'Sobre La Creacion De Sitios Con Hugo'
author = 'Valen'
keywords = ["explicativo", "prueba", "hugo"]
categories = ["Blog"]
+++

La cuestion es la siguiente, hoy en dia no queremos usar html y css crudo, cuando podemos usar una capa de abstraccion[^1] como Hugo. Esta capa de abstraccion nos permite trabajar en un blog como este, sin un conocimiento denso y tedioso en el manejo de lenguajes de etiqueta o escritura innecesaria de boilerplate. Por lo que es el equivalente a usar unos pocos comandos y manejarse con markdown, algo simple de entender tambien. 

Si bien es nutritivo estudiar html y css, para el caso particular en el que queramos hacer un blog con una facilidad de ingreso y colaboracion, es mas facil dejarlo de lado e ir directo al grano con una herramienta que solucione.

Primero, es relevante hablar de forma concreta sobre que es Hugo y como funciona. Hugo es un framework [^2] centrado en generacion de sitios estaticos. Un sitio estatico es aquel que no cambiara de usuario en usuario, digase, no hay una interaccion personalizada para cada usuario, por lo que suelen ser sitios simples y ligeros en comparacion de los dinamicos, donde tenemos que emplear cuestiones como backend, bases de datos, logica integrada con algun lenguaje de programacion, etc.

> Cabe aclarar que html y css no son lenguajes de programacion per-se, sino que son lenguajes de marcado y estilizacion respectivamente.

Hugo funciona principalmente mediante el manejo de themes, un theme se construye con base a templates, que a su vez son bloques de codigo html. Entonces, un desarrollador de themes esta usando una abstraccion de html y css en bloques, y con esos bloques crea un theme, que es una plantilla para hacer sitios web.

Puedes trabajar en diversas aplicaciones con un framework como Hugo, tales como:
- Blogs
- Portafolios artisticos
- Landing pages 
- Proyectos individuales estaticos
- Curriculums
- etc.

Y esas aplicaciones tienden a tener temas hechos por la comunidad de hugo, por lo que ya hay un punto de partida. Vease [Hugo Themes](https://themes.gohugo.io/). 

## Uso general de markdown

Tambien hablando un poco sobre las capacidades generales de Hugo y markdown, hay algunos usos interesantes, como la inclusion de codigo:

```c
#include <stdio.h>

int main(){
    printf("Hello, world!");
    return 0;
}
```
Diferentes headings:

# H1
## H2
### H3
#### H4

Texto **en negritas** o en *cursiva*.

Listas ordenadas:
1. un item
2. otro item
3. otro item mas

y desordenadas:
- un item
- otro item
- otro item mas

Una linea horizontal para dividir el contenido:

---

Y demas cosas que son redundantes, cosas que vienen a la cabeza cuando uno esta escribiendo un post y de repente necesita algun elemento, el cual posiblemente vaya a encontrar en una cheatsheet como [esta de aqui](https://www.markdownguide.org/cheat-sheet/).

## Publicacion en el blog

Por ultimo, una pequena explicacion del workflow para hacer un post en este blog: De base debemos tener algunos elementos instalados. 
- git
- github (web, haganse cuenta y vinculen con git)
- hugo ssg (CLI)
- alguna consola que use bash (mas adelante el por que de bash)

Para crear un post, primero tenemos que visualizar un poco la estructura de carpetas. Nuestros posts se van a crear dentro de la carpeta **content**, preferiblemente que haya una carpeta por cada persona, asi es mas facil que cada quien pueda ordenar y mantener sus propias publicaciones (al tiempo de publicacion de este post, ya deberia haber una carpeta con mi nombre). La carpeta **public** contiene toda la pagina generada con el markdown que nosotros escribimos mas toda la configuracion de fondo (en gran parte el theme). En la carpeta **themes** incluimos la plantilla que usamos para este proyecto, hugo-theme-nostyleplease, que es un theme centrado en un estilo minimalista; estuve metiendo un poco de mano en el codigo (un poco mala practica) para que el theme tenga el comportamiento adecuado para el funcionamiento del blog. 

Para hacer un post nosotros usamos un comando de hugo en la terminal; nos paramos en el directorio raiz [^3] y ejecutamos lo siguiente:

```bash
    hugo new content/autor/"titulo de la publicacion".md
```

Lo cual va a crear un nuevo archivo en la carpeta **content**, que es el markdown en el cual estaremos escribiendo todo el contenido a publicar. Este contenido al inicio tiene un poco de metadata, que se va a tener que completar con base a las necesidades del post.

Aqui entra el concepto de **taxonomia**, que es la forma en la que organizamos los posts en el blog. En este caso, organizamos los posts por categoria, por lo que cada categoria tiene su propia coleccion de publicaciones adjuntadas, por eso es relevante intentar mantener pequeno el numero de categorias por post, reduciendolo a solo lo mas significativo posible. 

Una vez que escribimos el post en formato markdown (que tarde o temprano utilizaremos de forma natural), queremos ver como se ven los cambios aplicados al blog; en este caso tenemos un comando de hugo que nos da una previsualizacion en localhost de la computadora para saber como se visualizara y cazar errores en nuestros posts:

```bash
    hugo server -D
```

Donde el -D significa *draft*, por lo que estaremos visualizando los bosquejos que tengamos trabajados en el proyecto, entre ellos, nuestro post (que en el metadata tiene algo como draft = true, que a la hora de publicar seriamente pasaremos a false). 

abrimos localhost:1313/ y nos deberia visualizar el blog con nuestro post aplicado. Una vez que todo esta en lugar, podemos pasar a hacer deploy en el blog y subir los cambios a github para que todos tengan una version actualizada del proyecto. Aqui entra en juego el manejo de git, vease este video como una referencia rapida de que es git: 

{{< youtube mJ-qvsxPHpY >}}

Basicamente queremos subir los cambios a main, por lo que de forma muy simple (que vamos a cambiar despues) hacemos:

```bash
    git pull
    git add .
    git commit -m "mensaje de commit"
    git push
```

Donde *git pull* es la accion fundamental para mantener nuestra version local del repositorio actualizada respecto a los cambios que haga el resto. Luego, *git add .* agrega todos los cambios al staging area, *git commit -m "mensaje de commit"* crea un nuevo commit con el mensaje especificado, y *git push* sube los cambios al repositorio remoto.

Esto es muy simple y quiza cambie dentro de muy poco debido a un workflow particular con github que tendremos que usar para evitar conflictos entre usuarios del blog, pero la escencia es la misma. 

Y por ultimo tenemos que hacer deploy a la pagina web (en este caso github pages), donde ya trabaje en un comando de bash (cosa que van a ejecutar en consola). Vayan a la raiz del proyecto y ejecuten el siguiente comando:

```bash
    ./deploy.sh
```

Lo cual ejecuta una serie de comandos que son redundantes para el alcance de esta explicacion, por lo que ha de abstraerse y usarse tal y como esta hecho. 

## Felicidades

Y Ta-dah, a este punto ya habran creado su primera publicacion en el blog, lo cual es algo bastante lindo. Es un lindo proyecto y se puede aprender bastante, ya que en cada post podemos usar libertad artistica completa en temas y estructura de lo que querramos decir. La idea de el blog es que quede como un registro perpetuo de lo que vayamos publicando, y podamos volver a esto en un futuro y ver que babosadas deciamos y pensabamos en su momento. Sin mas que eso, diviertanse publicando y sugiriendo mejoras para el proyecto.

<img src="https://www.gifsanimados.org/data/media/56/computadora-y-ordenador-imagen-animada-0178.gif" border="0" alt="computadora-y-ordenador-imagen-animada-0178" /></a>


[^1]: La abstraccion consiste en formar un modelo mental en el que solo tomamos en cuenta factores relevantes para el problema que queremos solucionar. En este caso, Hugo abstrae la necesidad de trabajar con html y css, ya que solo metemos mano en markdown y damos por sentado que se va a generar un frontend automaticamente.

[^2]: Un framework es una coleccion de herramientas que nos facilitan el trabajo, centrado en programacion, por lo que nosotros no tenemos que reinventar la rueda cada vez que queramos trabajar en un proyecto, al contrario, nosotros nos amoldamos a un marco ya hecho (y por gente mucho mas inteligente que nosotros) y abstraemos gran parte de los procedimientos y codigo que deberiamos hacer manualmente, reemplazandolo con herramientas que nos provee el framework.

[^3]: El directorio raiz es la carpeta principal del proyecto, donde podemos ver directamente archetypes, assets, content, etc.
