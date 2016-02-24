# docker-hubot

## How to use
### build
```
# docker build -t kse201/hubot .
```
### run container
```
# docker run [-e <env>] [-v <conf_path>:/opt/hubot/conf] \
      kse201/hubot -n <name> -a <adapter> \
          [--external-scripts <script1,script2,...>] \
          [--hubot-scripts <script1,script2,...>] \
          [--env-file <conf_path/env.ini>]
```
