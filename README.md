# README
# THP - Week 4 - Project 3
# Francois THIOUNN


Projet : Des app Rails avec BDD et Model

1. Introduction
Dans ce projet, on va se focaliser sur la première étape de la création d'une app Rails : mettre en place les models et la BDD. On va te faire créer plusieurs models et peupler plusieurs BDD avec des entrées créées soit en console, soit via un seed.

2. Le projet
2.1. Exo 1 : Allociné
2.1.1. Mise en place du model et de la BDD
2.1.2. Jouons en console
		a) Un premier film à la mano
		b) Deux films à la mano mais efficace
		c) Un peu de freestyle
2.2.3. Questions
		a) Niveau facile

	- Quel est le nombre total d'objets Album contenus dans la base (sans regarder les id bien sûr) ?
			Album.count
	
	- Qui est l'auteur de la chanson "White Room"?
			Track.where(:TITLE => "White Room").first.artist

	- Quelle chanson dure exactement 188133 milliseconds ?
			Track.where(:DURATION => 188133).first.title

	- Quel groupe a sorti l'album "Use Your Illusion II" ?
			Album.where(:TITLE => "Use Your Illusion II").first.artist

		b) Niveau Moyen

	- Combien y a t'il d'albums dont le titre contient "Great" ?
			Album.where("title like ?", "%Great%").count

	- Supprime tous les albums dont le nom contient "music".
			Album.where("title like ?", "%music%").destroy_all

	- Combien y a t'il d'albums écrits par AC/DC ?
			Album.where(:artist => "AC/DC").count

	- Combien de chanson durent exactement 158589 millisecondes ?
			Track.where(:duration => 158589).count

		c) Niveau Difficile
Pour ces questions, tu vas devoir effectuer des boucles dans la console Rails. C'est peu commun mais c'est faisable, tout comme dans IRB.

	- puts en console tous les titres de AC/DC.
			Track.where(:artist => "AC/DC").each do |track|
				puts track.title
			end

	- puts en console tous les titres de l'album "Let There Be Rock"
			Track.where(:album => "Let There Be Rock").each do |track|
				puts track.title
			end

	- Calcule le prix total de cet album ainsi que sa durée totale.
			price = 0 
			duration = 0
			Track.where(:album => "Let There Be Rock").each do |track|
				price += track.price
				duration += track.duration
			end
			puts "Prix : " << price.to_s << ", Duration : " << duration.to_s 

	- Calcule le coût de l'intégralité de la discographie de "Deep Purple".
			price = 0
			Track.where(:artist => "Deep Purple").each do |track|
				price += track.price
			end
			puts price
		
	- Modifie (via une boucle) tous les titres de "Eric Clapton" afin qu'ils soient affichés avec "Britney Spears" en artist.
			array_clapton = Track.where(:artist => "Eric Clapton")
			array_clapton.each do |track|
				track.artist = "Britney Spear"
			end
			tp array_clapton


Things you may want to cover:

* Ruby version


* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
