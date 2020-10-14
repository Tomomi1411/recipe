class Gourmet < ApplicationRecord
  belongs_to :user
  attachment :image
end
