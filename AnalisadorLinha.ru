class AnalisadorLinha
    def initialize(conteudo, num_linha)
        @num_linha = num_linha
        @conteudo = conteudo
        @palavras
    end
    attr_reader :conteudo
    attr_accessor :palavras
    def analisar_frequencia
        palavra = ''
        array_palavras= @conteudo.split
        maior = 0
        array_palavras.each do | x |
            if array_palavras.count(x) > maior
                maior = array_palavras.count(x)
            end
        end
        array_palavras.each do |x|
            if array_palavras.count(x) == maior
                if !palavra.include? x
                    palavra = palavra + x + ','
                end
            end
        end
        @palavras= {:maior => maior,:palavra => palavra.delete_suffix(",")}
    end
end
