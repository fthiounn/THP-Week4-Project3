class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
    	t.string :title # porte le titre de l'album et est de type string.
    	t.string :artist # porte nom de l'artiste et est de type string.
    end
  end
end
