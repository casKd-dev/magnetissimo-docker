 # Magnetissimo on Docker
 
 This container runs [Magnetissimo](https://github.com/sergiotapia/magnetissimo) in a container based on the [Elixir Alpine Linux Image](https://hub.docker.com/_/elixir).
 
 ## Quick Start
 
 To get started, first pull this repository and enter the directory
 ```bash
 git clone https://github.com/casKd-dev/magnetissimo-docker
 cd magnetissimo-docker
 ```
 
Following up, set the variables to match up in your Compose file.

```bash
nano docker-compose.yml
```

The following variables must match or the connection will fail:

`database` | `magnetissimo`
--- | ---
`POSTGRES_USER` | `MAG_USERNAME`
`POSTGRES_PASSWORD` | `MAG_PASSWORD`

*Note: It is not required that you use the incuded database, you can use a external one too and comment out the database service in the Compose file*

The other variables can be left as default.

Now you would want to start your container by executing:
```bash
docker-compose up -d
```

*Note: If you do not have docker-compose installed you can follow [this link](https://docs.docker.com/compose/install/) to install it!*

And voila, Magnetissimo should be available at `http://localhost:4000`. If you wish to change this port you can do so in the `docker-compose.yml` file.

## Building

You can build the latest version by executing `docker build build/ --tag=magnetissimo` from the root of the repository. If you want to build on top of this image you can use `FROM caskd/magnetissimo-docker:latest` in your Dockerfile.

## Useful Links
[**Magnetissimo GitHub Repository**](https://github.com/sergiotapia/magnetissimo)

[**Elixir Docs**](https://elixir-lang.org/docs.html)

[**Docker Hub**](https://hub.docker.com/r/caskd/magnetissimo-docker
)
 
