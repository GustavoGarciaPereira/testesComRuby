class Paciente
    # def initialize(nome, sobrenome)
    #     @nome = nome
    #     @sobrenome = sobrenome
    # end

    def informar_dados_gerais_do_paciente
        puts "Digite seu Primeiro Nome:"
        @nome = gets.chomp
        puts "Digite seu Seu Sobrenome:"
        @sobrenome = gets.chomp
    end

    def informar_dados_do_exame
        puts "Informe seu peso (Kg): "
        @peso = gets.chomp
        puts "Informe Sua Altura (m): "
        @altura = gets.chomp
    end
    
    #fazer o calculo do IMC
    def calculoIMC
        #puts '%.2f' % (@peso.to_f/(@altura.to_f * @altura.to_f))
        return '%.2f' % (@peso.to_f/(@altura.to_f * @altura.to_f))
    end

    def resposta(resultado)
        resultado = resultado.to_f
        if resultado < 17
            return "Abaixo de 17 Muito abaixo do peso"
        elsif resultado > 17 and resultado < 18.49
            return "Entre 17 e 18,49 Abaixo do peso"
        elsif resultado > 18.5 and resultado < 24.99
            return "Entre 18,5 e 24,99 Peso normal"
        elsif resultado > 25 and resultado < 29.99
            return "Entre 25 e 29,99 Acima do peso"
        elsif resultado > 30 and resultado < 34.99
            return "Entre 30 e 34,99 Obesidade I"
        elsif resultado > 35 and resultado < 39.99
            return "Entre 35 e 39,99 Obesidade II (severa)"
        else
            return "Acima de 40"
        end
    end
    

    def resultado_do_exame
        puts ""
        puts ""
        puts "================================="
        puts "            Cadastro             "
        puts "================================="
        puts "Senhor #{@nome} #{@sobrenome}"
        puts "Peso: #{@peso} Altura: #{@altura}"
        resultado = calculoIMC
        puts "Resultado IMC "+resultado
        puts "Resposta ao paciente "+ resposta(resultado)
        puts "=================================" 
    end
end

paciente1 = Paciente.new()
paciente1.informar_dados_gerais_do_paciente
paciente1.informar_dados_do_exame
paciente1.resultado_do_exame
