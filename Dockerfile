# Usa la imagen base de PHP con Apache
FROM php:apache

# Copia los archivos de tu aplicación al directorio de trabajo en el contenedor
COPY ./php /var/www/html

# Instala las extensiones de PHP necesarias para tu aplicación
# Ejemplo: si necesitas MySQL, puedes descomentar la siguiente línea
# RUN docker-php-ext-install mysqli pdo_mysql

# Expon el puerto 80 para que Apache pueda recibir solicitudes web
EXPOSE 80

# El comando por defecto que se ejecutará cuando se inicie el contenedor
# No es necesario especificarlo si estás utilizando Docker Compose
# CMD ["apache2-foreground"]
