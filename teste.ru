load 'AnalisadorLinha.ru'
file = File.open("arquivo.txt")
file_data = file.readlines.map(&:chomp)
linhas = []
file_data.each_with_index do |val, index|
  linha = AnalisadorLinha.new(val, index)
  linha.analisar_frequencia
  linhas.append(linha)
end
linhas.each do |val|
  p "Frequência de palavras: #{val.palavras[:maior]}, palavra(s) mais frequente(s): #{val.palavras[:palavra]}"
end
file.close
