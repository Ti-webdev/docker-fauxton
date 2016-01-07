FROM node:5.3.0
MAINTAINER docker-fauxton@3apaxi.com
ENV FAUXTON_VERSION=1.0.8

EXPOSE 8000
RUN npm install --no-optional --only=production --quiet --global --no-color fauxton@$FAUXTON_VERSION
CMD ["fauxton"]
