Dado('que tenho estoque de pneus') do |table|
  #table com linhas (transformando 'pneus'em hash)
  @pneus = table.rows_hash['pneus'].to_i 
  @borracha = table.rows_hash['borracha'].to_i 
end

Quando('vendo {int} pneus') do |vendo|
 @vendas = @pneus - vendo
end

Então('verifico quantos ficaram no estoque') do
  expect(@vendas).to eql 5
end

Dado('que tenho pneus') do |table|
 #usando table em forma de colunas
  table.hashes.each do |valor|
    @compras = valor['pneus'].to_i
    @borracha = valor['borracha'].to_i
  end
end

Quando('compro {int} pneus') do |compra|
  @result = @compras + compra
end

Então('verifico quantidade máxima de produto no estoque') do
  expect(@result).to eql 15
end