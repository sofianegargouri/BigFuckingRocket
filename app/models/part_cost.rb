# frozen_string_literal: true

class PartCost < ApplicationRecord
  belongs_to :part
  belongs_to :resource

  validates :part_id, uniqueness: {scope: :resource_id}
end
