+++
date = '2026-08-24T23:00:00-03:00'
draft = true
title = 'Webamp En El Blog'
author = 'Valen'
keywords = ["webamp", "winamp", "musica", "prueba"]
categories = ["Blog"]
+++

# Winamp en el año 2026

Este post es un ejemplo/documentacion del nuevo shortcode `webamp`.
Arriba de estas lineas deberia estar reproduciendose un track real
de Internet Archive (netlabels, musica libre).

{{< webamp >}}
https://archive.org/download/ar0013.SubterraneanByTm_353/AluraRecords-CompilationOne.-03Subterranean.mp3 | T:M | Subterranean | 251
https://archive.org/download/IBR_770/01.%20x%20SOFM.mp3 | IBR | x SOFM | 111
{{< /webamp >}}

## Como se usa

El formato es una linea por pista, campos separados con pipes:

```text
URL | Artista | Titulo | Duracion(en segundos)
```

Solo la URL es obligatoria, el resto es opcional. Ejemplo minimo:

{{< webamp >}}
https://archive.org/download/ar0013.SubterraneanByTm_353/AluraRecords-CompilationOne.-03Subterranean.mp3
{{< /webamp >}}

## Con visualizacion Milkdrop

Agregando `vis="true"` al shortcode se carga el bundle con Butterchurn
y arranca una ventana de visualizacion abierta debajo del player.
Advertencia: es el mismo player de arriba pero con ~220KB extra y
WebGL, para usarlo con moderacion en los posts.

{{< webamp vis="true" >}}
https://archive.org/download/IBR_770/01.%20x%20SOFM.mp3 | IBR | x SOFM | 111
{{< /webamp >}}

Y esta seria la sintaxis para copiar/pegar en cualquier post (sin los
espacios entre llaves):

```markdown
{{</* webamp >}}
  https://archive.org/download/TU-ITEM/cancion.mp3 | Artista | Titulo | 185
{{< /webamp*/>}}
```

## Donde subir la musica

La documentacion completa esta en el propio shortcode
(`layouts/shortcodes/webamp.html`), pero el resumen rapido:

- **Internet Archive (recomendado)**: subis tus MP3s con el boton
  Upload y usas la URL directa `https://archive.org/download/ITEM/archivo.mp3`
- Tiene que ser un host con CORS habilitado, si no el audio no arranca.
  Internet Archive y jsDelivr (`cdn.jsdelivr.net/gh/usuario/repo@main/x.mp3`) cumplen.

## Que deberias ver

- Un player clasico de Winamp 2 embebido en el post, al doble de
  tamaño (modo doble de siempre, como apretar Ctrl+D)
- En la instancia con `vis="true"`: la ventana de Milkdrop debajo,
  con los presets de Butterchurn ciclando mientras reproduce
- Ventanas fijas: no se pueden arrastrar ni sacar del recuadro,
  y el boton cerrar de la ventana principal no hace nada
- Click derecho sobre el player abre el menu con Playlist,
  Equalizador y la opcion de volver al tamano normal
- El playlist ya viene cargado con las pistas de arriba

Si no reproduce: revisar la consola del navegador (F12), casi siempre
es CORS del host o un 503 temporal de archive.org (reintentar mas tarde).
