class User < ApplicationRecord
  # has_and_belongs_to_many :articles
  has_many :bookmarks
  has_many :articles through: :bookmarks
end
