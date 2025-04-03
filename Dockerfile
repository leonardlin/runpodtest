FROM python:3.12-slim

COPY bootstrap.sh ./
RUN chmod a+x bootstrap.sh

RUN apt-get update
RUN apt-get install -y wget
RUN wget -qO- cli.runpod.net | bash
RUN apt-get clean

CMD ["./bootstrap.sh"]
