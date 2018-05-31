# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Rocket, user_id: user&.id
    can :manage, RocketPart do |rocket_part|
      rocket_part.user == user
    end
  end
end
