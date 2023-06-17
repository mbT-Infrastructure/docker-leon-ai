# Docker image

This Docker image contains ...

It does ...


## Environment variables

- `FRONTEND_URL`
    - The base URL where Leon is accessed. Overwrites `LEON_HOST`.
- `LANGUAGE`
    - The language to use. Overwrites `LEON_LANG`.
- `LEON_PORT`
    - The used HTTP port, default: `80`.
- `TELEMETRY`
    - Consent telemetry, default: `false`.

There are more Leon specific environment variables available.
Refer to [docs.getleon.ai](https://docs.getleon.ai/configuration) for more information.


## Volumes

- `/media/volume`
    - The input and output directory of the files to ...


## Development

To build and run for development run:
```bash
docker compose --file docker-compose-dev.yaml up --build
```

To build the image locally run:
```bash
./docker-build.sh
```
