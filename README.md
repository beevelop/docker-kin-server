[![Travis](https://shields.beevelop.com/travis/beevelop/docker-kin-server.svg?style=flat-square)](https://travis-ci.org/beevelop/docker-kin-server)
[![Pulls](https://shields.beevelop.com/docker/pulls/beevelop/kin-server.svg?style=flat-square)](https://links.beevelop.com/d-kin-server)
[![Layers](https://shields.beevelop.com/docker/image/layers/beevelop/kin-server/latest.svg?style=flat-square)](https://links.beevelop.com/d-kin-server)
[![Size](https://shields.beevelop.com/docker/image/size/beevelop/kin-server/latest.svg?style=flat-square)](https://links.beevelop.com/d-kin-server)
[![GitHub release](https://shields.beevelop.com/github/release/beevelop/docker-kin-server.svg?style=flat-square)](https://github.com/beevelop/docker-kin-server/releases)
![Badges](https://shields.beevelop.com/badge/badges-7-brightgreen.svg?style=flat-square)
[![Beevelop](https://links.beevelop.com/honey-badge)](https://beevelop.com)

# Latest Kin Server
### based on [beevelop/nodejs](https://github.com/beevelop/docker-nodejs)

> Kin is the calendar experience we want after Sunrise: simple enough to help us better understand when, where and with whom we need to be & connected to integrate all the services that we use everyday.

This Docker image is an unofficial alternative to quickly get started with Kin (e.g. for development or to run your personal instances).

----
## Quick Start
```
docker run -d -p 8000:8000 --env_file kin.env beevelop/kin-server
```

## Configuration (required)
- `API_HOST`: host / ip that will be listened on (e.g. `0.0.0.0`)
- `API_PORT`: Local port on which the app will listen on.
- `API_HOSTNAME`: Externally facing hostnames of your server setup: API endpoint
- `STATIC_HOSTNAME`: Hostname (and Port) to the Kin Client
- `EXPRESS_SECRET`: Random express secret for JWT tokens

Facebook and Google are required for authentication purposes (all other services are optional):
- `GOOGLE_CLIENT_ID`
- `GOOGLE_CLIENT_SECRET`
- `FACEBOOK_CLIENT_ID`
- `FACEBOOK_CLIENT_SECRET`

## Secrets / Services
- `HTTPS_KEY_FILE`
- `HTTPS_CERT_FILE`
- `EVENTBRITE_CLIENT_ID`
- `EVENTBRITE_CLIENT_SECRET`
- `GITHUB_CLIENT_SECRET`
- `GITHUB_CLIENT_ID`
- `GOOGLE_MAPS_KEY`
- `MEETUP_CLIENT_ID`
- `MEETUP_CLIENT_INTERNAL_ID`
- `MEETUP_CLIENT_SECRET`
- `OUTLOOK_CLIENT_ID`
- `OUTLOOK_CLIENT_SECRET`
- `TODOIST_CLIENT_SECRETID`
- `TODOIST_CLIENT_SECRET`
- `TRELLO_KEY`
- `TRELLO_SECRET`
- `WUNDERLIST_CLIENT_ID`
- `WUNDERLIST_CLIENT_SECRET`

----
### Pull from Docker Hub
```
docker pull beevelop/kin-server
```

### Or build from GitHub
```
docker build -t beevelop/kin-server github.com/beevelop/docker-java
```

### Or use as base image
```Dockerfile
FROM beevelop/kin-server
```

----

![One does not simply use latest](https://i.imgflip.com/1fgwxr.jpg)
