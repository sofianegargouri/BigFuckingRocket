# frozen_string_literal: true

class Rocket < ApplicationRecord
  belongs_to :user, optional: false
end
