class CreateExplainations < ActiveRecord::Migration
  def change
    create_table :explainations do |t|
      t.string :reason
      t.integer :team_id
      t.integer :transaction_id
      t.integer :category_id
      t.string :other_party
      t.float :amount

      t.timestamps
    end
  end
end
