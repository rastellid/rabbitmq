FROM rabbitmq:3.8.0-management

COPY rabbitmq.conf /etc/rabbitmq/

ENV RABBITMQ_NODENAME=rabbit@localhost

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# Abilita il plugin MQTT
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt rabbitmq_web_mqtt

USER rabbitmq:rabbitmq

# Espone le porte necessarie
# 5672: AMQP
# 15672: Management UI
# 1883: MQTT
# 8883: MQTT over TLS
# 15675: Web MQTT (MQTT over WebSocket)
EXPOSE 5672 15672 1883 8883 15675
