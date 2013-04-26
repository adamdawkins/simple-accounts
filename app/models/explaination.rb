class Explaination < ActiveRecord::Base
  attr_accessible :category_id, :other_party, :reason, :team_id, :transaction_id

  belongs_to :transaction
end
