class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.string :name
      t.string :desciption
      t.string  :attachment
      t.integer :status, default: 0
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :documents, [:user_id, :created_at]
  end
end
