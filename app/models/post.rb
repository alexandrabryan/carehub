class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
  validates :group_id, {presence: true}

  # Define the "user" instance method
  def user
    return User.find_by(id: self.user_id)
  end

end
