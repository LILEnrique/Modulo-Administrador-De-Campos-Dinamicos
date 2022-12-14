# M贸dulo Administrador De Campos Din谩micos 馃搫
Es una herramienta que permita incorporar din谩micamente nuevoscampos en formularios sin alterar la estructura base de las tablas de una Base de datos.

## Comenzando 馃殌

_En la presente secci贸n se presenta como correr este sistema en un entorno de desarrollo para pruebas y/o desarrollo de nuevas caracter铆sticas.._


### Requisitos 馃搵

_Dentro de los requisitos m铆nimos para poder correr este software y un correcto entorno de desarrollo se debe considerar:_

* Instalar [Node Js](https://nodejs.org/es/download/) desde la versi贸n 16.16.0 en adelante
* Instalar [Laravel](https://laravel.su/docs/7.x/installation) en su versi贸n 7
* Instalar [PHP](https://www.php.net/downloads.php) desde la versi贸n 7.4.29
* Instalar [SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads) en su versi贸n 2019 
* Instalar [SQL Server Management studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) para gesti贸n de la base de datos a trav茅s de interfaz gr谩fica desde la versi贸n 18
* Instalar [ODBC Driver](https://learn.microsoft.com/en-us/sql/connect/odbc/download-odbc-driver-for-sql-server?view=sql-server-ver16) en su versi贸n 17 
* Instalar [XAMPP](https://www.apachefriends.org/download.html) desde la versi贸n 3.3.0 en adelante
* Instalar [Composer](https://getcomposer.org/download/) en su versi贸n 2.4.1
* Instalar [Git](https://git-scm.com/downloads) para la gesti贸n del repositorio de los proyectos. (se recomienda usar alg煤n software para gesti贸n a trav茅s de interfaz en caso de no manejar muy bien git por terminal, como por ejemplo [SourceTree](https://www.sourcetreeapp.com/))

* Instalar alg煤n editor de texto de preferencia como [Visual Studio Code](https://code.visualstudio.com/download)

### Instalaci贸n 馃敡

#### Descarga de repositorios 鉁?

Una vez instalado git, a trav茅s del siguiente comando es posible descargar el repositorio con el siguiente comando:

```
git clone https://github.com/LILEnrique/Modulo-Administrador-De-Campos-Dinamicos
```
#### Configuraci贸n de variables de entorno de Laravel 鈱笍
Para configurar las variables de entorno de este proyecto basta con crear el archivo con el nombre 鈥?.env鈥? en la carpeta ra铆z del proyecto con los siguientes datos:

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
* La variable DB_HOST es el lugar donde se hospedar谩 el proyecto.
* La variable DB_PORT especifica el puerto donde se ejecutar谩 un servidor
* La variable DB_DATABASE especifica el nombre de la base de datos que se usara para el proyecto
* La variable DB_USERNAME es la credencial que refiere al nombre de usuario para conectar a la base de datos
* La variable DB_PASSWORD es la credencial que refiere a la contrase帽a del usuario para conectar a la base de datos

#### Instalacion de packetes 鈱笍
Una vez clonado el repositorio y tener el ".env", a trav茅s del siguiente comando procederemos a instalar las dependencias:

```
npm install
```
#### Configuracion DB 鈱笍
Lo primero que se debe de hacer, es la de habilitar los "Protocols" de SQL Server, para ello deberemos de abrir "Sql Server Configuration Manager" y dirigirnos a:
```
SQL Server Network Configuration -> Protocols for MSSQLSERVER
```
estando aqui, debemos de fijarnos que Shared Memory, Named Pipes y TCP/IP esten Habilitados o Enabled, luego procedemos a ir a:
```
SQL Server Services y reiniciamos SQL Server(MSSQLSERVER).
```
Teniendo esto configurado, procedemos a ejecutar o cargar el archivo BD_CompletaF.sql con Microsoft SQL Server Management Studio que se encuentra en la carpeta raiz del proyecto.


#### Ejecuci贸n de comandos del proyecto 鈱笍
Una vez configurado todo el entorno de desarrollo, a continuaci贸n se presentan los comandos disponibles para ejecutar el proyecto.
```
php artisan serve
```
Ejecuta la aplicaci贸n node en el entorno de desarrollo.
## Estructura de directorios 鈿欙笍
## Directorio Ra铆z

##### Directorio App
El directorio app contiene el c贸digo principal de la aplicaci贸n. Exploraremos este directorio con m谩s detalle pronto; sin embargo, casi todas las clases en la aplicaci贸n estar谩n en este directorio.
##### Directorio Bootstrap
El directorio bootstrap contiene el archivo app.php que maqueta el framework. Este directorio tambi茅n almacena un directorio cache que contiene archivos generados por el framework para optimizaci贸n de rendimiento como los archivos de cach茅 de rutas y servicios.
##### Directorio Config
El directorio config, como el nombre implica, contiene todos los archivos de configuraci贸n de tu aplicaci贸n. Es una buena idea leer todos estos archivos y familiarizarte con todas las opciones disponibles para ti.
##### Directorio Database
El directorio database contiene las migraciones de tu base de datos, model factories y seeders. Si lo deseas, puedes tambi茅n usar este directorio para almacenar una base de datos SQLite.
##### Directorio Public
El directorio public contiene el archivo index.php, el cual es el punto de acceso para todas las solicitudes que llegan a tu aplicaci贸n y configura la autocarga. Este directorio tambi茅n almacena tus assets, tales como im谩genes, JavaScript y CSS.
##### Directorio Resources
El directorio resources contiene tus vistas as铆 como tambi茅n tus assets sin compilar tales como LESS, Sass o JavaScript. Este directorio tambi茅n almacena todos tus archivos de idiomas.
#### Directorio Routes
El directorio routes contiene todas las definiciones de rutas para tu aplicaci贸n. Por defecto, algunos archivos de rutas son incluidos con Laravel: web.php, api.php, console.php y channels.php.
## Directorio App
La mayor铆a de la aplicaci贸n est谩 almacenada en el directorio app. Por defecto, este directorio est谩 regido por el espacio de nombre App.
El directorio app contiene una variedad de directorios adicionales tales como Console, Http y Providers. Piensa en los directorios Console y Http como si proporcionaran una API al n煤cleo de tu aplicaci贸n, pero no contienen l贸gica de la aplicaci贸n como tal. En otras palabras, son dos formas de emitir comandos a tu aplicaci贸n. El directorio Console contiene todos tus comandos de Artisan, mientras que el directorio Http contiene tus controladores, middleware y solicitudes.
Una variedad de otros directorios ser谩n generados dentro del directorio app cuando uses los comandos make de Artisan para generar clases. As铆 que, por ejemplo, el directorio app/Jobs no existir谩 hasta que ejecutes el comando de Artisan make:job para generar una clase job.
##### Directorio Broadcasting
El directorio Broadcasting contiene todas las clases de canales de broadcast de la aplicaci贸n. Estas clases son generadas usando el comando make:channel. Este directorio no existe por defecto, pero ser谩 creado para ti cuando crees tu primer canal.
##### El Directorio Console
El directorio Console contiene todos los comandos personalizados de Artisan para la aplicaci贸n. Estos comandos pueden ser generados usando el comando make:command. Este directorio tambi茅n almacena el kernel de tu consola, que es donde tus comandos personalizados de Artisan son registrados y tus tareas programadas son definidas.
##### Directorio Exceptions
El directorio Exceptions contiene el manejador de excepciones de tu aplicaci贸n y tambi茅n es un buen lugar para colocar cualquier excepci贸n lanzada por tu aplicaci贸n. Si te gustar铆a personalizar c贸mo las excepciones son mostradas o renderizadas, debes modificar la clase Handler en este directorio.
##### Directorio Http
El directorio Http contiene tus controladores, middleware y form requests. Casi toda la l贸gica para manejar las solicitudes que llegan a tu aplicaci贸n ser谩n colocadas en este directorio.
##### Directorio Providers
El directorio Providers contiene todos los proveedores de servicios para tu aplicaci贸n. Los proveedores de servicios maquetan tu aplicaci贸n al enlazar servicios en el contenedor de servicios, registrando eventos o realizando cualquier otra tarea para preparar tu aplicaci贸n para solicitudes entrantes.
## Construido con 馃洜锔?

_Respecto a las tecnolog铆as utilizadas para el desarrollo de la plataforma se han utilizado las siguientes:_
* [PHP](https://www.php.net) el lenguaje de programaci贸n utilizado.
* [Laravel](https://laravel.com) el framework de PHP utilizado.
* [SQL Server](https://www.microsoft.com/es-es/sql-server) el sistema de gesti贸n de base de datos relacional utilizado.
* [Bootstrap](https://getbootstrap.com/) biblioteca de dise帽o y estilos utilizada.

## Versionado 馃搶

Para todas las versiones disponibles, mira los [tags en el repositorio](https://github.com/LILEnrique/Modulo-Administrador-De-Campos-Dinamicos/blob/main/Tags).

## Autores 鉁掞笍

##### Equipo TI4
* **Enrique Cayupan** - *Scrum Master* - [CatPsycho](https://github.com/LILEnrique)
* **Bryan Silva** - *Developer* - [BryanSnowth](https://github.com/BryanSnowth)

##### Equipo TI2
* **Edward Contreras** - *Scrum Master* - [DeuxMachin](https://github.com/DeuxMachin)
* **Joaquin Aguilar** - *Developer* - [Juaker1](https://github.com/Juaker1)
* **Benjamin Sanchez** - *Developer* - [Pancito2](https://github.com/pansito2)
* **Roberto Nieves** - *Developer* - [Cowerino](https://github.com/cowerino)



