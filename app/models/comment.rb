class Comment < ApplicationRecord
  belongs_to :match
  validates :content, presence: true
end
