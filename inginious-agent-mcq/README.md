#### inginious-agent-mcq container

Full container for the multiple choice grading agent. By default, the agent will
look in `/inginious/tasks` for tasks, and will look for the backend at the DNS
name `inginious-backend`. To run the container:

    docker run \
      --rm -it \
      -v /some/path/tasks:/inginious/tasks \
    inginious-agent-mcq:latest

To override these defaults, run the container with additional arguments:

    docker run \
      --rm -it \
      -v /some/path/tasks:/other/tasks \
    inginious-agent-mcq:latest \
      --tasks /other/tasks \
      tcp://172.10.5.2:2001

To view all flags, see the
[agent documentation](https://inginious.readthedocs.io/en/latest/commands_doc/inginious-agent-mcq.html)
or pass the help flag:

    docker run --rm -it inginious-agent-mcq:latest --help
