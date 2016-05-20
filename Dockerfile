# Dockerfile
FROM ubuntu:14.04

# Set the locale
RUN locale-gen es_ES.UTF-8
ENV LANG es_ES.UTF-8
ENV LANGUAGE es_ES:es
ENV LC_ALL es_ES.UTF-8

# Install dependencies
RUN sh -c "echo 'deb http://apt.anybox.fr/openerp common main' >> /etc/apt/sources.list.d/openerp"
RUN apt-get update

