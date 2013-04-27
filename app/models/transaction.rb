class Transaction < ActiveRecord::Base
  attr_accessible :amount, :date, :description

  has_many :explainations

  validates_presence_of :date
  validates_presence_of :description
  validates_presence_of :amount

  validates_numericality_of :amount, greater_than: 0.00

  def unexplained_amount
    return amount
  end
end
