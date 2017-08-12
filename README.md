# VOTE NO DESTINO
[ ![Codeship Status for marcio-soares/vote-no-destino](https://app.codeship.com/projects/e74f54d0-61dc-0135-d48c-76c7a8899292/status?branch=master)](https://app.codeship.com/projects/239713)

Essa é uma simples aplicação de escolha de destinos no Brasil, com apenas 5 destinos no banco de dados.

O processo de escolha é intuitivo, após a escolha de um destino, já é possível finalizar a escolha deixando seu nome e seu email.

Feito a escolha você será submetido para a página de todos as escolhas, feitas pelo usuário atual e de outros usuários.

Foi utilizado nessa aplicação o framework Ruby on Rails embbeded by docker.

### Instalar

Para rodar em sua máquina certifique-se que você tenha o docker instalado, caso não tenha poderá ser baixado em [Docker.com](https://www.docker.com/)  

Com o docker instalado abra um terminal e execute o seguinte comando:

````
  * docker-compose build
  * docker-compose run --rm app bundle install
  * docker-compose run --rm app bundle exec rails db:create db:migrate db:seed
  * docker-compose up
````
Agora acesse seu navegador no endereço: 
```` http://localhost:3000 ```` ou acesse a aplicação no [Heroku](http://vote-no-destino.heroku.com)
