+++
date = '2026-08-28T00:23:23-03:00'
draft = false
title = 'Inteligencia Artificial Como Herramienta De Investigacion'
author = 'Valen'
keywords = ["IA", "investigacion", "Agentes"]
categories = ["Computacion"]
+++

Siendo este mi primer proyecto de investigacion formal, no quise dejar pasar la oportunidad de probar herramientas curiosas para dicho trabajo. En su momento, leyendo novedades en Github, me entere de un proyecto al leer el feed en el que un profesor mio habia estado interesado en en una supuesta herramienta de investigacion cientifica con inteligencia artificial como motor. Adjunto el proyecto [aqui](https://github.com/handsome-rich/Awesome-Auto-Research-Tools). 

Me parecio interesante la idea de IA como herramienta de investigacion, ya que a mis ojos seria mas un limitante que un beneficio. Es facil pensar inmediatamente en la IA como una fuente de poco rigor a la hora de buscar informacion sobre un tema, ya que cae en generalizaciones o en un peor escenario, aluscinacion. Estuve dando vueltas a esta idea para buscar una forma de implementarla de tal manera en la que realmente sea de ayuda a la investigacion mas que una fuente informacion probabilistica de la que no se puede confiar.

Uso Opencode-CLI, ya que al ser open source es accesible y seguro, ademas de tener un facil acceso al proovedor [OpenCode-Zen](https://opencode.ai/docs/zen/); mi interes en este proveedor radica en sus modelos gratuitos (Tienen cierto modelo de negocio en el que te dejan acceso libre a ciertos modelos como forma experimental para ellos, pero en el lado de usuario es una maravilla el tener acceso a este poder de computo de forma virtualmente ilimitada). Si bien mis busquedas previas respecto a la decision de tomar un agente de codigo para trabajo de investigacion fueron bastante negativas (constantemente se hacia enfasis en que un agente de codigo tiene como fuerte el codigo, pero no puede ser implementado en otros campos), decidi ignorar dichos comentarios y experimentar con un agente personalizado de OpenCode.

Me asegure de que este agente no fuera limitado por un solo LLM, ya que los modelos gratuitos de OpenCode-Zen suelen rotar a medida que se actualizan, por lo que preferi optar por esta versatilidad de poder usar cualquier LLM en cualquier punto del proyecto y que este no cambie el resultado esperado.

El agente consiste en un conjunto de reglas que definen el comportamiento, funcionamiento, capacidades y limitaciones del LLM de turno, por lo que se espera un resultado consistente y predecible en cualquier contexto. Algunas capacidades establecidas por este ruleset son:

> De base, al ser un agente de codigo, posee acceso controlado a una computadora (por lo que no tiene acceso superusuario y cualquier proceso relevante es informado preivo a ejecucion), lo cual permite funciones como manejo de terminal (bastante poderoso), manejo de archivos, ejecucion de scripts, busqueda en internet, uso de herramientas de terminal, entre otras.

1. Busqueda web academica (websearch): Busca papers, articulos cientificos y fuentes academicas. Prioriza Google Scholar, PubMed, arXiv, entre otros, por lo que limita su alcance de busqueda a fuentes confiables. Filtra por fecha de publicacion, citaciones y relevancia.
2. Lectura y analisis de documentos (read): Lectura de PDF's y documentos academicos. Identifica metodologia, hallazgos y limitaciones. Extrae datos clave.
3. Generacion Bibliografica: APA 7a edicion, MCA, Chicago, Vancouver, IEEE.
4. Resumen de papers: Analiza la estructura de Contexto --> Objetivo --> Metodo --> Resultados --> Conclusiones. Identifica contribucion original y limitaciones.
5. Analisis Critico: Evalua calidad metodologica. Identifica sesgos y conflictos de interes. Compara hallazgos con literatura existente.

Ahora, sobre **skills** particulares que agilizan el flujo de trabajo:

> Primero aclaro, una skill no es nada mas que una funcion/proceso; es un conjunto de instrucciones personalizadas para un workflow particular, de uso modular y reutilizable.

Las skills de investigación que posee este agente cubren el ciclo completo de trabajo académico, desde la búsqueda de literatura hasta la publicación. Se cargan bajo demanda según la tarea detectada (trigger keywords en cada **SKILL.md**) y no saturan el contexto del LLM si no se necesitan:

| Skill | Función | Tarea que desencadena su uso |
|-------|---------|------------------------------|
| **systematic-review** | Protocolo PRISMA 2020 completo: búsqueda estructurada, cribado, extracción, evaluación de calidad y síntesis (cualitativa y meta-análisis) | "revisión sistemática", "meta-análisis", "PRISMA" |
| **citation-analysis** | Análisis bibliométrico: redes de citación, co-citación, h-index, factor de impacto, detección de papers seminales y benchmarking | "análisis de citaciones", "bibliometría", "papers más citados" |
| **gap-analysis** | Identificación sistemática de brechas en la literatura (evidencia, metodológicas, teóricas, contextuales) y priorización de nuevas líneas de investigación | "brechas de investigación", "que falta investigar", "nuevas lineas de investigacion" |
| **methodology-critique** | Evaluación crítica de validez interna/externa, sesgos, asignación, cegamiento y calidad metodológica general | "critica metodologica", "sesgos", "calidad del estudio" |
| **statistical-review** | Revisión de análisis estadístico: potencia, supuestos, selección de pruebas, errores comunes (p-hacking, HARKing) y reporte | "revisión estadística", "poder estadístico", "tamaño efecto" |
| **data-extraction** | Extracción estructurada de datos de papers (población, diseño, variables, resultados, tablas) con reglas de consistencia y validación | "extraer datos", "tablas", "extraer estadísticos" |
| **ethics-review** | Evaluación de consideraciones éticas: consentimiento informado, aprobación IRB/CEI, análisis riesgo-beneficio, poblaciones vulnerables | "revisión etica", "consentimiento informado", "comite de etica" |
| **plagiarism-check** | Detección de plagio directo, de ideas y accidental; verificación de citación correcta y técnicas de parafraseo aceptable | "verificar plagio", "revisar originalidad", "Turnitin" |
| **writing-assistant** | Redacción académica estructurada: IMRAD, abstract, introducción con embudo invertido, estilos APA/Vancouver/Chicago | "redactar introduccion", "escribir resumen", "ayuda a escribir" |
| **journal-matching** | Selección de revistas para publicar: alcance temático, cuartil, tiempo de revisión, APC y detección de revistas depredadoras | "donde publicar", "seleccionar revista", "journal matching" |
| **markdown-to-pdf** | Conversión de notas de investigación en markdown a PDF formateado para lectura en Kindle o impresión A4 | "convertir a pdf", "exportar a pdf" |

---

Ahora mismo el trabajo sigue en una etapa de definición y exploración de ideas. Pude darle uso a esta herramienta para enterarme del *state of the art* del tema a investigar, pudo generar un documento con citas correctas y un paneo legitimo del tema, pero como observacion, se limita a hablar superficialmente sobre los temas ya que da mas importancia en la cita del trabajo original, lo cual me parece bastante prudente.

Ademas, lo empece a usar dentro de un [repositorio](https://github.com/MValentne/linguistic-distance-graphs); este sirve de entorno de trabajo colaborativo en el que va documentando cada tarea relevante que se lleva a cabo (tiene un archivo markdown y la indicacion de actualizarlo cada vez que hay una novedad en la investigacion, este sirve como bitacora para el agente), y tiene un espacio para escribir sus investigaciones, por lo que todas sus salidas relevantes son almacenadas sistematicamente para posterior lectura y referencia.

Hasta ahora ha tenido un rol de busqueda y exploracion de ideas, me presenta fuentes relevantes para lo que quiero aprender y me deja al tanto de brechas y limitaciones en la bibliografia existente, por lo que deja a la vista posibles caminos alternativos para la investigacion.

Si bien es un agente de codigo, con proposito base en la programacion, hasta ahora ha presentado buenos resultados. El que tenga acceso a mi computadora me permite ordenarle que se maneje con archivos del sistema, y que ademas puede usar herramientas de terminal como curl, por lo que tiene acceso a lectura en la web o extenderse a software de CLI que llegue a instalar.
