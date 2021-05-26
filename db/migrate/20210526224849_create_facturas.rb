class CreateFacturas < ActiveRecord::Migration[6.1]
  def change
    create_table :facturas do |t|
      t.integer :numero
      t.date :fecha
      t.integer :total
            

      t.timestamps
    end
  end
end
