# Módulo Administrador De Campos Dinámicos 📄
Es una herramienta que permita incorporar dinámicamente nuevoscampos en formularios sin alterar la estructura base de las tablas de una Base de datos.

## Comenzando 🚀

_En la presente sección se presenta como correr este sistema en un entorno de desarrollo para pruebas y/o desarrollo de nuevas características.._


### Requisitos 📋

_Dentro de los requisitos mínimos para poder correr este software y un correcto entorno de desarrollo se debe considerar:_

* Instalar [Node Js](https://nodejs.org/es/download/) desde la versión 16.16.0 en adelante
* Instalar [Laravel](https://laravel.su/docs/7.x/installation) en su versión 7
* Instalar [PHP](https://www.php.net/downloads.php) desde la versión 7.4.29
* Instalar [SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads) en su versión 2019 
* Instalar [SQL Server Management studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) para gestión de la base de datos a través de interfaz gráfica desde la versión 18
* Instalar [ODBC Driver](https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver16) en su versión 17 
* Instalar [XAMPP](https://www.apachefriends.org/download.html) desde la versión 3.3.0 en adelante
* Instalar [Composer](https://getcomposer.org/download/) en su versión 2.4.1
* Instalar [Git](https://git-scm.com/downloads) para la gestión del repositorio de los proyectos. (se recomienda usar algún software para gestión a través de interfaz en caso de no manejar muy bien git por terminal, como por ejemplo [SourceTree](https://www.sourcetreeapp.com/))

* Instalar algún editor de texto de preferencia como [Visual Studio Code](https://code.visualstudio.com/download)

### Instalación 🔧

#### Descarga de repositorios ✨

Una vez instalado git, a través del siguiente comando es posible descargar el repositorio con el siguiente comando:

```
git clone https://github.com/LILEnrique/Modulo-Administrador-De-Campos-Dinamicos
```
#### Configuración de variables de entorno de Laravel ⌨️
Para configurar las variables de entorno de este proyecto basta con crear el archivo con el nombre “.env” en la carpeta raíz del proyecto con los siguientes datos:

```
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:y71LSEMp+W+65HRSXgrMN5Go/NtdVgvWlPU9bRfhwFA=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack
LOG_DEPRECATIONS_CHANNEL=null
LOG_LEVEL=debug

DB_CONNECTION=sqlsrv
DB_HOST=localhost
DB_PORT=1433 #3306 - 1433
DB_DATABASE=camposdin
DB_USERNAME=admin
DB_PASSWORD=12345

BROADCAST_DRIVER=log
CACHE_DRIVER=file
FILESYSTEM_DRIVER=local
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

MEMCACHED_HOST=127.0.0.1

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=mailhog
MAIL_PORT=1025
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=
AWS_USE_PATH_STYLE_ENDPOINT=false

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

```
Variables importantes a considerar:
* La variable DB_CONNECTION es la conexion a base de datos elegida para el proyecto
* La variable DB_HOST es el lugar donde se hospedará el proyecto.
* La variable DB_PORT especifica el puerto donde se ejecutará un servidor
* La variable DB_DATABASE especifica el nombre de la base de datos que se usara para el proyecto
* La variable DB_USERNAME es la credencial que refiere al nombre de usuario para conectar a la base de datos
* La variable DB_PASSWORD es la credencial que refiere a la contraseña del usuario para conectar a la base de datos

#### Instalacion de packetes ⌨️
Una vez clonado el repositorio y tener el ".env", a través del siguiente comando procederemos a instalar las dependencias:

```
npm install
```
#### Configuracion DB ⌨️
Lo primero que se debe de hacer, es la de habilitar los "Protocols" de SQL Server, para ello deberemos de abrir "Sql Server Configuration Manager" y dirigirnos a:
```
SQL Server Network Configuration -> Protocols for MSSQLSERVER
```
estando aqui, debemos de fijarnos que Shared Memory, Named Pipes y TCP/IP esten Habilitados o Enabled, luego procedemos a ir a:
```
SQL Server Services y reiniciamos SQL Server(MSSQLSERVER).
```
Teniendo esto configurado, procedemos a ejecutar o cargar el archivo BD_CompletaF.sql con Microsoft SQL Server Management Studio que se encuentra en la carpeta raiz del proyecto.


#### Ejecución de comandos del proyecto ⌨️
Una vez configurado todo el entorno de desarrollo, a continuación se presentan los comandos disponibles para ejecutar el proyecto.
```
php artisan serve
```
Ejecuta la aplicación node en el entorno de desarrollo.
## Estructura de directorios ⚙️
## Directorio Raíz

##### Directorio App
El directorio app contiene el código principal de la aplicación. Exploraremos este directorio con más detalle pronto; sin embargo, casi todas las clases en la aplicación estarán en este directorio.
##### Directorio Bootstrap
El directorio bootstrap contiene el archivo app.php que maqueta el framework. Este directorio también almacena un directorio cache que contiene archivos generados por el framework para optimización de rendimiento como los archivos de caché de rutas y servicios.
##### Directorio Config
El directorio config, como el nombre implica, contiene todos los archivos de configuración de tu aplicación. Es una buena idea leer todos estos archivos y familiarizarte con todas las opciones disponibles para ti.
##### Directorio Database
El directorio database contiene las migraciones de tu base de datos, model factories y seeders. Si lo deseas, puedes también usar este directorio para almacenar una base de datos SQLite.
##### Directorio Public
El directorio public contiene el archivo index.php, el cual es el punto de acceso para todas las solicitudes que llegan a tu aplicación y configura la autocarga. Este directorio también almacena tus assets, tales como imágenes, JavaScript y CSS.
##### Directorio Resources
El directorio resources contiene tus vistas así como también tus assets sin compilar tales como LESS, Sass o JavaScript. Este directorio también almacena todos tus archivos de idiomas.
#### Directorio Routes
El directorio routes contiene todas las definiciones de rutas para tu aplicación. Por defecto, algunos archivos de rutas son incluidos con Laravel: web.php, api.php, console.php y channels.php.
## Directorio App
La mayoría de la aplicación está almacenada en el directorio app. Por defecto, este directorio está regido por el espacio de nombre App.
El directorio app contiene una variedad de directorios adicionales tales como Console, Http y Providers. Piensa en los directorios Console y Http como si proporcionaran una API al núcleo de tu aplicación, pero no contienen lógica de la aplicación como tal. En otras palabras, son dos formas de emitir comandos a tu aplicación. El directorio Console contiene todos tus comandos de Artisan, mientras que el directorio Http contiene tus controladores, middleware y solicitudes.
Una variedad de otros directorios serán generados dentro del directorio app cuando uses los comandos make de Artisan para generar clases. Así que, por ejemplo, el directorio app/Jobs no existirá hasta que ejecutes el comando de Artisan make:job para generar una clase job.
##### Directorio Broadcasting
El directorio Broadcasting contiene todas las clases de canales de broadcast de la aplicación. Estas clases son generadas usando el comando make:channel. Este directorio no existe por defecto, pero será creado para ti cuando crees tu primer canal.
##### El Directorio Console
El directorio Console contiene todos los comandos personalizados de Artisan para la aplicación. Estos comandos pueden ser generados usando el comando make:command. Este directorio también almacena el kernel de tu consola, que es donde tus comandos personalizados de Artisan son registrados y tus tareas programadas son definidas.
##### Directorio Exceptions
El directorio Exceptions contiene el manejador de excepciones de tu aplicación y también es un buen lugar para colocar cualquier excepción lanzada por tu aplicación. Si te gustaría personalizar cómo las excepciones son mostradas o renderizadas, debes modificar la clase Handler en este directorio.
##### Directorio Http
El directorio Http contiene tus controladores, middleware y form requests. Casi toda la lógica para manejar las solicitudes que llegan a tu aplicación serán colocadas en este directorio.
##### Directorio Providers
El directorio Providers contiene todos los proveedores de servicios para tu aplicación. Los proveedores de servicios maquetan tu aplicación al enlazar servicios en el contenedor de servicios, registrando eventos o realizando cualquier otra tarea para preparar tu aplicación para solicitudes entrantes.
## Construido con 🛠️

_Respecto a las tecnologías utilizadas para el desarrollo de la plataforma se han utilizado las siguientes:_
* [PHP](https://www.php.net) el lenguaje de programación utilizado.
* [Laravel](https://laravel.com) el framework de PHP utilizado.
* [SQL Server](https://www.microsoft.com/es-es/sql-server) el sistema de gestión de base de datos relacional utilizado.
* [Bootstrap](https://getbootstrap.com/) biblioteca de diseño y estilos utilizada.

## Versionado 📌

Para todas las versiones disponibles, mira los [tags en el repositorio](https://github.com/LILEnrique/Modulo-Administrador-De-Campos-Dinamicos/blob/main/Tags).

## Autores ✒️

##### Equipo TI4
* **Enrique Cayupan** - *Scrum Master* - [CatPsycho](https://github.com/LILEnrique)
* **Bryan Silva** - *Developer* - [BryanSnowth](https://github.com/BryanSnowth)

##### Equipo TI2
* **Edward Contreras** - *Developer* - [DeuxMachin](https://github.com/DeuxMachin)
* **Joaquin Aguilar** - *Developer* - [Juaker1](https://github.com/Juaker1)
* **Benjamin Sanchez** - *Developer* - [Pancito2](https://github.com/pansito2)
* **Roberto Nieves** - *Developer* - [Cowerino](https://github.com/cowerino)



