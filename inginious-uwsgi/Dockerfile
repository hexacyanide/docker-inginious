FROM inginious-base:latest

RUN pip3 install uwsgi

ENTRYPOINT ["uwsgi"]
CMD ["--fastcgi-socket", ":9000", "--wsgi-file", "/usr/local/bin/inginious-webapp", \
     "--processes", "1", "--threads", "1", "--socket-timeout=120", \
     "--static-map", "/static=/usr/local/lib/python3.5/dist-packages/inginious/frontend/static"]

EXPOSE 9000/tcp
