class Label < ApplicationRecord
  has_many :wines, through: :labellings
  has_many :labellings, dependent: :destroy
end
