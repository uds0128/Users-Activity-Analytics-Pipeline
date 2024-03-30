FROM postgres:latest

COPY configure-db.sh /configure-db.sh
COPY start-service.sh /start-service.sh

USER postgres

RUN bash /configure-db.sh

CMD ["sh", "/start-service.sh"]