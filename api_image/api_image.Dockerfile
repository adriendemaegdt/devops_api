FROM python:3.8-slim-buster


COPY requirements.txt requirements.txt
COPY app.py app.py

COPY --chown=node:node ./package*.json ./


RUN pip3 install -r requirements.txt

# RUN python3 train.py

CMD [ "python3", "app.py"]