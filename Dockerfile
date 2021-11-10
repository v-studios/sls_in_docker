# -*- dockerfile -*-
# -buster:      1220MB
# -buster-slim:  430MB
# -alpine:       369MB

FROM node:17.0.1-alpine

RUN npm install -g serverless

WORKDIR /code
