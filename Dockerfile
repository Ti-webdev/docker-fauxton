FROM node:6.5.0
MAINTAINER docker-fauxton@3apaxi.com
ENV FAUXTON_VERSION=1.1.9

EXPOSE 8000
RUN npm install --no-optional --only=production --quiet --global --no-color fauxton@$FAUXTON_VERSION
CMD ["fauxton"]
