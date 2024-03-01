FROM node:18.17.1

# Répertoire de travail dans le conteneur
WORKDIR /app

# Run the image as a non-root user
RUN adduser -D myuser
USER myuser


# Copier le package.json et le package-lock.json pour installer les dépendances
COPY package*.json ./

# Installer les dépendances (sans --production pour inclure les devDependencies)
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Définir la variable d'environnement pour le port du serveur
ENV SERVER_PORT 8090

# Exposer le port du serveur
EXPOSE $SERVER_PORT

# Commande pour démarrer l'application en mode production
CMD ["npm", "start"]
