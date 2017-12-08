# Docker pgRouting

The `starefossen/pgrouting` Image provides a Docker Image with `Postgres`,
`PostGIS`, and `pgRouting` installed. This image is based on the
[postgres](https://github.com/docker-library/postgres) and
[mdillon/postgis](https://github.com/md5/docker-postgis) Docker Images.

![Demo using pgRouting on Docker](/demo.gif)

## Supported tags and respective `Dockerfile` links

The following Docker Image tags are supported.

| Tag           | Postgres | PostGIS | pgRouting |
|---------------|----------|---------|-----------|
| [`latest` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/10.1-2.4-2.5/Dockerfile)      | latest   | latest  | latest    |
| [`9-2-2` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/9.6-2.3-2.3/Dockerfile)       | 9.6      | 2.x     | 2.x       |
| [`9.4-2.1-2.1` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/9.4-2.1-2.1/Dockerfile) | 9.4.x    | 2.1.x   | 2.1.x     |
| [`9.4-2.1-2.0` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/9.4-2.1-2.0/Dockerfile) | 9.4.x    | 2.1.x   | 2.0.x     |
| [`9.6-2.3-2.3` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/9.6-2.3-2.3/Dockerfile) | 9.6.x    | 2.3.x   | 2.3.x     |
| [`10.1-2.4-2.5` (Dockerfile)](https://github.com/Starefossen/docker-pgrouting/blob/master/10.1-2.4-2.5/Dockerfile) | 10.1.x    | 2.4.x   | 2.5.x     |

## What is pgRouting

pgRouting extends the PostGIS / PostgreSQL geospatial database to provide
geospatial routing functionality.

## How to use this image

In order to run a basic container capable of serving a pgRouting-enabled
database, start a container as follows:

```bash
$ docker run --name some-pgrouting \
  -e POSTGRES_PASSWORD=mysecretpassword \
  -d starefossen/pgrouting
```

For more detailed instructions about how to start and control your Postgres
container, see the documentation for the `postgres` image
[here](https://registry.hub.docker.com/_/postgres/).

Once you have started a database container, you can then connect to the
database as follows:

```bash
$ docker run -it --link some-pgrouting:postgres --rm postgres \
  sh -c 'exec psql -h "$POSTGRES_PORT_5432_TCP_ADDR" -p "$POSTGRES_PORT_5432_TCP_PORT" -U postgres'
```

## Image Variants

The `starefossen/pgrouting` images come in two flavors, each designed for a
specific use case.

`starefossen/pgrouting:latest`

This is the bleeding edge latest version of the image. You should use this under
active development, but not for stable production usage.

`starefossen/pgrouting:<version>`

This is the locked down version of the image. If comes in two variants, major
versions major+minor for Postgres, PostGIS, and pgRouting as the version tag.

## License

This Docker image is licensed under the [MIT License](https://github.com/Starefossen/docker-pgrouting/blob/master/LICENSE).

Software contained in this image is licensed under the following:

* PostgreSQL: [PostgreSQL License](http://www.postgresql.org/about/licence/)
* PostGIS: [GNU GPL v2](https://github.com/postgis/postgis/blob/svn-trunk/COPYING)
* pgRouting: [GNU GPL v2](https://github.com/pgRouting/pgrouting/blob/master/COPYING)

## Supported Docker versions

This image is officially supported on Docker version 1.8.1.

Support for older versions (down to 1.0) is provided on a best-effort basis.

## User Feedback

### Documentation

* [Postgres](http://www.postgresql.org)
* [PostGIS](http://postgis.net)
* [pgRouting](http://pgrouting.org)

### Issues

If you have any problems with or questions about this image, please contact us
through a [GitHub issue](https://github.com/Starefossen/docker-pgrouting/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small;
we are always thrilled to receive pull requests, and do our best to process them
as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub
issue](https://github.com/Starefossen/docker-pgrouting/issues), especially
for more ambitious contributions. This gives other contributors a chance to
point you in the right direction, give you feedback on your design, and help
you find out if someone else is working on the same thing.
