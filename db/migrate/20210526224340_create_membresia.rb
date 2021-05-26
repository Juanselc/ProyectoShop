class CreateMembresia< ActiveRecord::Migration[6.1]
  def change
    create_table :membresium do |t|
      t.string :tipo
      t.string :rrenovacion
      t.boolean :cuenta
      t.string :limete
      t.integer :precio

      t.timestamps
    end
  end
end
