#language: pt
#enconding: utf-8

Funcionalidade: Trabalahndo com chamadas de outros steps

@laranjas
Cenário: Amasso laranjas
  Dado que tenho 10 laranjas no estoque
  Quando eu amasso 2 laranjas
  Então eu verifico quantas laranjas sobraram no estoque 

@laranjas1
Cenário: Revendo laranjas
  Quando revendo 10 laranjas
  Então eu verifico com quantas laranjas eu fiquei