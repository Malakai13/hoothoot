FROM python:3.8

WORKDIR /tmp/hoothoot
COPY requirements.txt /tmp/hoothoot

RUN pip3 install -r requirements.txt

COPY owlet_monitor /tmp/hoothoot
COPY index.html /tmp/hoothoot

ENV OWLET_USER OWLET_PASS

CMD python3 -m http.server 8084 & python3 owlet_monitor > logfile