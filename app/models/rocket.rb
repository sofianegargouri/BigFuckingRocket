# frozen_string_literal: true

class Rocket < ApplicationRecord
  after_commit :create_rocket_parts

  belongs_to :user, optional: false
  has_many :user_resources, through: :user
  has_many :rocket_parts, dependent: :destroy
  has_many :parts, through: :rocket_parts

  private

  def create_rocket_parts
    Part.each do |part|
      RocketPart.create(part: part, rocket: self, level: 1)
    end
  end
end
