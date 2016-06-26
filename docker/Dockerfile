FROM ubuntu:latest

ENV HOME /home/webapp
ENV WEBAPP goji-sample-pipeline-docker

RUN useradd -c "Webapp user" -d $HOME -m webapp

RUN mkdir -p $HOME

USER webapp

ADD ../public $HOME/public
ADD ../views $HOME/views
COPY ./$WEBAPP $HOME/$WEBAPP
COPY config.toml $HOME/config.toml

WORKDIR $HOME

EXPOSE 8000

ENTRYPOINT ["/home/webapp/goji-sample-pipeline-docker"]
