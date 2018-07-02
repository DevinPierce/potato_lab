class Potato < ApplicationRecord
  validates :eyes, numericality: { only_integer: true }

end
