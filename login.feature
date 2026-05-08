Funcionalidade: Login na plataforma

Como cliente da EBAC-SHOP
Quero realizar autenticação na plataforma
Para visualizar meus pedidos

Contexto:
Dado que o cliente está na tela de login

Cenário: Login com dados válidos
Quando inserir usuário e senha válidos
Então o sistema deve direcionar para a tela de checkout

Esquema do Cenário: Login com dados inválidos
Quando inserir o usuário "<usuario>" e a senha "<senha>"
Então o sistema deve exibir a mensagem "Usuário ou senha inválidos"

Exemplos:
| usuario          | senha     |
| usuario@teste.com| 12345     |
| teste@teste.com  | senha123  |
|                   | 123456    |
