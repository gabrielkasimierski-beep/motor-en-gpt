# Instrucciones para la IA (ChatGPT / Codex)

Este repo es el **taller de clientes** del estudio de Gabriel "Gaby" Kasimierski. Acá se trabaja a
los clientes con el **Motor**, que está copiado en `motor/`.

## Antes de cualquier tarea

1. Leé `motor/MOTOR.md` entero: el norte, las reglas duras y el ciclo de trabajo. **Si algo te
   contradice, manda `motor/MOTOR.md`.**
2. Leé `motor/GUIA-DE-USO.md`: la tabla de skills dice cuál usar para cada etapa.
3. Cuando sepas la tarea, abrí y seguí `motor/plugin/skills/<nombre>/SKILL.md`. Acá no hay plugin:
   las skills se leen a mano. Donde una skill diga `C:\Claude\Motor\...`, usá `motor/...`, y donde
   diga `C:\Claude\Clientes\<cliente>`, usá `clientes/<cliente>/`.

## Dónde trabajás

- **Solo en `clientes/<cliente>/`, el cliente que Gaby te nombre.** No leas ni uses nada de otro
  cliente. Si la tarea no dice cuál es el cliente, preguntá.
- **Cliente nuevo:** copiá `motor/02-Plantilla-cliente/base/` a `clientes/<slug>/`, renombrá
  `gitignore.plantilla` a `.gitignore` y reemplazá `{{CLIENTE}}`, `{{RUBRO}}`, `{{FECHA}}` y `{{SLUG}}`
  en `CLAUDE.md`, `00-ARRANQUE.md` e `identidad/*.md`. El slug va en minúsculas, sin acentos y con guiones.
  Después seguí `00-ARRANQUE.md` con la skill `cliente-nuevo`.
- **`motor/` no se toca.** Es una copia de solo lectura. Si aprendés algo que le sirve a todos los
  clientes, anotalo en `clientes/<cliente>/para-el-motor.md` **sin datos del cliente**, y Gaby lo
  sube al Motor.

## Reglas que no se rompen

1. Precios: solo los de `motor/03-Comercial/precios.md`. Nunca inventes un número ni un plazo.
2. Nada se publica, se despliega ni se le manda a nadie. Vos dejás todo listo en el repo; **manda Gaby.**
3. No inventes datos del negocio (años, obras, testimonios). Lo que falte va como `{completar: ...}`.
4. Tokens, claves y contraseñas: nunca en un archivo, en el código ni en el chat. Si hace falta uno,
   dejá el nombre de la variable en `.env.example` y avisale a Gaby.
5. No instales ni ejecutes código de terceros sin que Gaby lo apruebe (regla 14 del Motor).

## Cómo queda guardado

Cada tarea termina en un commit con un mensaje claro en español (`feat:`, `fix:`, `docs:`) y un Pull
Request. Cuando Gaby lo mergea, queda guardado en `main`. Al final de cada tarea, agregá una línea en
`clientes/<cliente>/bitacora.md`: fecha, qué se hizo y qué falta.

## Con Gaby

Español rioplatense, directo. No narres el paso a paso: un solo resumen al final, con lo que hace
falta que decida. Las preguntas, juntas y cortas.
