class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.string :coin_market_cap_id, null: false
      t.string :name, null: false
      t.string :abreviation, null: false
      t.timestamps

      t.index :coin_market_cap_id, unique: true
      t.index :abreviation
    end
  end
end
