# frozen_string_literal: true

class PartStat < ApplicationRecord
  belongs_to :stat
  belongs_to :part

  validates :part_id, uniqueness: {scope: :stat_id}
end
