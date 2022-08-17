Before do |scenario|
    puts 'Iniciando Cenário'
end

After do |scenario|
    puts 'Finalizando Cenário'
end

After('@limpar_banco') do
    puts 'Depois do cenário página inicial google'
end
