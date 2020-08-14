#language: pt
#enconding: utf-8

Funcionalidade: Controlar estoques

#data table com linhas
@tst
Cenário: Vender pneus
  Dado que tenho estoque de pneus
    |pneus|10|
    |borracha|15|
  Quando vendo 5 pneus
  Então verifico quantos ficaram no estoque

#table em colunas
@tst1
  Cenário: Comprar pneus
  Dado que tenho pneus
    |pneus|borracha|
    |10   |50|
  Quando compro 5 pneus
  Então verifico quantidade máxima de produto no estoque