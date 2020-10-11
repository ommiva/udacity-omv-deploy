from python:stretch

COPY . /flaskapp
WORKDIR /flaskapp

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]

