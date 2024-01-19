class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %w(japanese italian mexican tailand chinese french belgian )
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: {in: CATEGORY}
end
