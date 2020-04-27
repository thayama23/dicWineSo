class User < ApplicationRecord
  has_many :wines
  has_many :favorites, dependent: :destroy
  has_many :comments
  has_many :cards
end
