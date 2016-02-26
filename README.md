# docker-hubot

## How to use
### build
```
# docker build -t kse201/hubot .
```
### run container
```
# docker run [-e <env>] [-v <conf_path>:/opt/hubot/conf] \
      [-v <scripts_path>:/opt/hubot/scripts] \
      kse201/hubot -n <name> -a <adapter> \
          [--external-scripts <script1,script2,...>] \
          [--hubot-scripts <script1,script2,...>] \
          [--env-file <conf_path/env.ini>]
```
