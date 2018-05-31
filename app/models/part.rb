# frozen_string_literal: true

class Part < ApplicationRecord
  after_commit :create_rocket_parts

  private

  def create_rocket_parts
    Rocket.all.each do |rocket|
      RocketPart.create(part: self, rocket: rocket, level: 1)
    end
  end
end
