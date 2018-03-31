WIP: Notes

    agent/client for inginious-backend are *listen* addresses:
    $ inginious-backend tcp://0.0.0.0.:2001 tcp://0.0.0.0:2000
    - backend does not appear to care for the tasks directory

    inginious-agent-docker is difficult to run in a container. There are
    conflated container/host paths for tasks. Should perhaps be run stand-alone
    - problem: we are going to need NFS mounts
    - if we containerize this, it will maximize portability
    - but it shouldn't be in k8s so...
    - attempted use of DIND but problems arise
    - the docker-agent appears to be chosen in a round-robin manner (tested with 3x)
    - tasks directory is required
    - how to spread containers across entire fleet of machines?

#### docker-inginious

This repository contains contains for running INGInious as microservices. Four
containers are available, which can be configured in several different ways.
To build all the containers, run the builder script:

    $ ./build-all.sh

    inginious-agent-docker            latest              9bc193857939        3 minutes ago       486MB
    inginious-backend                 latest              cf2685a43c40        3 minutes ago       486MB
    inginious-base                    uwsgi               5bca39d7ecf9        5 minutes ago       489MB
    inginious-base                    latest              2713daa326c7        18 minutes ago      486MB

This will build all of the containers required to run a full instance of
INGInious. Note that there are two base containers (`latest`/`uwsgi`) which can
be launched in a similar fashion depending on how you want to deploy the
application.

To use these contains, a preconfigured `configuration.yaml` must be created, or
the INGInious frontend will attempt to use a local database/backend. Ensure
that the following settings are set properly (also depending on what kind of
service discovery is available):

    # Network path of wherever the inginious-backend container is running.
    backend: tcp://inginious-backend:2000

    # Database network path for the MongoDB shards.
    mongo_opt:
        database: INGInious
        host: inginious-mongodb

Note that the Docker grading agents are not configured in this file. The
configuration for agents is done on container launch via use of flags.
