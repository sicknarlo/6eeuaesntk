class Shoe < ActiveRecord::Base
  validates :brand, :model, :year, :purchase_date,
            :presence => :true
  belongs_to :user
end
