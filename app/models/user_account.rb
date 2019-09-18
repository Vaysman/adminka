class UserAccount < ApplicationRecord
  validates :email, presence: true
  enum role: %i[user admin]
end
