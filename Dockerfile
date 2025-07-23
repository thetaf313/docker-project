FROM nginx:latest

# Copier le fichier de configuration NGINX
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers PHP (et Dockerfile PHP) dans l'image
COPY php-code /var/www/html

# Exposer le port 80 (attendu par Render)
EXPOSE 80
