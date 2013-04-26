class Transaction < ActiveRecord::Base
  attr_accessible :amount, :date, :description

  has_one :explaination

  validates_presence_of :date
  validates_presence_of :description
  validates_presence_of :amount

end
