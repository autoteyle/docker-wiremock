[![Travis (.org) branch](https://img.shields.io/travis/autoteyle/docker-wiremock/master)](https://travis-ci.org/autoteyle/docker-wiremock)
[![Docker Pulls](https://img.shields.io/docker/pulls/autoteyle/wiremock)](https://hub.docker.com/r/autoteyle/wiremock)
[![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/autoteyle/docker-wiremock)](https://hub.docker.com/repository/docker/autoteyle/wiremock/tags?page=1)

# Docker WireMock
Provides containerized [WireMock](https://github.com/tomakehurst/wiremock).

## Usage

    docker run -d -p 9999:9999 -v /my-wiremock-dir:/data autoteyle/wiremock 

## Configuration
Use environment variables for the configuration.

Available parameters along with the default values listed below.

    WIREMOCK_PORT: 9999
    WIREMOCK_ROOT_DIR: /data
    WIREMOCK_VERBOSE: true
    WIREMOCK_ENABLE_STUB_CORS: false
    
## Development
Run locally built image

    docker-compose up -d

Rebuild image

    docker-compose build

## Maintainers

- [build-failure](https://github.com/build-failure)

## License

See the [LICENSE.md](LICENSE.md) file for details
