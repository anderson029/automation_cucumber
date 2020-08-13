#language: pt
#enconding: utf-8

Funcionalidade: Controlar estoque
    - Como almoxarifado
    - quero ter controle de entrada e saída de pneus

@entrada
Esquema do Cenário: Entrada de estoque
  Dado que tenha <quantidades> de pneus no estoque
  Quando <compro> uma nova remessa 
  Então vejo a quantidade <total> de pneus 

Exemplos: Estoque de pneus da fábrica x

    | quantidades | compro | total |
    | 1500        | 50     | 1550   |
    | 100         | 50     | 150    |
    | 1500        | 1      | 1501   |
    | 2000        | 100    | 2100   |
    | 1000        | 25     | 1025   |

@saida
Esquema do Cenário: Saída de estoque
  Dado que tenha <quantidades> de pneus no estoque
  Quando <vendo> essa mesma mercadoria 
  Então vejo quantos pneus sobraram no <estoque>

Exemplos: Estoque de pneus da fábrica x

    | quantidades | vendo | estoque |
    | 50          | 10    | 40      |
    | 100         | 50    | 50      |
    | 1500        | 1     | 1499    |
    | 2000        | 100   | 1900    |
    | 1000        | 25    | 975     |