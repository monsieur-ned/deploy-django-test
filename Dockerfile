FROM python:3.9

RUN pip install --upgrade pip

COPY ./requeriments.txt .
RUN pip install -r requeriments.txt

COPY ./backend /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh" ]