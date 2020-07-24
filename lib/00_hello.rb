def ask_first_name
	print "Entrer votre nom: "
	nom = gets.chomp.to_s
end

def say_hello(first_name)
	puts "Salut #{first_name}"
end

noms = ask_first_name()

say_hello(noms)