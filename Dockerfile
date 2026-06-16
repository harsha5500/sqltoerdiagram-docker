FROM node:lts-alpine3.24
RUN apk add --no-cache git
RUN git clone https://github.com/royalbhati/sqltoerdiagram.git
WORKDIR /sqltoerdiagram
RUN npm install
RUN npm install -g http-server
RUN npm run build
CMD ["http-server","dist","-d false", "--no-dotfiles"]

