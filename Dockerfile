FROM python:3.10-slim-buster

WORKDIR /python-docker

COPY requirenments.txt .
RUN pip3 install -r requirenments.txt

ENV BOT_TOKEN ''

COPY *.py ./

CMD [ "python3", "-u", "main.py"]