class RemoveColumnsInterests < ActiveRecord::Migration[6.0]
  def change
    change_table :interests do |t|
      t.remove :business_industry, :entertainment, :family_relation, :fitness_wellness, :food_drink, :hobby_activity, :shopping_fashion, :sport_outdoor, :technology
      t.string :category
      t.string :name
    end
  end
end
