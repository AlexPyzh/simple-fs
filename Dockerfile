###

FROM    mhart/alpine-node

RUN     npm install -g http-server

WORKDIR /site
ADD     ./    /site
COPY index.html /site
COPY /img /site/img
COPY /mp3 /site/mp3
COPY /serviceImg /site/serviceImg

# The default port of the application
EXPOSE  5757

CMD ["http-server", "--cors", "-p5757", "/site"]