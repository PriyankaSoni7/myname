class Movie < ApplicationRecord
 has_many :shows
 has_many :tickets
 has_many :bookings, through: :shows
 has_many :audis, through: :shows

 validates :m_id, presence: true, numericality: { only_integer: true }
 validates :name, presence: true, length: { minimum: 2 }
 validates :category, presence: true, length: { maximum: 100 }
end
