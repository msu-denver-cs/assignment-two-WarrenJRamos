class RemoveMakeNameFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :make_name, :string
  end
end
