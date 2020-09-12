FROM rabbitmq:3.8.0-management

ENV delayed_message_plugin_version 3.8.0 
ENV delayed_message_plugin_filename rabbitmq_delayed_message_exchange-${delayed_message_plugin_version}.ez

ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v${delayed_message_plugin_version}/${delayed_message_plugin_filename} /opt/rabbitmq/plugins
RUN rabbitmq-plugins enable rabbitmq_delayed_message_exchange
RUN chown rabbitmq:rabbitmq /opt/rabbitmq/plugins/${delayed_message_plugin_filename}
RUN chmod +r /opt/rabbitmq/plugins/${delayed_message_plugin_filename}

# Management API port
EXPOSE 15672 

#AMPQ ports
EXPOSE 5672 5671
