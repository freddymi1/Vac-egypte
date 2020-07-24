def half_pyramids
  puts 'Entrer un chiffre'
  print "> "
  result = gets.chomp.to_i

  puts "Voici ta pyramide :"
  a = "#"
  i = 1
  result.times do |x|
   	puts "#{a * (2 * x + 1)}"
  end
  puts ""
end
half_pyramids

def full_pyramids
	a = "#"
	b = ' '
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? "
	print "> "
	h = gets.chomp.to_i
	i = 1
	puts "Voici la pyramide:"
	for i in 1..h
	    puts b*(h-i)+a*(2*i-1)
	    i += 1
	    print "\n"
	end

end

full_pyramids()



def wtf_pyramids
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair) "
	print "> "
	nbr = gets.chomp.to_i #Changer le nombre en entier
	
	py_centre = (nbr-1)/2 #Variable pour le decomposition du pyramide
	puts "Voici la pyramide:"
	essay = 0
	if nbr % 2 == 0
		puts "Veullez entrer un nombre impair SVP"
	else
		nbr.times do |i|
		debut = nbr-2*(i - py_centre).abs
			py_espace = (nbr - debut)/2
			puts "%s%s" % [' ' * py_espace, '#' * debut]
			puts "\n"
		end	
	end
end
wtf_pyramids()
