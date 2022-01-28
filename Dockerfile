FROM nginx:alpine AS web
COPY my-nuxt-project/nginx.conf /etc/nginx/
WORKDIR /app
COPY my-nuxt-project/package.json ./
COPY my-nuxt-project/nuxt.config.js ./
COPY my-nuxt-project/static ./static/
COPY my-nuxt-project/.nuxt ./.nuxt/
RUN apk add --no-cache nodejs npm
RUN npm install --production
WORKDIR /
CMD nginx -c /etc/nginx/nginx.conf \
  && cd app \
  && npm run start