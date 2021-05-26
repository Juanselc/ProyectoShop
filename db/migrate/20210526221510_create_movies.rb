class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duracion
      t.string :genero
      t.string :elenco
      t.string :criticas

      t.timestamps
    end
  end
end
