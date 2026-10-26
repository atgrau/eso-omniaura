# Changelog

## 1.0.0 — primera versión pública

### Editor
- Ventana de edición (`/omni`, tecla configurable o *Ajustes → Add-Ons → OmniAura*), centrada, plegable y movible desde su barra de título.
- Lista de auras con icono, nombre y papelera (borrado con confirmación).
- Plantillas para crear auras: buff en mí, mi debuff en el objetivo, buff que me falta, recurso, proc de set/habilidad y estado de combate.
- El formulario solo muestra las opciones que tienen sentido para cada aura.
- El aura seleccionada se ve en pantalla y se mueve y redimensiona arrastrándola (esquina amarilla para el tamaño).

### Qué se puede vigilar (triggers)
- **Buff / debuff** en ti, tu objetivo o un jefe: activo o que falta, solo los tuyos, acumulaciones mínimas.
- **Recurso**: salud, magia, aguante o definitiva, por valor o porcentaje.
- **Proc / evento de combate**: muestra el aura durante N segundos (procs de sets, cooldowns internos).
- **Estado de combate**: dentro o fuera de combate.
- Varios triggers por aura, con lógica "todos" o "alguno", y condición de carga (siempre, solo en combate, solo fuera).

### Elegir habilidades sin escribir IDs
- Buscador en todas las habilidades del juego, agrupadas por nombre.
- Catálogo completo con categorías: bufos/perjuicios, las 7 clases, armas, armadura, gremios, mundo, guerra de alianzas, raciales, Mundus, compañeros, equipo y consumibles; con filtro por nombre y descripción emergente.
- Atajos: efectos actuales, habilidades de tus barras y efectos/procs recientes.

### Cómo se ve (displays)
- Icono (temporizador, acumulaciones, sombreado de duración, gris cuando falta, borde).
- Icono + texto encima.
- Barra (progreso de duración o de recurso, icono opcional).
- Texto.
- Colores con el selector del juego, textos con plantillas (`{name} {time} {stacks} {value} {max} {percent}`) y sonido al aparecer.

### Otros
- Idiomas: español, inglés, alemán y francés (según el idioma del cliente).
- Ventana de bienvenida al instalar y de novedades al actualizar.
- Donación de oro al autor desde el editor o los ajustes (solo megaservidor EU).
- Comandos de chat `/omni` para usuarios avanzados.
