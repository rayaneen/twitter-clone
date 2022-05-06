class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true
  has_one_attached :photo
end
