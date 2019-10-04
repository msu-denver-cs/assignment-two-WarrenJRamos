class RemoveMakeTitleFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :make_title, :string
  end
end
