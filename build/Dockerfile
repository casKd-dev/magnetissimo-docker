FROM elixir:alpine

ENV MIX_ENV prod

RUN apk add --no-cache --update nodejs npm git &&\
    git clone https://github.com/sergiotapia/magnetissimo.git /magnetissimo &&\
    cd /magnetissimo &&\
    mix local.hex --force &&\
    mix local.rebar --force &&\
    mix deps.get &&\
    cd /magnetissimo/apps/magnetissimo_web/assets &&\
    npm install &&\
    apk del git npm

EXPOSE 4000

COPY entrypoint.sh /entrypoint.sh

VOLUME /magnetissimo/config
ENTRYPOINT ["ash", "-c", "/entrypoint.sh"]
