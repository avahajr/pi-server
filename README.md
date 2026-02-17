# Pi Minecraft server

## Prerequisites

- Docker

## Getting started

First, unzip `world.zip`. This file is the singleplayer world we want to continue our multiplayer server from.
```bash
unzip world.zip
```

### World files
#### Singleplayer format (world name is `world`)
```
world/              # overworld files in this parent folder
├── world_nether/
│   └── DIM-1/
└── world_the_end/
    └── DIM1/
```
I migrated the singleplayer world files to fit the Paper format.

#### Paper server format
```
world/
├── world/          # overworld files in this subfolder
├── world_nether/
│   └── DIM-1/
└── world_the_end/
    └── DIM1/
```
## Run it!
Then, start up the container which runs the server:

```bash
docker compose up
```

Or, use the provided start script:
```
./start.sh [--reset]    # use --reset to set the server state to the world folder
```
