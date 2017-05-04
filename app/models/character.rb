class Character < ApplicationRecord
  belongs_to :user
  has_many :levels

  validates :name, presence: true, length: { minimum: 3, maximum: 30 }
  validates :description, length: { maximum: 500 }

  def level
    levels.count
  end

  def class_levels
    class_levels_hash = {}

    levels.each do |level|
      class_levels_hash[{ base: level.base_class, sub: level.sub_class }] += 1
    end

    class_levels_hash
  end
end
