def sign_up
	print "Zone d'inscription \n".upcase
	print "====================\n"
	print "Definir un mot de passe: "
	pass = gets.chomp.to_s
	return pass
end

def welcome_screen
	puts "Bonjour, bienvenue dans la plateforme!"
	print "Adresse: Tanjombato Antananarivo 102\n"
	print "Contact: +261 (0)34 21 243 14"
end


$login = sign_up

def log_in
	print "Zone d'authentification \n".upcase
	print "====================\n"
	print "Entrer votre mot de passe: "
	mdp = gets.chomp.to_s
	while mdp != $login
		puts "Mot de passe incorrect, Veullez esssayer encore : "
		mdp = gets.chomp.to_s
	end
	if mdp == $login
		print "============================================= \n"
		print "ecran d'accueil\n".upcase

		puts welcome_screen
		
		puts "============================================="
	end
end
log_in