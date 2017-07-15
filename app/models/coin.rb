class Coin < ApplicationRecord
  validates_presence_of :coin_market_cap_id, :name, :abreviation
  validates :coin_market_cap_id, uniqueness: true
end
