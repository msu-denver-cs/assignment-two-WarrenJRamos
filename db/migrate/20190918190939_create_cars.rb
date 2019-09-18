class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make_name
      t.string :model_name
      t.integer :vin_number
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
