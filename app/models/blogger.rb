class Blogger < ApplicationRecord
has_many :postsp
has_many :destinations, through: :posts
validates :name, uniqueness: true 
validates :age, numericality: { greater_than: 0, less_than: 120 }
validates :bio, length: { minimum: 30 }
end
