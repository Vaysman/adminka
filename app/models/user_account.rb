class UserAccount < ApplicationRecord
  enum role: %i[user admin]
end
