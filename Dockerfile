FROM ubuntu:bionic

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs \
  && apt-get install -y build-essential \
  && npm install -g npm@6 \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["mvn"]