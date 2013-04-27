class Transaction < ActiveRecord::Base
  attr_accessible :amount, :date, :description

  has_many :explainations

  validates_presence_of :date
  validates_presence_of :description
  validates_presence_of :amount

  def unexplained_amount
    return amount
  end
end
