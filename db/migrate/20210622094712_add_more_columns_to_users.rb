class AddMoreColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :job_title, :string
    add_column :users, :education, :string
    add_column :users, :sexual_orientation, :string
    add_column :users, :open_to, :string
  end
end
