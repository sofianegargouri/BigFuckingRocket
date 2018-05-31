# frozen_string_literal: true

class UserResource < ApplicationRecord
  belongs_to :user
  belongs_to :resource
end
