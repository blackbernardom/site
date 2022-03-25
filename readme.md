This is project ....
Create a site with one command, this command is make
## Requeriments
 - Rancher Desktop
 - Docker Desktop
 - MakerFile Installed

---------------------------------------
Clone o projeto

` git clone https://github.com/blackbernardom/site.git `

Faça login no docker

` docker login `

Mude no Dokcker file = "description="Disponibilizando site com NGINX" maintainer="Bernardo Brodt<bernardoclassea@gmail.com>"

Mude no Makefile DOCKERIMAGE para o nome da sua imagem.

por fim execute:

` make `

------
Você pode executar 2x o make pois na primeira vez pode haver erro na criação da namespace

