class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post, optional: true

  def user
    return User.find_by(id: self.user_id)
  end
  
end
