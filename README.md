# xiv-history
XIV History is a market board data and analytics system.

Data is sourced from the Universalis API via websocket connection. The websocket connection places the incoming data into a RabbitMQ queue, where workers then pick up messages and insert them into a PostgreSQL database. Finally, users can access a ReactJS website to view the data via a Node/ExpressJS API.

## Why Monorepo?
Since I am a single developer, and all the services are tightly coupled, it made more sense to move with a monorepo. For example, a single database migration to the listing table could affect both the API service, and the queue workers inserting database rows.

Thus, instead of wasting time on configuration, sychronization, and deployment between a bunch of repos, I wanted to focus more time on development, CI/CD integrations, and _eventually_ orchestration (like Kubernetes) and infrastructure-as-code (like Terraform).

## Services
The main services of this repo include:
- **_Web App_**: A ReactJS web application for viewing market board data
- **_API_**: A Node/ExpressJS standalone API used by the web app (and eventually for public use)
- **_Database_**: PostgreSQL database holding market board and web related data (users, etc)
- **_Producer_**: Websocket connection to Universalis websocket, sending incoming data to RabbitMQ queue
- **_Queue_**: RabbitMQ queue that holds incoming messages from the websocket connection
- **_Consumers_**: Listing and sales queue consumer(s) that consume messages and upsert them into the PostgreSQL database
- **_Metrics_**: Prometheus and grafana handle monitoring and metrics across the other services
- **_Caddy_**: Handles reverse proxying to web application (and eventually the API)

Each service is deployed onto their own docker container, and docker is hosted on an LXC container on my home-base Proxmox cluster.

## Folder Structure
The folder structure is primarily broken down into their individual services. Top level also contains general config (prettier, eslint, etc) and deployment orchestration (docker-compose).

```
├── apps
│   ├── api/                    # Node/ExpressJS API
|   ├── web/                    # ReactJS web application
|   ├── publisher/              # Queue publisher and websocket subscriber
|   └── subscriber/             # Queue subscribers
|       ├── sales/
│       └── listings/
|
├── deploy
│   ├── db/                     # Database migration/seed data, DBMate
│   |   ├── migrations/
|   |   └── seeds/
│   ├── monitoring/             # Prometheus/Grafana configs
│   |   ├── prometheus.yml
│   |   └── grafana-dashboards/
│   └── scripts/                # Scripts needed for deployment
|
├── docker-compose.yml          # Docker deployment configuration for all services
└── ...all the rest (shared configs like linters, etc.)
```

## Getting Started

1. Ensure you have the required technologies, including docker, node, and npm.
2. Clone the repo
3. Start the development server with `npm run dev`

## Thanks

Thanks of course to the Universalis team and their public API, as without their data this project would not be possible! 
