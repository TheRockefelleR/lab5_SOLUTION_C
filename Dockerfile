# Etap pierwszy
# Wykorzystanie obrazu bazowego alpine
FROM node:alpine as etapPierwszy

# Okreslenie zmiennej odpowiadajacej za przypisanie wersji podczas budowy kontenera
ARG VERSION
ENV APP_VERSION=$VERSION

# Okreslenie katalogu roboczego kontenera
WORKDIR /app

# Przekopiowanie potrzebnych plikow do budowy strony
COPY . .

# Instalacja wszystkich wymaganych zaleznosci node
RUN npm install

# Zbudowanie naszej aplikacji
RUN npm run build



# Etap drugi
FROM nginx:latest


# Przekopiowanie zbudowanej strony
COPY --from=etapPierwszy /app/build /usr/share/nginx/html

# Nasłuchiwanie wewnetrzne na porcie 80
EXPOSE 80

# Sprawdzenie dzialania aplikacji
HEALTHCHECK --interval=10s --timeout=1s \
  CMD curl -f http://localhost:80/ || exit 1

# Uruchomienie nginx
ENTRYPOINT [ "nginx" ]
CMD ["-g", "daemon off;"]