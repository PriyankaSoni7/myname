class User < ApplicationRecord
 belongs_to :booking

 validates :name, presence: true, length: { minimum: 2 }
 validates :age, presence: true,length: { minimum: 1 }
 validates :phone_mo, presence: true,length: { maximum: 10 }
end
