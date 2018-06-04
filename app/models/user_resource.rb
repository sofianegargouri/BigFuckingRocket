# frozen_string_literal: true

class UserResource < ApplicationRecord
  belongs_to :user
  belongs_to :resource

  validates :user_id, uniqueness: {scope: :resource_id}
end
