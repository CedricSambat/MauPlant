class RemoveReminderFromGardenPlant < ActiveRecord::Migration[7.0]
  def change
    remove_column :garden_plants, :reminder, :datetime
  end
end
