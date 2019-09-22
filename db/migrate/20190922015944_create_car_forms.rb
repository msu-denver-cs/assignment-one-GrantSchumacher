class CreateCarForms < ActiveRecord::Migration[5.2]
  def change
    create_table :car_forms do |t|

      t.timestamps
    end
  end
end
