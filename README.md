# Empresa Retail Admin

## Descripción del proyecto

Proyecto de configuración de seguridad y control de acceso para la base de datos `empresa-retail-db`.

La actividad implementa un modelo de seguridad basado en roles, con el propósito de separar las responsabilidades y controlar el acceso de los usuarios a la información de la base de datos.

El sistema de permisos se organiza en tres roles principales: `ana`, `pedro` y `marta`, cada uno con diferentes niveles de acceso de acuerdo con sus responsabilidades.

## Objetivo

Configurar usuarios, roles y permisos en MySQL para garantizar un acceso controlado a las tablas y procedimientos almacenados de la base de datos `empresa-retail-db`.

La configuración aplica los principios de separación de responsabilidades y mínimo privilegio, otorgando a cada usuario únicamente los permisos necesarios para desarrollar sus funciones.

## Roles y permisos

### Ana - CRM

El rol `ana` permite gestionar:

- Clientes
- Interacciones

Cuenta con permisos de:

- Lectura
- Inserción
- Actualización
- Eliminación

sobre las tablas correspondientes.

### Pedro - Marketing

El rol `pedro` permite gestionar:

- Canales
- Campañas

Además, puede consultar la información de clientes, pero no puede modificarla.

Cuenta con permisos de lectura, inserción, actualización y eliminación sobre las tablas `canal` y `campania`, y únicamente permisos de lectura sobre la tabla `cliente`.

### Marta - Auditoría

El rol `marta` permite:

- Consultar conversiones.
- Consultar información relacionada con compras, registros y suscripciones.
- Ejecutar procedimientos almacenados destinados a la consulta de conversiones.

No cuenta con permisos para modificar directamente la información de la base de datos.

## Usuarios

| Usuario | Rol |
|---|---|
| `ana_crm` | `ana` |
| `pedro_mkt` | `pedro` |
| `marta_auditoria` | `marta` |

## Base de datos

`empresa-retail-db`

## Tecnologías utilizadas

- MySQL 8
- MySQL Workbench
- SQL
- Git
- GitHub

## Estructura del proyecto

```text
empresa-retail-admin/
│
├── README.md
├── .gitignore
│
├── sql/
│   ├── 01_usuarios_roles.sql
│   ├── 02_permisos_roles.sql
│   └── 03_pruebas_seguridad.sql
│
└── documento-tecnico/
    └── documento-tecnico.pdf
