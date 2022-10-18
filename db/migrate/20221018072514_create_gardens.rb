class CreateGardens < ActiveRecord::Migration[7.0]
  def change
    create_table :gardens do |t|
      t.float :latitude
      t.float :longtude
      t.text :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
