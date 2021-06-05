class CreateInterests < ActiveRecord::Migration[6.0]
  def change
    create_table :interests do |t|
      t.string :business_industry
      t.string :entertainment
      t.string :family_relation
      t.string :fitness_wellness
      t.string :food_drink
      t.string :hobby_activity
      t.string :shopping_fashion
      t.string :sport_outdoor
      t.string :technology

      t.timestamps
    end
  end
end
