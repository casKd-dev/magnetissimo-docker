FROM elixir:alpine

ENV MIX_ENV prod

RUN apk add --no-cache --update nodejs npm git &&\
    git clone https://github.com/sergiotapia/magnetissimo.git /magnetissimo &&\
    cd /magnetissimo &&\
    mix local.hex --force &&\
    mix local.rebar --force &&\
    mix deps.get --only prod &&\
    mix compile &&\
    cd /magnetissimo/apps/magnetissimo_web/assets &&\
    npm install &&\
    node node_modules/webpack/bin/webpack.js --mode production &&\
    cd /magnetissimo/apps/magnetissimo_web &&\
    mix phx.digest &&\
    apk del git npm

EXPOSE 4000

COPY prod.exs /magnetissimo/config/prod.exs

COPY entrypoint.sh /entrypoint.sh

VOLUME /magnetissimo/config
ENTRYPOINT ["ash", "-c", "/entrypoint.sh"]
