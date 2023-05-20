# Project CPier 

🐳 Dockerized Strapi & Next.js Setup

## Description

This project provides a Dockerized setup for a Strapi and Next.js application. It enables you to quickly deploy and run a Strapi backend and Next.js frontend together using Docker containers. It also includes an NGINX reverse proxy container for routing requests to the appropriate services.

## Features

✨ Easily deploy a Strapi and Next.js application with Docker.

✨ Simplifies the setup process for running both backend and frontend together.

✨ Includes an NGINX reverse proxy for routing requests.

✨ Encourages a consistent development and deployment environment.

## Requirements

⚙️ Docker: Make sure you have Docker installed on your machine.

⚙️ nginxproxy/nginx-proxy: Ensure you have the `nginxproxy/nginx-proxy` Docker container running in the background to handle reverse proxying.

## Getting Started

To get started with this Dockerized Strapi & Next.js setup, follow these steps:

1. Clone the repository:

```shell
git clone https://github.com/balatD/strapi-next-docker
```

2. Change into the project directory:

```shell
cd strapi-next-docker
```

3. Rename the .example.env file:

```shell
cp .example.env .env
```

4. Change the necessary variables inside .env:

```dotenv
PROJECT_NAME=
PROJECT_URL=
```

5. Start the containers with the ./start.sh bash script:

```shell
./start.sh
```

6. Open your browser and visit `PROJECT_URL` to see the Next.js frontend.

7. Access the Strapi admin panel at `PROJECT_URL/strapi/admin`.

## Upcoming features / ToDos

- Auto-install SSL Certificates using https://github.com/nginx-proxy/acme-companion
- ~~Workflow (scripts) for adding nmp packages to frontend/backend~~
- MediaRendering in NEXT.js for Strapi images
- NEXT.js fetcher utility class
- Update Next.js and Strapi to latest version
- ~~Nginx configuration template rendering (using project_url from .env file)~~
- Documentation
- Ddev-router collision
- Deployment / Server docker-compose configuration with built-in proxying
- ~~Cleanup .gitignore~~

## Acknowledgments

We would like to express our gratitude to the following projects:

- [Strapi](https://strapi.io)
- [Next.js](https://nextjs.org)
- [NGINX Proxy](https://github.com/nginx-proxy/nginx-proxy)


---
