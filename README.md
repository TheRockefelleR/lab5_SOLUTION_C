# lab5_SOLUTION_C

# Stworzenie obrazu
docker build --build-arg VERSION=`wersja` -t `nazwa_obrazu` .

![image](https://user-images.githubusercontent.com/84729968/232249224-ce1a4cee-7957-4be1-adc1-88a87fcacbee.png)

# Uruchomienie kontenera bazujacego na naszym obrazie
docker run -d -p `port-zewnetrzny`:`port-wewnetrzny` --name `nazwa_kontenera` `nazwa_obrazu`

![image](https://user-images.githubusercontent.com/84729968/232249307-e1352ae1-53fd-41a0-966c-4f1294581608.png)

# Sprawdzenie (HEALTHCHECK)
docker ps

![image](https://user-images.githubusercontent.com/84729968/232249345-bae12b79-39b2-43c3-8ad9-1473d21ebe16.png)

# Sprawdzenie działania 

![image](https://user-images.githubusercontent.com/84729968/232249419-151a1c34-2ff0-4859-8120-d0ff03dbbe0f.png)

# Pozostałe informacje
Aplikacja została stworzona w react który posiada możliwość zbudowania strony przy pomocy polecenia npm run build
