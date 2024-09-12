FROM node:slim

WORKDIR /app
COPY . .
RUN npm ci

RUN echo 'TEST'

ARG PORT
EXPOSE ${PORT:-3000}

CMD ["npm", "run", "start"]
