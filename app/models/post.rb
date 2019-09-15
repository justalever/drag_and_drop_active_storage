class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :feature_image
end
