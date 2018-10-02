class Show < ApplicationRecord
 belongs_to :audi, class_name: "Audi", foreign_key: "a_id"
 belongs_to :movie, class_name: "Movie", foreign_key: "m_id"
 has_many :bookings
 has_many :users, through: :bookings
 has_many :tickets, through: :bookings

 validates :time, presence: true
 validates :available_seat, numericality: { only_integer: true }, presence: true
 validates :a_id, presence: true, numericality: { only_integer: true }
 validates :m_id, presence: true, numericality: { only_integer: true }
end
