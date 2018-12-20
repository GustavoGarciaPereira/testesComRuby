#gustavo garcia pereira

listaDeCompras = [
    'agua',
    'refrigerante',
    'chave',
    'caneca com café'
]

#saida formatada
puts"======================"
puts listaDeCompras

#saida em forma de lista
puts"======================"
print listaDeCompras,"\n"

#acessando um elemento especifico do vetor
puts"======================"
puts listaDeCompras[2]

#saida em forma de lista
puts"======================"
print listaDeCompras[2],"\n"

#operação para adicionar um elemento na lista
puts"======================"
listaDeCompras.push("mouse")
puts listaDeCompras

#operação para adicionar um elemento na lista de uma maneira diferente
puts"======================"
listaDeCompras << "Mais um"
puts listaDeCompras

#operação para adicionar um elemento na lista de uma maneira diferente
puts"======================"
variavel = "variavel"
listaDeCompras << variavel
puts listaDeCompras

print "\n\n================================"
print "\nEstrutura de dados chave valor\n"
print "================================\n\n"

#observação "sintaxe interessante" 
chave_valor = {
    "primeiro nome"=>"Gustavo",
    "sobrenome"=>"Garcia Pereira",
    "idade"=>22
}

puts chave_valor
print "Primero nome",chave_valor["primeiro nome"],"\n"
print "Sobre nome",chave_valor["sobrenome"],"\n"
print "idade",chave_valor["idade"],"\n"

print "\n\n========================================="
print "\nPercorrendo de dados chave valor com each\n"
print "=========================================\n\n"

chave_valor["mais um"] = "mais um valor"

chave_valor.each do |chave, valor|
    puts "#{chave}: #{valor}"
end