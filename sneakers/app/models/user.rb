class User < ActiveRecord::Base
  validates :username, length: { in: 6..20 }
end
