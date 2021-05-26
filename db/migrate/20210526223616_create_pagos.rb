class CreatePagos < ActiveRecord::Migration[6.1]
  def change
    create_table :pagos do |t|
      t.string :total
      t.date :fecha

      t.timestamps
    end
  end
end
