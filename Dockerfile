FROM node:18

WORKDIR /app

# Set safe npm settings to avoid permission errors
RUN npm config set unsafe-perm true
RUN npm config set registry https://registry.npmjs.org/

COPY package.json ./
RUN npm install --legacy-peer-deps

COPY . .
EXPOSE 3000

CMD ["npm", "start"]
