## Image Base
#FROM debian
FROM alpine:3.7

# INFORMACOES DO SERVIDOR
LABEL description="Webserver"
LABEL version="1.0"

#VARIAVEIS DA APLICACAO
ENV FLASK_APP=app.py
ENV FLASK_DEBUG=1
ENV DB_HOST=database-1.ccdoiuqm2gfn.us-east-2.rds.amazonaws.com
ENV DB_NAME=teste
ENV DB_USER=postgres
ENV DB_PASSWD=teste123

## Diretorio de inicio e da aplicacao
VOLUME /app
WORKDIR /app
ADD . /app
COPY app.py /app

RUN \
 apk add --no-cache bash python3 postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc python3-dev musl-dev postgresql-dev && \
 python3 -m pip install -r /app/requirements.txt --no-cache-dir && \
 apk --purge del .build-deps

CMD ["python3","app.py"]

EXPOSE 8000
