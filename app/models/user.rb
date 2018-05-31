# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_commit :create_resources
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_one :rocket, dependent: :destroy
  has_many :user_resources, dependent: :destroy

  private

  def create_resources
    Resource.all.each do |res|
      UserResource.create(user: self, resource: res, quantity: 0)
    end
  end
end
