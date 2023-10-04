---
to: "<%= appname %>/sonar-project.properties"
force: true
---
# Required metadata
sonar.projectKey=<%= appname %>
sonar.projectName=<%= appname %>
sonar.projectVersion=1.0

# Comma-separated paths to directories with sources (required)
sonar.sources=src/

sonar.language=js

# Encoding of the source files
sonar.sourceEncoding=UTF-8

sonar.exclusions=**/node_modules/**,**/*.spec.ts,**/*.scss
sonar.tests=src/app
sonar.test.inclusions=**/*.spec.ts

# Sonar Host
sonar.host.url=https://sonarqube.portaloas.udistrital.edu.co/
