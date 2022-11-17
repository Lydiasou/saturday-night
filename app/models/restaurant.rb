class Restaurant < ApplicationRecord
  CATEGORY = ['Gourmand', 'Healthy', 'Asiatique', 'Italien', 'Cuisine du monde', 'Traditionel',
              'Festive', 'Chic', 'Populaire', 'Fast-food', 'Casher', 'Halal', 'Vegan/Végétarien']
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORY }, presence: true
end
