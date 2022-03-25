FROM nginx
LABEL version="1.0.0" description="Disponibilizando site com NGINX" maintainer="Bernardo Brodt<bernardoclassea@gmail.com>"
RUN cd / && mkdir Arquivos && chmod 777 -R Arquivos/
COPY ./site/index.html /usr/share/nginx/html/
VOLUME /Arquivos/
EXPOSE 80
WORKDIR /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]