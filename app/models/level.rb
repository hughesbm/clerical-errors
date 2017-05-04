class Level < ApplicationRecord
  belongs_to :character

  validates :character, :class_level, :base_class, presence: true
  validates :class_level, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 20
  }
end
