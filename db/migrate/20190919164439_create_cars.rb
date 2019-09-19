class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make_title
      t.string :model_title
      t.integer :vin_number
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
