FROM debian:stretch AS zenaton-installer

RUN apt-get update \
 && apt-get install -y curl \
 && curl https://install.zenaton.com | sh \
 && apt-get remove -y curl \
 && apt-get clean

FROM ruby:stretch

COPY --from=zenaton-installer /root/.zenaton /root/.zenaton
RUN ln -s /root/.zenaton/zenaton /usr/local/bin/zenaton

WORKDIR /app
COPY . .
RUN bundle install

CMD ["./bin/launch_worker"]
