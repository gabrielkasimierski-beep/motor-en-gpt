# Clientes · taller online con ChatGPT

Repo privado de Gaby para trabajar a los clientes con ChatGPT (Codex) desde el navegador, sin la app.
La IA lee `AGENTS.md` sola y usa el Motor que está en `motor/`.

| Qué | Dónde |
|---|---|
| Las reglas para la IA | `AGENTS.md` |
| El Motor (copia de solo lectura) | `motor/` |
| Un proyecto por cliente | `clientes/<cliente>/` |

## Cómo se usa

1. Entrá a **https://chatgpt.com/codex** (desde el navegador).
2. La primera vez: conectá tu GitHub y dale acceso a este repo (`clientes`). Creá el entorno con este
   repo (no hace falta configurar nada más).
3. Pedile la tarea en palabras propias, por ejemplo:
   - *"Cliente nuevo: Casa Rossi, gastronomía. Te pego lo que me mandó por WhatsApp: …"*
   - *"En clientes/casa-rossi, armá el primer prototipo que propusiste."*
4. Codex trabaja en una rama y abre un **Pull Request**. Lo revisás y lo mergeás: así queda guardado en
   `main`. Lo que no mergeás no se pierde, queda en su PR.

## Actualizar el Motor

`motor/` es una foto del Motor. Cuando el Motor cambie, desde la PC (PowerShell):

```powershell
powershell -ExecutionPolicy Bypass -File .\actualizar-motor.ps1
```

Lo que aprenda la IA para el Motor queda en `clientes/<cliente>/para-el-motor.md` y se sube al Motor
por su propio PR.
