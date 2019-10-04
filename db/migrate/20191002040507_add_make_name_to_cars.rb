class AddMakeNameToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :make_name, :string
  end
end
