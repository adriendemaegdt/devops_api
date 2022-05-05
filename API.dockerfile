FROM python:3

COPY model.json model.json
COPY app.py app.py

RUN pip install Flask scikit-learn numpy

CMD [ "python", "app.py" ]