---
to: "<%= appname %>/.drone.yml"
force: true
---
kind: pipeline
name: <%= appname %>_ci

trigger:
  event:
    exclude:
      - tag

steps:
- name: check_readme
  image: jjvargass/qa_develoment:latest
  commands:
  - python /app/check_readme.py
  when:
    branch:
    - develop
    - feature/*
    - hotfix/*
    - release/*
    event:
    - push

- name: check_branch
  image: jjvargass/qa_develoment:latest
  commands:
  - python /app/check_branch.py -H ${DRONE_GIT_HTTP_URL}
  when:
    branch:
    - develop
    - feature/*
    - hotfix/*
    - release/*
    event:
    - push

- name: check_commits
  image: jjvargass/qa_develoment:latest
  failure: ignore
  commands:
  - python /app/check_commits.py
  when:
    branch:
    - develop
    - feature/*
    - hotfix/*
    - release/*
    event:
    - push

# - name: prueba_unitarias
#   image: node:<%= nodeversion %>
#   commands:
#   - npm i
#   - npm run test
#   when:
#     branch:
#     - feature/*
#
# - name:  pruebas_linter
#   image: node:<%= nodeversion %>
#   commands:
#   - npm i
#   - npm run lint
#   when:
#     branch:
#     - unitest

- name: nodejs_release
  image: node:<%= nodeversion %>
  commands:
  - node --version
  - npm i --legacy-peer-deps
  - npm run build:test
  when:
    branch:
    - feature/*
    - develop
    - release/*
    - dependabot/**
    event:
    - push

- name: nodejs_master
  image: node:<%= nodeversion %>
  commands:
  - node --version
  - npm i --legacy-peer-deps
  - npm run build:prod
  when:
    branch:
    - master
    event:
    - push

- name: run_sonar_scanner
  image: aosapps/drone-sonar-plugin
  settings:
    sonar_host:
      from_secret: SONAR_HOST
    sonar_token:
      from_secret: SONAR_TOKEN
  when:
    branch:
    - develop
    - feature/*
    - release/*
    event:
    - push

- name: publish_s3_release
  image: plugins/s3
  settings:
    bucket: cliente-pruebas
    access_key:
      from_secret: aws_access_key_id
    secret_key:
      from_secret: aws_secret_access_key
    region: us-east-1
    source: dist/**/*
    target: /${DRONE_REPO_NAME}
    strip_prefix: dist/
  when:
    branch:
    - release/*
    event:
    - push

- name: publish_s3_master
  image: plugins/s3
  settings:
    bucket: cliente-prod
    access_key:
      from_secret: aws_access_key_id
    secret_key:
      from_secret: aws_secret_access_key
    region: us-east-1
    source: dist/**/*
    target: /${DRONE_REPO_NAME}
    strip_prefix: dist/
  when:
    branch:
    - master
    event:
    - push

- name: notify_telegram
  image: appleboy/drone-telegram
  failure: ignore
  settings:
    token:
      from_secret: telegram_token
    to:
      from_secret: telegram_to
    format: html
    message: >
      {{#success build.status}}
        ✅ <a href="{{build.link}}">SUCCESS</a> <b>Build #{{build.number}}</b> (type: <code>{{ build.event }}</code>)
        <b>Repo:</b><code>{{repo.name}}</code> <b>Branch:</b><code>{{commit.branch}}</code>
        <b>Commit:</b> <a href="{{commit.link}}">{{truncate commit.sha 7}}</a>
        <b>Autor:</b>{{commit.author}} <code>&#128526 </code>
      {{else}}
        ❌ <a href="{{build.link}}">FAILURE</a> <b>Build #{{build.number}}</b> (type: <code>{{ build.event }}</code>)
        <b>Repo:</b><code>{{repo.name}}</code> <b>Branch:</b> <code>{{commit.branch}}</code>
        <b>Commit:</b> <a href="{{commit.link}}">{{truncate commit.sha 7}}</a>
        <b>Autor:</b>{{commit.author}} <code>&#128549 </code>
      {{/success}}
  when:
    branch:
    - develop
    - release/*
    - master
    event:
    - push
    status:
    - failure
    - success
