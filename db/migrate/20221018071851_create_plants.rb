class CreatePlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.text :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
