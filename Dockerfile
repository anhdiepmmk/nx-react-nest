FROM node:16.13
WORKDIR /usr/src/app

COPY . .
RUN yarn

ARG APP_NAME
ENV APP ${APP_NAME}
ENV PORT 8080

CMD yarn nx serve $APP --host 0.0.0.0