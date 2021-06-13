class Garden < ApplicationRecord
  has_many :plants, dependent: :destroy
  validates :banner_url, presence: true
  validates :name, presence: true
end
