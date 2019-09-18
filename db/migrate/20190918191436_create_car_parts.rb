class CreateCarParts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_parts do |t|
      t.references :car, foreign_key: true
      t.references :model, foreign_key: true

      t.timestamps
    end
  end
end
