class Property < ApplicationRecord
  validates :title , presence:true
  validates :price , presence:true
  validates :deposit_required , presence:true

  has_many :likes, dependent: :destroy

  paginates_per 7
end
