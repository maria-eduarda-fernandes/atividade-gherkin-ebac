# language: pt
Funcionalidade: Cadastro no checkout

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

  Contexto:
    Dado que o cliente está na tela de cadastro do checkout

  Cenário: Cadastrar cliente com todos os dados obrigatórios preenchidos
    Dado que o cliente preencheu todos os campos obrigatórios marcados com asterisco
    E informou um e-mail com formato válido
    Quando clicar no botão de cadastrar
    Então o cadastro deve ser concluído com sucesso
    E o cliente deve conseguir finalizar a compra

  Cenário: Tentar cadastrar cliente com e-mail em formato inválido
    Dado que o cliente preencheu todos os campos obrigatórios marcados com asterisco
    E informou o e-mail "clienteemail.com"
    Quando clicar no botão de cadastrar
    Então o sistema deve exibir uma mensagem de erro para o campo e-mail
    E o cadastro não deve ser concluído

  Cenário: Tentar cadastrar cliente com campos obrigatórios vazios
    Dado que o cliente deixou um ou mais campos obrigatórios vazios
    Quando clicar no botão de cadastrar
    Então o sistema deve exibir uma mensagem de alerta informando que existem campos obrigatórios não preenchidos
    E o cadastro não deve ser concluído

  Esquema do Cenário: Validar cadastro com diferentes combinações de dados
    Dado que o cliente informou o nome "<nome>"
    E informou o e-mail "<email>"
    E informou o endereço "<endereco>"
    Quando clicar no botão de cadastrar
    Então o sistema deve apresentar o resultado "<resultado>"

    Exemplos:
      | nome          | email                    | endereco              | resultado                                                   |
      | Maria Silva   | maria@ebac.com.br         | Rua Teste, 100        | Cadastro concluído com sucesso                              |
      | Maria Silva   | mariaebac.com.br          | Rua Teste, 100        | Mensagem de erro para e-mail inválido                       |
      |               | maria@ebac.com.br         | Rua Teste, 100        | Mensagem de alerta para campos obrigatórios não preenchidos |
      | Maria Silva   |                          | Rua Teste, 100        | Mensagem de alerta para campos obrigatórios não preenchidos |
      | Maria Silva   | maria@ebac.com.br         |                       | Mensagem de alerta para campos obrigatórios não preenchidos |
