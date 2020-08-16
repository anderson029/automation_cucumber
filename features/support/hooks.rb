#before global

Before do 
  puts  'Estou sendo executado antes de cada cenário'
  @soma = 5 + 5
end

=begin
#montando before apenas para um cenário especifíco
Before '@entrada' do
 puts rodei apenas na tag entrada
end
=end

#after global
After do
  puts 'Estou sendo executado depois de cada cenário'
end