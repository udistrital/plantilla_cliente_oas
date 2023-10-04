---
to: "<%= appname %>/package.json"
force: true
---
<% appName = h.inflection.dasherize(appname) %>
{
  "name": "<%= appName %>",
  "version": "1.0.0",
  "scripts": {
    "ng": "ng",
    "start": "ng serve",
    "build": "ng build",
    "test": "jest",
    "test:coverage": "jest --coverage",
    "lint": "ng lint",
    "build:prod": "npm run build -- --aot --configuration=production",
    "build:test": "npm run build -- --aot --configuration=test",
    "build:dev": "npm run build -- --aot --configuration=dev"
  },
  "private": true,
  "dependencies": {
    "@angular/animations": "~12.2.16",
    "@angular/cdk": "^12.2.13",
    "@angular/common": "~12.2.16",
    "@angular/compiler": "~12.2.16",
    "@angular/core": "~12.2.16",
    "@angular/forms": "~12.2.16",
    "@angular/material": "^12.2.13",
    "@angular/material-moment-adapter": "^12.2.13",
    "@angular/platform-browser": "~12.2.16",
    "@angular/platform-browser-dynamic": "~12.2.16",
    "@angular/router": "~12.2.16",
    "@angular/service-worker": "~12.2.16",
    "moment": "^2.29.4",
    "ng2-completer": "^9.0.1",
    "ng2-smart-table": "^1.7.2",
    "ngx-extended-pdf-viewer": "^12.1.2",
    "rxjs": "~7.5.7",
    "sweetalert2": "^11.7.3",
    "tslib": "^2.4.1",
    "zone.js": "~0.12.0"
  },
  "devDependencies": {
    "@angular-devkit/build-angular": "~12.2.18",
    "@angular-eslint/builder": "12.7.0",
    "@angular-eslint/eslint-plugin": "12.7.0",
    "@angular-eslint/eslint-plugin-template": "12.7.0",
    "@angular-eslint/schematics": "12.7.0",
    "@angular-eslint/template-parser": "12.7.0",
    "@angular/cli": "~12.2.18",
    "@angular/compiler-cli": "~12.2.16",
    "@types/jest": "^29.2.4",
    "@types/node": "^16.11.7",
    "@typescript-eslint/eslint-plugin": "4.28.2",
    "@typescript-eslint/parser": "4.28.2",
    "eslint": "^7.26.0",
    "eslint-plugin-import": "latest",
    "eslint-plugin-jsdoc": "latest",
    "eslint-plugin-prefer-arrow": "latest",
    "jest": "^29.3.1",
    "jest-preset-angular": "^12.2.3",
    "ts-node": "~10.9.1",
    "typescript": "4.3.5"
  },
  "jest": {
    "preset": "jest-preset-angular",
    "setupFilesAfterEnv": [
      "<rootDir>/src/setupJest.ts"
    ],
    "testPathIgnorePatterns": [
      "<rootDir>/node_modules/",
      "<rootDir>/dist/",
      "<rootDir>/src/test.ts"
    ],
    "moduleNameMapper": {
      "^@/(.*)$'": "<rootDir>/src/$1"
    },
    "globals": {
      "ts-jest": {
        "tsConfig": "<rootDir>/src/tsconfig.spec.json",
        "stringifyContentPathRegex": "\\.html$"
      }
    }
  }
}
