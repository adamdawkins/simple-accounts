class Explaination < ActiveRecord::Base
  attr_accessible :category_id, :other_party, :reason, :team_id, :transaction_id, :amount

  belongs_to :transaction

  validates_presence_of :category_id
  validates_presence_of :transaction_id

  validates_presence_of :reason
  validates_presence_of :other_party

  validates_numericality_of :amount, greater_than: 0.00

end
