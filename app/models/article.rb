class Article < ApplicationRecord
  # has_and_belongs_to_many :users
  has_many :bookmarks
  has_many :users through: :bookmarks
end
