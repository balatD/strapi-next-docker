# NEXT-GEN Development Stack

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

5. Change the `server_name` in `conf/nginx/default.conf` to the same URL used in `PROJECT_URL`:

6. Start the containers with the ./start.sh bash script:

```shell
./start.sh
```

7. Open your browser and visit `PROJECT_URL` to see the Next.js frontend.

8. Access the Strapi admin panel at `PROJECT_URL/strapi/admin`.

## License

This project is licensed under the [MIT License](LICENSE).

## Acknowledgments

We would like to express our gratitude to the following projects:

- [Strapi](https://strapi.io)
- [Next.js](https://nextjs.org)
- [NGINX Proxy](https://github.com/nginx-proxy/nginx-proxy)

## Contact

If you have any questions or need assistance with this project, please reach out to me at dragan@balatinac.com.

---

Let's get started and Dockerize your Strapi and Next.js setup today! 🚀