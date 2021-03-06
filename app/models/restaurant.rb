class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian'], message: 'is not a valid category' }
end
