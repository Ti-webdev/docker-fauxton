FROM node:7.9.0
MAINTAINER docker-fauxton@3apaxi.com
ENV FAUXTON_VERSION=1.1.11

EXPOSE 8000
RUN npm install --no-optional --only=production --quiet --global --no-color fauxton@$FAUXTON_VERSION
CMD ["fauxton"]
