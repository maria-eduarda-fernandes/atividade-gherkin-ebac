# language: pt
Funcionalidade: Login na plataforma

  História de usuário:
    Como cliente da EBAC-SHOP
    Quero fazer o login na plataforma
    Para visualizar meus pedidos

  Contexto:
    Dado que o cliente está na tela de login da EBAC-SHOP

  Cenário: Login com dados válidos
    Dado que o cliente informou um e-mail válido
    E informou uma senha válida
    Quando clicar no botão de login
    Então o sistema deve direcionar o cliente para a tela de checkout

  Esquema do Cenário: Login com dados inválidos
    Dado que o cliente informou o usuário "<usuario>"
    E informou a senha "<senha>"
    Quando clicar no botão de login
    Então o sistema deve exibir a mensagem de alerta "Usuário ou senha inválidos"
    E o cliente deve permanecer na tela de login

    Exemplos:
      | usuario              | senha        |
      | cliente@ebac.com.br   | senhaerrada  |
      | usuarioinvalido       | senha123     |
      |                       | senha123     |
      | cliente@ebac.com.br   |              |
