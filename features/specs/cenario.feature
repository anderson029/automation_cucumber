#language: pt
#enconding: utf-8

Funcionalidade: Cálculo de subtração e soma. 
  - Eu como usuário quero fazer cálculo de subtração e soma.

Cenário: Fazer subtração
  Dado eu tenha 10 laranjas
  Quando eu como 2 laranjas
  Então eu vejo quantas laranjas sobraram
  
@tst
Cenário: Fazer soma
  Dado eu tenha 10 laranjas
  Quando eu compro 5 laranjas
  Então eu vejo quantas laranjas eu tenho