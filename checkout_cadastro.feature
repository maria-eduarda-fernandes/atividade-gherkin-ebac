Funcionalidade: Cadastro no checkout

Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que o cliente está na tela de cadastro

Cenário: Cadastro com dados obrigatórios preenchidos
Quando preencher os campos obrigatórios com dados válidos
Então o cadastro deve ser concluído com sucesso

Esquema do Cenário: Validar formato do e-mail
Quando preencher o campo e-mail com o valor "<email>"
Então o sistema deve exibir a mensagem "<mensagem>"

Exemplos:
| email             | mensagem                         |
| teste@teste.com   | Cadastro realizado com sucesso   |
| teste.com         | E-mail inválido                  |
| teste@            | E-mail inválido                  |

Cenário: Cadastro com campos vazios
Quando tentar finalizar o cadastro sem preencher os campos obrigatórios
Então o sistema deve exibir uma mensagem de alerta
