#language: pt
#enconding: utf-8

Funcionalidade: Cálculo de subtração e soma. 
  - Eu como usuário quero fazer cálculo de subtração e soma.

Contexto: teste
Dado eu tenha 10 laranjas


@positivo_sub @smoke
Cenário: Fazer subtração
  Quando eu como 2 laranjas
  Então eu vejo quantas laranjas sobraram
  
@positivo_soma
Cenário: Fazer soma
  Quando eu compro 5 laranjas
  Então eu vejo quantas laranjas eu tenho