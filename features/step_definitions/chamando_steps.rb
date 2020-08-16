Dado('que tenho {int} laranjas no estoque') do |laranjas|
  @laranjas= laranjas
end

Quando('eu amasso {int} laranjas') do |amasso|
  @result= @laranjas-amasso
end

Então('eu verifico quantas laranjas sobraram no estoque') do
  expect(@result).to eql 8
end

Quando('revendo {int} laranjas') do |revendo|
  steps %Q{
    Dado que tenho 10 laranjas no estoque
}
  @result = @laranjas - revendo
end

Então('eu verifico com quantas laranjas eu fiquei') do
  expect(@result).to eql 0
end