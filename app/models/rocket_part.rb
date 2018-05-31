# frozen_string_literal: true

class RocketPart < ApplicationRecord
  belongs_to :rocket
  belongs_to :part
end
