# Heroku Python Skeleton

This repository has all the base files ready for deploying a Heroku application, including a simple database model managed with flask-sqlalchemy.

## Usage

### Initial

```bash
$ git clone https://github.com/yuvadm/heroku-python-skeleton.git
$ cd heroku-python-skeleton
$ heroku create
$ git push heroku master
```

### Database

```bash
$ heroku addons:add heroku-postgresql:dev
-----> Adding heroku-postgresql:dev to some-app-name... done, v196 (free)
Attached as HEROKU_POSTGRESQL_COLOR
Database has been created and is available
$ heroku pg:promote HEROKU_POSTGRESQL_COLOR
$ heroku run python
```

and in the Python REPL:

```python
>>> from app import db
>>> db.create_all()
```

For a detailed introduction see [http://blog.y3xz.com/blog/2012/08/16/flask-and-postgresql-on-heroku/](http://blog.y3xz.com/blog/2012/08/16/flask-and-postgresql-on-heroku/).

## Configurations
See the multi-part tutorial [https://realpython.com/blog/python/flask-by-example-integrating-flask-and-angularjs/](https://realpython.com/blog/python/flask-by-example-integrating-flask-and-angularjs/) for details on creating configuration files and environment variables for running in local, staging, and production.

## Heroku environment variables (assuming separate staging and production heroku apps)
```bash
heroku config:set APP_SETTINGS=config.StagingConfig --remote stage
heroku config:set APP_SETTINGS=config.ProductionConfig --remote pro
```

At this point, heroku config should look something like
```bash

APP_SETTINGS:               config.StagingConfig
DATABASE_URL:               postgres://hjoufhlaxlwscd:SqPLHkGa-HNy2iLnULPKb-TiXy@ec2-54-204-43-138.compute-1.amazonaws.com:5432/d9vfvqnfm0i9gf
HEROKU_POSTGRESQL_NAVY_URL: postgres://hjoufhlaxlwscd:SqPLHkGa-HNy2iLnULPKb-TiXy@ec2-54-204-43-138.compute-1.amazonaws.com:5432/d9vfvqnfm0i9gf

```
