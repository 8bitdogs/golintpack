FROM golang:1.11

RUN curl -L https://git.io/vp6lP | sh

CMD [ "gometalinter", "./..." ]
