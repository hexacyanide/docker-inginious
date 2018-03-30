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
