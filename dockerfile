# Base image
FROM apache/nifi:latest

# Maintainer
LABEL maintainer="samuel.pereira@sptech.school"

# Copiar o template para o diretório de templates do NiFi
COPY SMTP_template.xml /opt/nifi/nifi-current/conf/templates/SMTP_template.xml

# Definir o diretório de trabalho
WORKDIR /opt/nifi/nifi-current

# Expor as portas necessárias
EXPOSE 8080 8443

# Comando para iniciar o NiFi
CMD ["./bin/nifi.sh", "run"]
