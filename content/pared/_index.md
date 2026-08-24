+++
# ============================================================
# SECCIÓN: la pared
# Galería de dibujos colgados desordenadamente en una pared con
# tapizado antiguo que cubre toda la página.
#
# COMO AGREGAR UN DIBUJO NUEVO:
#   1. Subir la imagen a postimages o imgbb y copiar la URL directa.
#   2. Crear un archivo .md nuevo acá en content/pared/ (ej:
#      mi-dibujo.md) con este front matter:
#
#        +++
#        title = "Título del dibujo"
#        date = "2026-08-20"          # fecha del dibujo
#        author = "Valen"             # quién lo dibujó
#        description = "Contado cortito..."
#        image = "https://i.postimg.cc/....jpg"
#        frame = "dorado"             # marco del cuadro (ver abajo)
#        +++
#
#   3. Listo. NO hace falta tocar ningún layout ni calcular
#      posiciones: la pared crece sola hacia abajo y el desorden
#      (anchos, inclinaciones, corrimientos) sale automático.
#
# ORDEN: los dibujos se muestran del MÁS NUEVO al más viejo
# (se ordena por el campo date), así las novedades quedan arriba.
#
# MARCOS DISPONIBLES (frame):
#   dorado  -> moldura dorada barroca (foto real de marco antiguo)
#   clasico -> madera tallada natural
#   roble   -> mismo tallado, acabado miel
#   negro   -> mismo tallado, ébano
#   blanco  -> mismo tallado, pintura crema envejecida
#
# OPCIONALES (por si alguien quiere controlar algo a mano):
#   rotate = -3    # inclinación del cuadro en grados
#   width = 26     # ancho como % del ancho de la pared
#
# El layout vive en layouts/pared/{baseof,list,single}.html y los
# estilos en assets/css/main.scss (buscar "LA PARED").
# ============================================================
title = "la pared"
date = "2026-08-24T00:00:00-03:00"
+++

Bienvenido/a a la pared.
