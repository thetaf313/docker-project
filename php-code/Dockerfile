# Utiliser une image officielle PHP avec FPM
FROM php:8.2-fpm

# Installer les extensions nécessaires
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_pgsql

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier uniquement les fichiers nécessaires
COPY . .

# Donner les bonnes permissions
RUN chown -R www-data:www-data /var/www/html

# Pas besoin d’exposer un port ici, nginx le fera
