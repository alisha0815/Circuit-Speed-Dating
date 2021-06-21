class AddRoundToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :round, :integer
  end
end
