FROM python:3.9-alpine

COPY . /app
WORKDIR /app
RUN apk add --no-cache --update --virtual .tmp-build-deps gcc linux-headers \
    && cd /app \
    && pip install -e . 

#FROM python:3.9-alpine 
#COPY --from=builder  /usr/local/bin/mycli /usr/local/bin/mycli

CMD ["mycli","--help"]
