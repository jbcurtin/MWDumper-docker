FROM maven:alpine
WORKDIR /app
VOLUME /dumps
VOLUME /sql
RUN apk update && \
      apk add git ca-certificates && \
      git clone https://phabricator.wikimedia.org/diffusion/MWDU/mwdumper.git && \
      cd mwdumper && \
      ls && \
      mvn package && \
      cd target && \
      mv mwdumper*.jar ../../mwdumper.jar
COPY run.sh ./
