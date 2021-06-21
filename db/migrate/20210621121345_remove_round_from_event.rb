class RemoveRoundFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :round, :integer
  end
end
