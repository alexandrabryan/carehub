class Item < ApplicationRecord
  validates :item, {presence: true}

end
