class Item < ApplicationRecord
  validates :item, {presence: true}
  validates :user_id, {presence: true}
  validates :group_id, {presence: true}

end
