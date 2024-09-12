FROM node:slim

WORKDIR /app
COPY . .
RUN npm ci

RUN echo "gitsha"
ENV git_sha=${KOYEB_GIT_SHA}
RUN echo "${git_sha}"

RUN echo "KOYEB_GIT_SHA"
ENV git_sha=${KOYEB_GIT_SHA}

ARG PORT
EXPOSE ${PORT:-3000}

CMD ["npm", "run", "start"]
