class Level < ApplicationRecord
  belongs_to :character

  validates :character, :base_class, presence: true
end
