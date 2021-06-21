class AddRoundToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :my_round, :integer, default: 1
  end
end
