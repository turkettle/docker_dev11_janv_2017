FROM tutum/apache-php

ENV TERM xterm

# Installation des dépendances pour Composer.
RUN apt-get update
RUN apt-get install unzip -y

# Installation de Composer.
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/bin/composer

# Installation des packets pour le développement.
RUN apt-get install nano -y
