#Descripción

Proyecto de ejemplo que implementa un CRUD básico del recurso Libro, desarrollado con Ruby on Rails siguiendo el patrón Model–View–Controller (MVC) y las convenciones de Rails.

El objetivo del proyecto es demostrar el flujo completo de una aplicación Rails sencilla, el uso de rutas RESTful, Active Record y buenas prácticas básicas.

El proyecto sigue un diseño RESTful basado en recursos, utilizando las acciones estándar de Rails para operaciones CRUD.

#Tecnologías y versiones

**-Ruby: 3.4.8
-Rails: 8.1.1**
-Base de datos: SQLite (por defecto en desarrollo)
-Sistema operativo: Ubuntu 24.04 (WSL en Windows)

#Componentes principales

-Active Record
    Modelado de datos
    Validaciones
    Migraciones
-Active Storage
    Gestión de archivos asociados al recurso

#Funcionalidades

-Crear libros
-Listar libros
-Ver detalle de un libro
-Editar libros
-Eliminar libros
-Validaciones básicas del modelo

#Arquitectura y convenciones

-Patrón MVC (Model–View–Controller)
-Rutas RESTful usando 'resources'
-Convenciones de Rails:
-Modelos en singular
-Tablas en plural
-Controladores en plural
-Controladores delgados y lógica de negocio en el modelo

#Estructura de ramas

-main: rama de producción
-desarrollo: rama de trabajo y nuevas funcionalidades

#Posibles mejoras futuras

-Autenticación de usuarios
-Autorización por roles (restringir funcionalidades como Eliminar, Actualizar, y Agregar)
-Tablas con Paginación y búsqueda por filtro
-Tests automatizados
-Mejoras en las interfaces de usuario

**Cómo ejecutar el proyecto**
Desde la terminar (estando en la raíz del proyecto), ejecutar los siguiente comandos, y visitar localhost.

1. clonar este repositorio
2. bundle install
3. bin/rails db:create
3. bin/rails db:migrate
4. bin/rails server
5. visitar http://localhost:3000