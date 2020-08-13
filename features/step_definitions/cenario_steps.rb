Dado('eu tenha {int} laranjas') do |valor1|
  @laranja = valor1
end

Quando('eu como {int} laranjas') do |valor2|
  @result= @laranja - valor2 
end

Então('eu vejo quantas laranjas sobraram') do
  expect(@result).to eql 8
end

Quando('eu compro {int} laranjas') do |comprei|
  @compra_total = @laranja + comprei 
end

Então('eu vejo quantas laranjas eu tenho') do
  expect(@compra_total).to eql 15
end
