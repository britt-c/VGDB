class CreateVideogames < ActiveRecord::Migration[6.0]
  def change
    create_table :videogames do |t|
      
      t.string :title
      t.float :rating
      t.stirng :console
      t.text :body

      t.timestamps
    end
  end
end
