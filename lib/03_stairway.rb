def marche(a, b)
	if ((a == 2) || (a == 3) || (a ==4))
		b = 0
		puts "Rester la"
	elsif a ==1
		b = -1
		puts "Descend d'une marche"
	else
		b = 1
		puts "Monte d'une marche"
	end
	puts "Tu dois faire #{b} pas"
	return b
end

def nombreTour
	
	i = 0
	tour=1
	for i in 0..10
		print "Entrer ton manche: "
		nbr = gets.chomp.to_i
		nbr = rand(1..6)
		puts "---------------"
		puts "Tour numero #{tour}"
		puts "Ta position au début de tour est #{i}"
		nb = nbr
		puts "Tu as eu le chiffre #{nb}"
		i = i + marche(nb,i)
		if i < 0
			i = 0
		end
		puts "Ta position en fin de tour est #{i}"
		tour += 1
	end
	puts "--------FIN D'UNE PARTIE--------"
	return tour
end


def average_finish_time
	a = 0
	tab=[]
	c = 1
	for c in 1..100
		tab.push(nombreTour)
		c += 1
	end

	tableau = tab
	tableau.each do |x|
		a += x
	end
	n = tab.length
	moyenne = a / n
	puts""
	puts"-----STATISTIQUES-------"
	puts "Pour cette fois-ci, le jeu prend en moyenne #{moyenne} tours pour finir les 10 marches"
	return tab
end

average_finish_time
