# Usando a imagem base do PHP com Apache
FROM php:8.3-apache

# Atualizando e instalando pacotes necessários para CodeIgniter e aplicação
RUN apt-get -y update && \
    apt-get install -y libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd && \
    docker-php-ext-install mysqli

# Alterando a configuração do Apache para permitir "AllowOverride All"
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Habilitando o módulo rewrite do Apache
RUN a2enmod rewrite

# Reiniciando o serviço Apache
RUN service apache2 restart
