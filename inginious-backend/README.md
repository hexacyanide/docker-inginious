#### inginious-backend container

    # Build this container (assuming base is already built).
    esu@inginious-dev:~$ ./build


    # Listen for agents/clients on default host/port (0.0.0.0:{2001,2000}).
    esu@inginious-dev:~$ docker run --rm -it inginious-backend:latest
    2018-03-30 23:31:57,175 - inginious.backend - INFO - Backend started


    # Run with custom flags:
    esu@inginious-dev:~$ docker run --rm -it inginious-backend:latest -h
    usage: inginious-backend [-h] [-v] agent client

    positional arguments:
      agent          Address to which the agents will connect to the backend in
                     the form protocol://host:port. For example,
                     tcp://127.0.0.1:2001
      client         Address to which the client will connect to the backend in
                     the form protocol://host:port. For example,
                     tcp://127.0.0.1:2000

    optional arguments:
      -h, --help     show this help message and exit
      -v, --verbose  increase output verbosity


    # Run with flags or custom host/ports.
    esu@inginious-dev:~$ docker run --rm -it inginious-backend:latest --verbose tcp://127.0.0.1:2001 tcp://0.0.0.0:2000
    2018-03-30 23:35:18,274 - inginious.backend - INFO - Backend started
