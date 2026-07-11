{{- /*
  ============================================================
  OVERRIDE: layouts/footer.md
  ============================================================
  Sobreescribe el footer del tema
  (themes/hugo-theme-nostyleplease/layouts/footer.md).
  Hugo prioriza este archivo sobre el del tema.

  CAMBIOS RESPECTO AL ORIGINAL DEL TEMA:
    - Se reemplazó el texto de placeholder del tema por un GIF
      animado de computadora como elemento decorativo del footer.

  MANTENIMIENTO:
    - El GIF está hosteado externamente en gifsanimados.org.
      Si la URL deja de funcionar, reemplazarla por un archivo
      local en static/images/ y usar {{ "images/tu-gif.gif" | relURL }}.
    - Para agregar texto al footer (ej: copyright), agregar debajo
      del <img> un <p> o <span> con el contenido deseado.
  ============================================================
*/ -}}

<!-- GIF decorativo en el footer. Hosteado en gifsanimados.org.
     Si la URL falla, mover el archivo a static/images/ y usar relURL. -->
<img src="https://www.gifsanimados.org/data/media/56/computadora-y-ordenador-imagen-animada-0154.gif" border="0" alt="computadora animada" /></a>
