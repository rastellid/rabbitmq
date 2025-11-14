FROM rabbitmq:3.7.16-management

# Copia i plugin abilitati
COPY enabled_plugins /etc/rabbitmq/enabled_plugins

# Esponi le porte necessarie
EXPOSE 5672 15672 1883 8883 15675

# Etichette
LABEL maintainer="RabbitMQ with MQTT"
LABEL version="3.7.16"
LABEL description="RabbitMQ 3.7.16 with MQTT protocol enabled"
