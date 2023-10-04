---
to: "<%= appname %>/README.md"
force: true
---
# <%= appname %>
✔️ Check: <%= appname %>.

## Especificaciones Técnicas

### Tecnologías Implementadas y Versiones
* [Angular <%= angversion %>](https://angular.io/)

### Variables de Entorno
```shell
# En Pipeline
SLACK_AND_WEBHOOK: WEBHOOK ..
AWS_ACCESS_KEY_ID: llave de acceso ID Usuario AWS
AWS_SECRET_ACCESS_KEY: Secreto de Usuario AWS
```

### Ejecución del Proyecto

Clonar el proyecto del repositorio de git
```bash
# clone the project
git clone https://github.com/udistrital/<%= appname %>.git
# enter the project directory
cd <%= appname %>
```
Iniciar el servidor en local
```bash
# install dependency
npx npm install
or
npm install
# start server
npx run start
# Whenever you want to change the port just run
npx ng dev --port = 9528
```
Linter
```bash
# Angular linter
npm run lint
# run linter and auto fix
npm run lint:fix
# run linter on styles
npm run lint:styles
# run lint UI
npm run lint:ci
```

### Ejecución Dockerfile
```bash
# Does not apply
```
### Ejecución docker-compose
```bash
# Does not apply
```
### Ejecución Pruebas

Pruebas unitarias powered by Jest
```bash
# run unit test
npm run test
# Runt linter + unit test
npm run test:ui
```

## Estado CI

| Develop | Relese 0.0.1 | Master | Sonar |
| -- | -- | -- | -- |
| [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/<%= appname %>/status.svg?ref=refs/heads/develop)](https://hubci.portaloas.udistrital.edu.co/udistrital/<%= appname %>) | [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/<%= appname %>/status.svg?ref=refs/heads/release/0.0.1)](https://hubci.portaloas.udistrital.edu.co/udistrital/<%= appname %>) | [![Build Status](https://hubci.portaloas.udistrital.edu.co/api/badges/udistrital/<%= appname %>/status.svg?ref=refs/heads/master)](https://hubci.portaloas.udistrital.edu.co/udistrital/<%= appname %>) | [![Quality Gate Status](https://sonarqube.portaloas.udistrital.edu.co/api/project_badges/measure?project=udistrital%3A<%= appname %>&metric=alert_status)](https://sonarqube.portaloas.udistrital.edu.co/dashboard?id=udistrital%3A<%= appname %>) |

## Licencia

[This file is part of <%= appname %>.](LICENSE)


<%= appname %> is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (atSara Sampaio your option) any later version.
