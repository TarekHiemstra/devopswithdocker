# EXERCISE 3.4: BUILDING IMAGES FROM INSIDE OF A CONTAINER

FROM docker
WORKDIR /usr/src/app
COPY ./builder.sh /usr/src/app
RUN chmod a+x /usr/src/app/builder.sh
ENTRYPOINT ["sh", "builder.sh"]
