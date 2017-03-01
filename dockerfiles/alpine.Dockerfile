# docker build -t kaluzki/alpine -t kaluzki/alpine:3.5 -f alpine.Dockerfile .
FROM alpine:3.5
MAINTAINER kaluzkidemjan@gmail.com

ADD ./root .