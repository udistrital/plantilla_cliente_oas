---
to: "<%= appname %>/tsconfig.spec.json"
force: true
sh: "mkdir -p <%= appname %>/src/assets && cp -r _templates/plantilla_cliente_oas/icons/ <%= appname %>/src/assets/icons/ && cd <%= appname %> && npm i --legacy-peer-deps"
---
/* To learn more about this file see: https://angular.io/config/tsconfig. */
{
  "extends": "./tsconfig.json",
  "compilerOptions": {
    "outDir": "./out-tsc/spec",
    "types": [
      "jest",
      "node"
    ]
  },
  "files": [
    "src/test.ts",
    "src/polyfills.ts"
  ],
  "include": [
    "src/**/*.spec.ts",
    "src/**/*.d.ts"
  ]
}
