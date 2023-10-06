Feature: Cliente online

Como um cliente online
Quero que o sistema me mostre minhas compras
Para eu poder controlar minhas despesas

Scenario: Obter dados da API

Dado que o cliente tem conexão com a internet
Quando o cliente solicitar para carregar suas compras
Então o sistema deve exibir suas compras vindo de uma API 
E substituir os dados do cache com os dados mais atuais

Feature: Cliente offline
Como um cliente offlineQuero que o sistema me mostre minhas últimas compras gravadas
Para eu poder ver minhas despesas mesmo sem ter internet

Scenario: Obter dados do cache

Dado que o cliente não tem conexão com a internet
E existem dados gravados no cache
E os dados do cache forem mais novos que 3 dias
Quando o cliente solicitar para carregar suas compras
Então o sistema deve exibir suas compras vindas do cache