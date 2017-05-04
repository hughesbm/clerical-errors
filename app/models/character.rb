class Character < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
end
