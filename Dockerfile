# Dockerfile para site estático do CEPEJE
FROM nginx:alpine

# Remove a página padrão do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do site
COPY index.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/

# Expõe a porta 80
EXPOSE 80

# Comando padrão do nginx
CMD ["nginx", "-g", "daemon off;"]