# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :manage, Rocket, user_id: user&.id
    can :manage, RocketPart do |rocket_part|
      rocket_part.user == user
    end
    cannot :level_up, RocketPart do |rocket_part|
      rocket_part.updated_at > Time.zone.now - (10.seconds * rocket_part.level)
    end
  end
end
