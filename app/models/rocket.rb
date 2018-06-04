# frozen_string_literal: true

class Rocket < ApplicationRecord
  after_commit :create_rocket_parts

  belongs_to :user, optional: false
  has_many :user_resources, through: :user
  has_many :rocket_parts, dependent: :destroy
  has_many :parts, through: :rocket_parts
  has_many :part_stats, through: :parts

  def total_distance
    rocket_parts.inject(0) do |total, rocket_part|
      total + (rocket_part.level * rocket_part.part.part_stats.inject(0) do |total2, part_stat|
        total2 + part_stat.ratio
      end)
    end
  end

  private

  def create_rocket_parts
    Part.all.find_each do |part|
      RocketPart.create(part: part, rocket: self, level: 1)
    end
  end
end
