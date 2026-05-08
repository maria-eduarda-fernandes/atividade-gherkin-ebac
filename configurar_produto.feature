Funcionalidade: Configuração de produto

Como cliente da EBAC-SHOP
Quero configurar meu produto
Para inserir no carrinho

Contexto:
Dado que o cliente está na página do produto

Cenário: Configurar produto com dados válidos
Quando selecionar cor, tamanho e quantidade válida
Então o produto deve ser adicionado ao carrinho

Cenário: Limite máximo de produtos
Quando selecionar uma quantidade maior que 10 produtos
Então o sistema deve exibir uma mensagem de limite excedido

Cenário: Limpar configuração do produto
Quando clicar no botão limpar
Então o produto deve voltar ao estado original
