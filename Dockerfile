FROM python:3.7.4-slim
#
RUN apt-get update -y

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

ENV FLASK_APP app.py
ENV FLASK_DEBUG 1

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]