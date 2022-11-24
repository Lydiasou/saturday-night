class Restaurant < ApplicationRecord
  belongs_to :user
  CATEGORY = ['Gourmand', 'Healthy', 'Asiatique', 'Italien', 'Cuisine du monde', 'Traditionel',
              'Festive', 'Chic', 'Populaire', 'Fast-food', 'Casher', 'Halal', 'Vegan/Végétarien']

  PRICE = ['€', '€€', '€€€', '€€€€']

  validates :name, presence: true
  validates :address, presence: true
  validates :price, inclusion: { in: Restaurant::PRICE }
  validates :category, inclusion: { in: Restaurant::CATEGORY }, presence: true
end
