class AddVonageToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :vonage_session_id, :string
  end
end
