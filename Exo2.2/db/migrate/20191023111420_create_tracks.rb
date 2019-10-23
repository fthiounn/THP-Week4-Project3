class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
    	t.string :title # porte le titre de la chanson et est de type string.
    	t.string :album # porte le titre de l'album et est de type string.
    	t.string :artist # porte le nom de l'artiste et est de type string.
    	t.integer :duration # porte la durée de la chanson (en millisecondes) et est de type integer.
    	t.integer :size # porte la taille (en octets) de la chanson et est de type integer.
    	t.float :price # porte le prix de la chanson et est de type float.
    end
  end
end
