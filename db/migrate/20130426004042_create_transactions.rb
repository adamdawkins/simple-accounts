class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :date
      t.string :description
      t.float :amount

      t.timestamps
    end
  end
end
