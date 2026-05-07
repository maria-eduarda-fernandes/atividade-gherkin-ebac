# language: pt
Funcionalidade: Configurar produto para adicionar ao carrinho

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

  Contexto:
    Dado que o cliente está na página de detalhes de um produto da EBAC-SHOP

  Cenário: Configurar produto com cor, tamanho e quantidade válidos
    Dado que o cliente selecionou uma cor válida
    E selecionou um tamanho válido
    E informou a quantidade 2
    Quando clicar no botão de adicionar ao carrinho
    Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

  Cenário: Tentar adicionar produto sem selecionar cor
    Dado que o cliente selecionou um tamanho válido
    E informou a quantidade 1
    Mas não selecionou uma cor
    Quando clicar no botão de adicionar ao carrinho
    Então o sistema deve exibir uma mensagem informando que a cor é obrigatória
    E o produto não deve ser adicionado ao carrinho

  Cenário: Tentar adicionar produto sem selecionar tamanho
    Dado que o cliente selecionou uma cor válida
    E informou a quantidade 1
    Mas não selecionou um tamanho
    Quando clicar no botão de adicionar ao carrinho
    Então o sistema deve exibir uma mensagem informando que o tamanho é obrigatório
    E o produto não deve ser adicionado ao carrinho

  Cenário: Limpar configurações do produto
    Dado que o cliente selecionou uma cor válida
    E selecionou um tamanho válido
    E informou a quantidade 3
    Quando clicar no botão "limpar"
    Então as opções de cor, tamanho e quantidade devem voltar ao estado original

  Esquema do Cenário: Validar limite de quantidade de produtos por venda
    Dado que o cliente selecionou uma cor válida
    E selecionou um tamanho válido
    E informou a quantidade <quantidade>
    Quando clicar no botão de adicionar ao carrinho
    Então o sistema deve apresentar o resultado "<resultado>"

    Exemplos:
      | quantidade | resultado                                      |
      | 1          | Produto adicionado ao carrinho                 |
      | 10         | Produto adicionado ao carrinho                 |
      | 11         | Quantidade máxima permitida é de 10 produtos   |
      | 0          | A quantidade deve ser obrigatória e válida     |
