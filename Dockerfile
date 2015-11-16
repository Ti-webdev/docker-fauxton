FROM node:4.0.0
MAINTAINER docker-fauxton@3apaxi.com
ENV FAUXTON_VERSION=1.0.6

EXPOSE 8000
RUN npm install --no-optional --only=production --quiet --global --no-color fauxton@$FAUXTON_VERSION
CMD ["fauxton"]
