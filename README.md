# The Learner Boys 

Blog personal de un grupo de amigos. Sin tema fijo — cada uno aporta lo suyo: proyectos, ideas, gustos, y lo que vaya surgiendo.

🌐 **Sitio publicado:** [mvalentne.github.io/Blog_TheLearnerBoys](https://mvalentne.github.io/Blog_TheLearnerBoys/)

---

## Stack

| Herramienta | Uso |
|---|---|
| [Hugo](https://gohugo.io/) | Generador de sitio estático |
| [hugo-theme-nostyleplease](https://github.com/hanwenguo/hugo-theme-nostyleplease) | Tema base (submódulo git) |
| GitHub Pages | Hosting (rama `gh-pages`) |

---

## Arrancar localmente

### Prerequisitos

- [Hugo](https://gohugo.io/installation/) instalado (`hugo version` para verificar)
- Git con soporte de submódulos

### Clonar por primera vez

```bash
# Clonar el repo con el submódulo del tema incluido
git clone --recurse-submodules git@github.com:MValentne/Blog_TheLearnerBoys.git
cd Blog_TheLearnerBoys
```

> Si ya clonaste sin `--recurse-submodules`, inicializá el tema así:
> ```bash
> git submodule update --init
> ```

### Correr el servidor de desarrollo

```bash
# -D incluye posts en borrador (draft: true)
hugo server -D
```

El sitio queda en `http://localhost:1313/Blog_TheLearnerBoys/`

---

## Escribir un post

Los posts van en `content/posts/`. Se puede organizar en subcarpetas por autor.

### Crear un post nuevo

```bash
hugo new content posts/tu-nombre/nombre-del-post.md
```

### Front matter del post

Copiá esta plantilla al inicio del archivo `.md`:

```toml
+++
title   = "Título del post"
date    = '2026-07-11T00:00:00-03:00'
draft   = true                          # cambiar a false para publicar
author  = "Tu nombre"
categories = ["categoria"]              # aparece en el widget del sidebar
keywords   = ["tag1", "tag2"]          # palabras clave, se muestran debajo del título
+++

Tu contenido acá en Markdown...
```

**Campos disponibles:**

| Campo | Descripción |
|---|---|
| `title` | Título del post |
| `date` | Fecha de publicación (formato ISO 8601) |
| `draft` | `true` = borrador (no se publica), `false` = publicado |
| `author` | Tu nombre, se muestra arriba del contenido |
| `categories` | Lista de categorías, aparece en el widget del sidebar |
| `keywords` | Lista de tags, se muestran debajo del título |

### Tips de contenido

- El renderer está en modo `unsafe`, lo que significa que **podés meter HTML dentro del Markdown** (útil para GIFs, iframes, etc.)
- Para embeber un video de YouTube, usá el shortcode: `{{< youtube ID_DEL_VIDEO >}}`
- Para subir imágenes usá [postimages.org](https://postimages.org/) y pegá la URL directa en el Markdown

---

## Publicar en GitHub Pages

```bash
bash deploy.sh
```

El script hace todo automáticamente:

1. Verifica que estés en la rama `master`
2. Construye el sitio con `hugo --minify`
3. Publica el output en la rama `gh-pages` (que GitHub Pages sirve)
4. Hace push a origin

> ⚠️ Acordate de pasar el post de `draft = true` a `draft = false` antes de deployar, de lo contrario no aparecerá en el sitio publicado.

---

## Estructura del proyecto

```
Blog_Project/
│
├── content/
│   └── posts/               # Posts del blog
│       ├── firstpost.md
│       └── valen/           # Subcarpeta por autor (opcional)
│
├── layouts/                 # ⭐ Overrides del tema (modificar acá, nunca en themes/)
│   ├── footer.md            # Footer con GIF animado
│   └── partials/
│       ├── head.html        # <head> con favicons
│       └── menu_item.html   # Sidebar con widget de categorías
│   └── posts/
│       └── single.html      # Template de post individual (author + keywords)
│
├── assets/
│   └── css/
│       └── main.scss        # ⭐ CSS del tema + estilos custom del proyecto
│
├── data/
│   └── menu.toml            # ⭐ Menú del sidebar (info, recent posts, categories)
│
├── static/                  # Archivos servidos tal cual (favicons, imágenes)
│
├── themes/
│   └── hugo-theme-nostyleplease/  # Submódulo git — NO editar directamente
│
├── hugo.toml                # Configuración principal de Hugo
├── deploy.sh                # Script de deploy a GitHub Pages
└── .gitmodules              # Declaración del submódulo del tema
```

### Regla de oro: nunca editar dentro de `themes/`

Hugo tiene un sistema de **override por prioridad**: cualquier archivo en `layouts/`, `assets/` o `data/` del proyecto raíz **sobreescribe** al archivo equivalente del tema, sin tocarlo.

Esto mantiene el submódulo limpio y actualizable:

```bash
# Para actualizar el tema a la última versión upstream:
git submodule update --remote
```

Si el tema upstream cambia un archivo que también tenemos en nuestro `layouts/`, hay que mergear los cambios manualmente. Los archivos a revisar son los de la sección "Overrides del tema" en la estructura de arriba.

---

## Configuración rápida de referencia (`hugo.toml`)

```toml
baseURL = 'https://mvalentne.github.io/Blog_TheLearnerBoys/'
title   = 'The Learner Boys'
theme   = "hugo-theme-nostyleplease"

[taxonomies]
    keyword  = "keywords"
    category = "categories"
    author   = "authors"

[markup.goldmark.renderer]
    unsafe = true   # permite HTML dentro del Markdown
```

---

## Personalización del menú

Editá [`data/menu.toml`](data/menu.toml). Cada `[[entries]]` es una sección del sidebar.

```toml
# Agregar una entrada simple con link
[[entries]]
title = "mi sección"

  [[entries.entries]]
  title = "link de ejemplo"
  url   = "https://ejemplo.com"

# Mostrar el widget de categorías
[[entries]]
title = "categories"
show_categories = true
```

---

## Favicons

Los archivos de favicon están en `static/` y son referenciados desde `layouts/partials/head.html`.

Para regenerarlos (si cambian el logo), subir la imagen a [realfavicongenerator.net](https://realfavicongenerator.net/), descargar el paquete y reemplazar los archivos en `static/`.
