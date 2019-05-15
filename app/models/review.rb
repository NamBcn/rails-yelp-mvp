class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
end


# validates :name, uniqueness: true, presence: true
#  validates :address, presence: true
#  validates :stars,


#  t.text "content"
#  t.integer "rating"
#  t.integer "restaurant_id"
