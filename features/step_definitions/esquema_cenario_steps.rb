Dado('que tenha {int} de pneus no estoque') do |quantidade|
  @pneus = quantidade
end

Quando('{int} essa mesma mercadoria') do |vendo|
  @vendas = @pneus - vendo
end

Então('vejo quantos pneus sobraram no {int}') do |estoque|
  expect(@vendas).to eql estoque
end

Quando('{int} uma nova remessa') do |compras|
  @nova_remessa = @pneus + compras
end
  
Então('vejo a quantidade {int} de pneus') do |total|
  expect(@nova_remessa).to eql total
end
    