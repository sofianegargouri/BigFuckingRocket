# frozen_string_literal: true

class Part < ApplicationRecord
  after_commit :create_rocket_parts

  has_many :part_costs, dependent: :destroy
  has_many :resources, through: :part_costs

  private

  def create_rocket_parts
    Rocket.all.find_each do |rocket|
      RocketPart.create(part: self, rocket: rocket, level: 1)
    end
  end
end
