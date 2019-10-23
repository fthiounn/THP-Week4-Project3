class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
    	t.string :name # porte le nom du film et est de type string.
    	t.integer :year # porte l'année de sortie et est de type integer.
    	t.string :genre # porte le type de film (horreur, action, etc.) et est de type string.
    	t.text :synopsis # porte le résumé du film et est de type text.
    	t.string :director # porte le nom du réalisateur et est de type string.
    	t.float :allocine_rating # porte le score "spectateur" visible sur allocine.fr et est de type float.
    	t.integer :my_rating # porte ton score personnel sur le film et est de type integer.
    	t.boolean :already_seen # indique si tu as déjà vu le film et est de type boolean.
    end
  end
end
