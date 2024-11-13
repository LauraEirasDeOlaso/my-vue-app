# Imagen base de Node
FROM node:16-alpine

# Dir. de trabajo
WORKDIR /app

# Copia los archivos package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de la aplicación
COPY . .

# Expone el puerto en el que Vue sirve la aplicación
EXPOSE 8080

# Comando para correr la aplicación
CMD ["npm", "run", "serve"]
