FROM alpine

RUN apk update && apk add directfb

COPY gyro.ppm /sqsc.ppm

CMD ["sh", "-c", "while :; do fbsplash -s /sqsc.ppm ; done"]

