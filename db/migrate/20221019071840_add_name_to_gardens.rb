class AddNameToGardens < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :name, :string
  end
end
