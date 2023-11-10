# plantilla_cliente_oas
Plantilla para la creación de un **Cliente en Agular JS y TypeScript** con el generador de código automatizado **HYGEN**.

## Prerrequisitos:

1. Instalar Node.js y npm.

```shell
sudo apt update
```
```shell
sudo apt-get update
```
```shell
sudo apt install nodejs
```
```shell
sudo apt install npm
```
```shell
node -v
```
```shell
npm -v
```

2. Instalar e inicializar Hygen en el directorio raiz “~/go/src/github.com/udistrital”.
```shell
cd $GOPATH/src/github.com/udistrital/
```
```shell
sudo npm i -g hygen
```
```shell
hygen init self
```

## Creación de Cliente con Hygen

1.	Ubicarse en el directorio raiz **“~/go/src/github.com/udistrital”**:
```shell
cd $GOPATH/src/github.com/udistrital/
```
2.	Ingresar a la carpeta **_templates**:
```shell
cd _templates
```
3.	Clonar repositorio de **plantilla_cliente_oas**:
```shell
git clone https://github.com/udistrital/plantilla_cliente_oas.git
```
4.	Devolverse a la carpeta raíz:
```shell
cd $GOPATH/src/github.com/udistrital/
```
5.	Ejecutar comando Hygen para creación del Cliente:
```shell
hygen plantilla_cliente_oas with-prompt --appname nombre_cliente_oas
```
6.	Ingresar al Cliente recién creado:
```shell
cd nombre_cliente_oas
```

**NOTA:** ten en cuenta que esta plantilla crea un **Proyecto para un Cliente base**. Sin embargo, será necesario realizar algunas configuraciones adicionales como menús, variables de entorno, ajuste de estilos y actulización de dependencias.