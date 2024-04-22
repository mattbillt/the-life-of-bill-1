class Match < ApplicationRecord
  has_many :comments, dependent: :destroy
end
