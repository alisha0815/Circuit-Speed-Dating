class RemoveRecurringFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :recurring, :text
  end
end
