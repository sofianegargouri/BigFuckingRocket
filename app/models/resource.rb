# frozen_string_literal: true

class Resource < ApplicationRecord
  after_commit :create_user_resources

  private

  def create_user_resources
    User.all.find_each do |user|
      UserResource.create(user: user, resource: self, quantity: 0)
    end
  end
end
