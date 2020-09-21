class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description

      t.references :cocktail, foreing_key: true
      t.references :ingredient, foreing_key: true

      t.timestamps
    end
  end
end
