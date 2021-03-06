# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable,
  #        :recoverable, :rememberable, :validatable
  after_commit :create_resources
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :registerable

  has_one :rocket, dependent: :destroy
  has_many :user_resources, dependent: :destroy

  def update_resources
    user_resources.each do |user_resource|
      user_resource.update(
        quantity: user_resource.quantity + (
          (Time.zone.now - user_resource.updated_at) / 1.minute
        ) * user_resource.resource.regen_time
      )
    end
    rocket&.update(max_distance: rocket&.total_distance)
  end

  private

  def create_resources
    Resource.all.find_each do |res|
      UserResource.create(user: self, resource: res, quantity: 0)
    end
  end
end
