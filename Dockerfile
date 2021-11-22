FROM alpine

RUN apk update && apk add directfb

COPY sqsc.ppm /sqsc.ppm

CMD ["sh", "-c", "while :; do fbsplash -s /sqsc.ppm ; done"]

