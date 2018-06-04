# frozen_string_literal: true

class RocketPart < ApplicationRecord
  belongs_to :rocket
  belongs_to :part
  has_many :part_costs, through: :part
  has_one :user, through: :rocket
  has_many :user_resources, through: :user

  validates :part_id, uniqueness: {scope: :rocket_id}

  def level_up
    update(level: level + 1)
    part_costs.each do |part_cost|
      user_resource = user_resources.find_by(resource: part_cost.resource)
      user_resource.update(quantity: user_resource.quantity - part_cost.cost)
    end
  end
end
