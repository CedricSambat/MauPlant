class AddReminderToGardens < ActiveRecord::Migration[7.0]
  def change
    add_column :gardens, :reminder, :datetime
  end
end
