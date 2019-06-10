class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :code
      t.integer :value
      t.references :buyer, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
