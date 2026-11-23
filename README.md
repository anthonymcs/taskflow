# taskflow

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Alcance de TaskFlow

Problema: necesito organizar actividades académicas y saber cuáles faltan.
Usuario objetivo: estudiante que planifica entregas semanales.

### Historias de usuario y criterios de aceptación

1. Como estudiante, quiero listar mis tareas para ver qué debo hacer.
   Criterio: la lista muestra título, prioridad y estado de cada tarea.
2. Como estudiante, quiero abrir una tarea para leer su descripción.
   Criterio: al tocar una tarjeta aparece el detalle de la tarea elegida.
3. Como estudiante, quiero crear una tarea para registrar un pendiente.
   Criterio: el formulario guarda una tarea válida y la lista la muestra.
4. Como estudiante, quiero editar una tarea para corregir sus datos.
   Criterio: los cambios guardados aparecen en lista y detalle.
5. Como estudiante, quiero eliminar una tarea terminada para limpiar la lista.
   Criterio: después de confirmar, la tarea desaparece de la lista.

### Modelo de datos

Task: id (entero único), title (texto), description (texto), priority (Alta, Media o Baja), isCompleted (verdadero/falso), userId (entero que identifica al usuario de prueba).

### Pantallas previstas

- Lista: tarjetas de tareas y acción para crear.
- Detalle: información completa y futuras acciones de editar o eliminar.
- Formulario: campos de título, descripción y prioridad.

### Requisitos no funcionales

- La navegación debe tener textos comprensibles.
- Un id inexistente debe mostrar un mensaje en vez de cerrar la app.

### Contrato de API que necesitaremos

- GET /tasks: listar tareas
- GET /tasks/:id: consultar detalle
- POST /tasks: crear tarea
- PATCH /tasks/:id: actualizar tarea
- DELETE /tasks/:id: eliminar tarea

La API concreta se elegirá después. Estas rutas son requisitos, no direcciones de un servidor ya conectado.

## API de tareas

- **URL base:** `https://jsonplaceholder.typicode.com`
- **Endpoint consultado:** `GET /todos`
- **Parámetro de filtro:** `userId=1` (consulta las tareas asignadas al usuario 1 para delimitar los resultados de prueba).
- **Campos recibidos de la API:**
  - `userId` (int): Identificador del usuario.
  - `id` (int): Identificador único de la tarea.
  - `title` (String): Título o descripción corta de la tarea.
  - `completed` (bool): Estado de finalización remoto (mapeado a `isCompleted`).
- **Valores completados por defecto en TaskFlow:**
  - `description`: `'Sin descripción (API)'` (la API externa no incluye campo de descripción detallada).
  - `priority`: `'Sin prioridad (API)'` (la API externa no incluye clasificación de prioridad).
- **Comportamiento de persistencia:** El cambio de estado mediante el botón de la interfaz es local y temporal en memoria; al reiniciar la aplicación los datos se vuelven a solicitar a la API remota.
