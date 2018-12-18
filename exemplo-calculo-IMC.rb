#Gustavo Garcia Pereira

#IMC = PESO / (ALTURA*ALTURA) 
#IMC = PESO / (ALTURA ** 2)


#mensagem para mostrar para o usuario
def mensagemIMC(nome, peso, altura)
    resultado = calculoIMC(peso, altura)
    puts "Olá #{nome} seu IMC #{resultado} #{resposta(resultado)}"
end

#fazer o calculo do IMC
def calculoIMC(peso, altura)
    return '%.2f' % (peso.to_f/(altura.to_f * altura.to_f))
end

    
#    * Abaixo de 17 	Muito abaixo do peso
#    * Entre 17 e 18,49 	Abaixo do peso
#    * Entre 18,5 e 24,99 	Peso normal
#    * Entre 25 e 29,99 	Acima do peso
#    * Entre 30 e 34,99 	Obesidade I
#    * Entre 35 e 39,99 	Obesidade II (severa)
#    * Acima de 40

#sesultado
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


puts "Digite seu nome:"
name = gets.chomp
puts "Informe seu peso (Kg): "
peso = gets.chomp
puts "Informe Sua Altura (m): "
altura = gets.chomp

mensagemIMC(name, peso, altura)
