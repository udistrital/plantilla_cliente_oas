---
to: "<%= appname %>/src/environments/environment.test.ts"
force: true
---
export const environment = {
    production: false,
    entorno: 'test',
    autenticacion: true,
    notificaciones: true,
    menuApps: false,
    appname: '<%= appname %>',
    appMenu: '<%= appname %>',
    GESTOR_DOCUMENTAL_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/gestor_documental_mid/v1/',
    OIKOS_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/oikos_crud_api/v1/',
    PARAMETROS_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/parametros/v1/',
    TERCEROS_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/terceros_crud/v1/',
    CONFIGURACION_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/configuracion_crud_api/v1/',
    CONF_MENU_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/configuracion_crud_api/v1/menu_opcion_padre/ArbolMenus/',
    NOTIFICACION_SERVICE: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/notificacion_mid/v1/',
    TOKEN: {
        AUTORIZATION_URL: 'https://autenticacion.portaloas.udistrital.edu.co/oauth2/authorize',
        CLIENTE_ID: 'solicitar token a arquitectura',
        RESPONSE_TYPE: 'id_token token',
        SCOPE: 'openid email role documento',
        REDIRECT_URL: 'https://pruebasoascliente.portaloas.udistrital.edu.co',
        SIGN_OUT_URL: 'https://autenticacion.portaloas.udistrital.edu.co/oidc/logout',
        SIGN_OUT_REDIRECT_URL: 'https://pruebasoascliente.portaloas.udistrital.edu.co',
        AUTENTICACION_MID: 'https://autenticacion.portaloas.udistrital.edu.co/apioas/autenticacion_mid/v1/token/userRol',
    },
};

