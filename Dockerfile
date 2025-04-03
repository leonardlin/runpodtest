FROM python:3.12-slim

COPY bootstrap.sh ./
RUN chmod a+x bootstrap.sh

CMD ["./bootstrap.sh"]
