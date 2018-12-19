
class Pessoa
    def initialize(nome, sobrenome)
        @nome = nome
        @sobrenome = sobrenome
    end

    def nome_completo
        puts "#{@nome} #{@sobrenome}"
    end
end




puts "Cadastro Pessoa"
puts "Com Orientação a Objetos"
puts "========================="
pesso1 = Pessoa.new("gustavo", "garcia pereira")
#pesso1.inicializa("gustavo", "garcia")
pesso1.nome_completo