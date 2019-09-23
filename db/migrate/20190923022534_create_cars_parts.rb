class CreateCarsParts < ActiveRecord::Migration[5.2]
  def change
    create_table :cars_parts do |t|
      t.string :make
      t.string :model
      t.string :vin
      t.string :parts

      t.timestamps
    end
  end
end
