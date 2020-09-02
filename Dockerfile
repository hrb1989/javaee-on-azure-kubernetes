FROM payara/server-full
COPY target/javaee-cafe.war $DEPLOY_DIR
#RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.8.jar
COPY postgresql-42.2.8.jar /opt/payara/postgresql-42.2.8.jar
RUN cp /opt/payara/postgresql-42.2.8.jar ${PAYARA_DIR}/glassfish/domains/${DOMAIN_NAME}/lib && rm /opt/payara/postgresql-42.2.8.jar
EXPOSE 8080
