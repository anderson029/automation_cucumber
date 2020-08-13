#language: pt
#enconding: utf-8

Funcionalidade: Realizar Cálculos
    -Eu como usuário 
    -quero fazer uma soma

Cenário: Fazer uma soma
    Quando somo 2+2
    Então o resultado tem que ser 4